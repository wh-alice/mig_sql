---
title: "nodes() Method (xml Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "nodes() method"
  - "nodes method"
ms.assetid: 7267fe1b-2e34-4213-8bbf-1c953822446c
caps.latest.revision: 39
ms.author: "douglasl"
manager: "jhubbard"
---
# nodes() Method (xml Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  The **nodes()** method is useful when you want to shred an **xml** data type instance into relational data. It allows you to identify nodes that will be mapped into a new row.  
  
 Every **xml** data type instance has an implicitly provided context node. For the XML instance stored in a column or variable, this is the document node. The document node is the implicit node at the top of every **xml** data type instance.  
  
 The result of the **nodes()** method is a rowset that contains logical copies of the original XML instances. In these logical copies, the context node of every row instance is set to one of the nodes identified with the query expression, so that subsequent queries can navigate relative to these context nodes.  
  
 You can retrieve multiple values from the rowset. For example, you can apply the **value()** method to the rowset returned by **nodes()** and retrieve multiple values from the original XML instance. Note that the **value()** method, when applied to the XML instance, returns only one value.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
nodes (XQuery) as Table(Column)  
```  
  
## Arguments  
 *XQuery*  
 Is a string literal, an XQuery expression. If the query expression constructs nodes, these constructed nodes are exposed in the resulting rowset. If the query expression results in an empty sequence, the rowset will be empty. If the query expression statically results in a sequence that contains atomic values instead of nodes, a static error is raised.  
  
 *Table*(*Column*)  
 Is the table name and the column name for the resulting rowset.  
  
## Remarks  
 As an example, assume that you have the following table:  
  
```  
T (ProductModelID int, Instructions xml)  
```  
  
 The following manufacturing instructions document is stored in the table. Only a fragment is shown. Note that there are three manufacturing locations in the document.  
  
```  
<root>  
  <Location LocationID="10"...>  
     <step>...</step>  
     <step>...</step>  
      ...  
  </Location>  
  <Location LocationID="20" ...>  
       ...  
  </Location>  
  <Location LocationID="30" ...>  
       ...  
  </Location>  
</root>  
```  
  
 A `nodes()` method invocation with the query expression `/root/Location` would return a rowset with three rows, each containing a logical copy of the original XML document, and with the context item set to one of the `<Location>` nodes:  
  
```  
Product  
ModelID      Instructions  
----------------------------------  
1       <root>  
             <Location LocationID="20" ... />  
             <Location LocationID="30" .../></root>  
1      <root><Location LocationID="10" ... />  
  
             <Location LocationID="30" .../></root>  
1      <root><Location LocationID="10" ... />  
             <Location LocationID="20" ... />  
             </root>  
```  
  
 You can then query this rowset by using **xml** data type methods. The following query extracts the subtree of the context item for each generated row:  
  
```  
SELECT T2.Loc.query('.')  
FROM   T  
CROSS APPLY Instructions.nodes('/root/Location') as T2(Loc)   
```  
  
 This is the result:  
  
```  
ProductModelID  Instructions  
----------------------------------  
1        <Location LocationID="10" ... />  
1        <Location LocationID="20" ... />  
1        <Location LocationID="30" .../>  
```  
  
 Note that the rowset returned has maintained the type information. You can apply **xml** data type methods, such as **query()**, **value()**, **exist()**, and **nodes()**, to the result of a **nodes()** method. However, you cannot apply the **modify()** method to modify the XML instance.  
  
 Also, the context node in the rowset cannot be materialized. That is, you cannot use it in a SELECT statement. However, you can use it in IS NULL and COUNT(*).  
  
 Scenarios for using the **nodes()** method are the same as for using [OPENXML &#40;Transact-SQL&#41;](../../t-sql/functions/openxml-transact-sql.md). This provides a rowset view of the XML. However, you do not have to use cursors when you use the **nodes()** method on a table that contains several rows of XML documents.  
  
 Note that the rowset returned by the **nodes()** method is an unnamed rowset. Therefore, it must be explicitly named by using aliasing.  
  
 The **nodes()** function cannot be applied directly to the results of a user-defined function. To use the **nodes()** function with the result of a scalar user-defined function, you can either assign the result of the user-defined function to a variable or use a derived table to assign a column alias to the user-defined function return value and then use CROSS APPLY to select from the alias.  
  
 The following example shows one way to use `CROSS APPLY` to select from the result of a user-defined function.  
  
```  
USE AdventureWorks;  
GO  
  
CREATE FUNCTION XTest()  
RETURNS xml  
AS  
BEGIN  
RETURN '<document/>';  
END;  
GO  
  
SELECT A2.B.query('.')  
FROM  
(SELECT dbo.XTest()) AS A1(X)   
CROSS APPLY X.nodes('.') A2(B);  
GO  
  
DROP FUNCTION XTest;  
GO  
```  
  
## Examples  
  
### Using nodes() method against a variable of xml type  
 In the following example, there is an XML document that has a <`Root`> top-level element and three <`row`> child elements. The query uses the `nodes()` method to set separate context nodes, one for each <`row`> element. The `nodes()` method returns a rowset with three rows. Each row has a logical copy of the original XML, with each context node identifying a different <`row`> element in the original document.  
  
 The query then returns the context node from each row:  
  
```  
DECLARE @x xml   
SET @x='<Root>  
    <row id="1"><name>Larry</name><oflw>some text</oflw></row>  
    <row id="2"><name>moe</name></row>  
    <row id="3" />  
</Root>'  
SELECT T.c.query('.') AS result  
FROM   @x.nodes('/Root/row') T(c)  
GO  
```  
  
 The following is the result. In this example, the query method returns the context item and its content:  
  
```  
<row id="1"><name>Larry</name><oflw>some text</oflw></row>  
<row id="2"><name>moe</name></row>  
<row id="3"/>  
```  
  
 Applying the parent accessor on the context nodes returns the <`Root`> element for all three:  
  
```  
SELECT T.c.query('..') AS result  
FROM   @x.nodes('/Root/row') T(c)  
go  
```  
  
 This is the result:  
  
```  
<Root>  
    <row id="1"><name>Larry</name><oflw>some text</oflw></row>  
    <row id="2"><name>moe</name></row>  
    <row id="3" />  
</Root>  
<Root>  
    <row id="1"><name>Larry</name><oflw>some text</oflw></row>  
    <row id="2"><name>moe</name></row>  
    <row id="3" />  
</Root>  
<Root>  
    <row id="1"><name>Larry</name><oflw>some text</oflw></row>  
    <row id="2"><name>moe</name></row>  
    <row id="3" />  
</Root>  
```  
  
### Specifying the nodes() method against a column of xml type  
 The bicycle manufacturing instructions are used in this example and are stored in the Instructions **xml** type column of the **ProductModel** table.  
  
 In the following example, the `nodes()` method is specified against the `Instructions` column of **xml** type in the `ProductModel` table.  
  
 The `nodes()` method sets the <`Location`> elements as context nodes by specifying the `/MI:root/MI:Location` path. The resulting rowset includes logical copies of the original document, one for each <`Location`> node in the document, with the context node set to the <`Location`> element. Therefore, the `nodes()` function gives a set of <`Location`> context nodes.  
  
 The `query()` method against this rowset requests `self::node` and, therefore, returns the `<Location>` element in each row.  
  
 In this example, the query sets each <`Location`> element as a context node in the manufacturing instructions document of a specific product model. You can use these context nodes to retrieve values such as the following:  
  
-   Find Location IDs in each <`Location`>  
  
-   Retrieve manufacturing steps (<`step`> child elements) in each <`Location`>  
  
 This query returns the context item, in which the abbreviated syntax `'.'` for `self::node()` is specified, in the `query()` method.  
  
 Note the following:  
  
-   The `nodes()` method is applied to the Instructions column and returns a rowset, `T (C)`. This rowset contains logical copies of the original manufacturing instructions document with `/root/Location` as the context item.  
  
-   CROSS APPLY applies `nodes()` to each row in the `Instructions` table and returns only the rows that produce a result set.  
  
    ```  
    SELECT C.query('.') as result  
    FROM Production.ProductModel  
    CROSS APPLY Instructions.nodes('  
    declare namespace MI="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions";  
    /MI:root/MI:Location') as T(C)  
    WHERE ProductModelID=7  
    ```  
  
     This is the partial result:  
  
    ```  
    <MI:Location LocationID="10"  ...>  
       <MI:step ... />  
          ...  
    </MI:Location>  
    <MI:Location LocationID="20"  ... >  
        <MI:step ... />  
          ...  
    </MI:Location>  
    ...  
    ```  
  
### Applying nodes() to the rowset returned by another nodes() method  
 The following code queries the XML documents for the manufacturing instructions in the `Instructions` column of `ProductModel` table. The query returns a rowset that contains the product model ID, manufacturing locations, and manufacturing steps.  
  
 Note the following:  
  
-   The `nodes()` method is applied to the `Instructions` column and returns the `T1 (Locations)` rowset. This rowset contains logical copies of the original manufacturing instructions document, with `/root/Location` element as the item context.  
  
-   `nodes()` is applied to the `T1 (Locations)` rowset and returns the `T2 (steps)` rowset. This rowset contains logical copies of the original manufacturing instructions document, with `/root/Location/step` element as the item context.  
  
```  
SELECT ProductModelID, Locations.value('./@LocationID','int') as LocID,  
steps.query('.') as Step         
FROM Production.ProductModel         
CROSS APPLY Instructions.nodes('         
declare namespace MI="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions";         
/MI:root/MI:Location') as T1(Locations)         
CROSS APPLY T1.Locations.nodes('         
declare namespace MI="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions";         
./MI:step ') as T2(steps)         
WHERE ProductModelID=7         
GO         
```  
  
 This is the result:  
  
```  
ProductModelID LocID Step         
----------------------------         
7      10   <step ... />         
7      10   <step ... />         
...         
7      20   <step ... />         
7      20   <step ... />         
7      20   <step ... />         
...         
```  
  
 The query declares the `MI` prefix two times. Instead, you can use `WITH XMLNAMESPACES` to declare the prefix one time and use it in the query:  
  
```  
WITH XMLNAMESPACES (  
   'http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions'  AS MI)  
  
SELECT ProductModelID, Locations.value('./@LocationID','int') as LocID,  
steps.query('.') as Step         
FROM Production.ProductModel         
CROSS APPLY Instructions.nodes('         
/MI:root/MI:Location') as T1(Locations)         
CROSS APPLY T1.Locations.nodes('         
./MI:step ') as T2(steps)         
WHERE ProductModelID=7         
GO    
```  
  
## See Also  
 [Add Namespaces to Queries with WITH XMLNAMESPACES](../../relational-databases/xml/add-namespaces-to-queries-with-with-xmlnamespaces.md)   
 [Create Instances of XML Data](../../relational-databases/xml/create-instances-of-xml-data.md)   
 [xml Data Type Methods](../../t-sql/xml/xml-data-type-methods.md)  
  
  