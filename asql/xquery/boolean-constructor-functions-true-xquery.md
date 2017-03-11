---
title: "true Function (XQuery) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
dev_langs: 
  - "XML"
helpviewer_keywords: 
  - "fn:true function"
  - "true function"
ms.assetid: 318e370d-0444-4812-afe4-307df7ef9f3b
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
---
# Boolean Constructor Functions - true (XQuery)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the xs:boolean value True. This is equivalent to `xs:boolean("1")`.  
  
## Syntax  
  
```  
fn:true() as xs:boolean  
```  
  
## Examples  
 This topic provides XQuery examples against XML instances that are stored in various **xml** type columns in the AdventureWorks database.  
  
### A. Using the true() XQuery Boolean function  
 The following example queries an untyped **xml** variable. The expression in the **value()** method returns Boolean **true()** if "aaa" is the attribute value. The **value()** method of the **xml** data type converts the Boolean value into a bit and returns it.  
  
```  
DECLARE @x XML  
SET @x= '<ROOT><elem attr="aaa">bbb</elem></ROOT>'  
select @x.value(' if ( (/ROOT/elem/@attr)[1] eq "aaa" ) then fn:true() else fn:false() ', 'bit')  
go  
-- result = 1  
```  
  
 In the following example, the query is specified against a typed **xml** column. The `if` expression checks the typed Boolean value of the <`ROOT`> element and returns the constructed XML, accordingly. The example performs the following:  
  
-   Creates an XML schema collection that defines the <`ROOT`> element of the xs:boolean type.  
  
-   Creates a table with a typed **xml** column by using the XML schema collection.  
  
-   Saves an XML instance in the column and queries it.  
  
```  
-- Drop table if exist  
--DROP TABLE T  
--go  
DROP XML SCHEMA COLLECTION SC  
go  
CREATE XML SCHEMA COLLECTION SC AS '  
<schema xmlns="http://www.w3.org/2001/XMLSchema"  
targetNamespace="QNameXSD" >  
      <element name="ROOT" type="boolean" nillable="true"/>  
</schema>'  
go  
CREATE TABLE T (xmlCol XML(SC))  
go  
-- following OK  
insert into T values ('<ROOT xmlns="QNameXSD">true</ROOT>')  
 go  
-- Retrieve the local name.   
SELECT xmlCol.query('declare namespace a="QNameXSD";   
   if (/a:ROOT[1] eq true()) then  
       <result>Found boolean true</result>  
   else  
       <result>Found boolean false</result>')  
  
FROM T  
-- result = <result>Found boolean true</result>  
-- Clean up  
DROP TABLE T  
go  
DROP XML SCHEMA COLLECTION SC  
go  
```  
  
## See Also  
 [Boolean Constructor Functions &#40;XQuery&#41;](http://msdn.microsoft.com/library/fa907f39-d4b7-4495-b829-c788928e0f64)  
  
  