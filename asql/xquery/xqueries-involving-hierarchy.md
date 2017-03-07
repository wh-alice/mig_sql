---
title: "XQueries Involving Hierarchy | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
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
  - "hierarchies [XQuery]"
  - "XQuery, hierarchies"
ms.assetid: 6953d8b7-bad8-4b64-bf7b-12fa4f10f65c
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# XQueries Involving Hierarchy
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Most **xml** type columns in the **AdventureWorks** database are semi-structured documents. Therefore, documents stored in each row may look different. The query samples in this topic illustrate how to extract information from these various documents.  
  
## Examples  
  
### A. From the manufacturing instructions documents, retrieve work center locations together with the first manufacturing step at those locations  
 For product model 7, the query constructs XML that includes the <`ManuInstr`> element, with **ProductModelID** and **ProductModelName** attributes, and one or more <`Location`> child elements.  
  
 Each <`Location`> element has its own set of attributes and one <`step`> child element. This <`step`> child element is the first manufacturing step at the work center location.  
  
```  
SELECT Instructions.query('  
     declare namespace AWMI="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions";  
   <ManuInstr  ProdModelID = "{sql:column("Production.ProductModel.ProductModelID") }"   
                ProductModelName = "{ sql:column("Production.ProductModel.Name") }" >  
            {   
              for $wc in //AWMI:root/AWMI:Location  
              return  
                <Location>  
                 {$wc/@* }  
                 <step1> { string( ($wc//AWMI:step)[1] ) } </step1>  
                </Location>  
            }  
          </ManuInstr>  
') as Result  
FROM Production.ProductModel  
WHERE ProductModelID=7  
```  
  
 Note the following from the previous query:  
  
-   The **namespace** keyword in the [XQuery Prolog](../xquery/modules-and-prologs-xquery-prolog.md) defines a namespace prefix. This prefix is used later in the query body.  
  
-   The context switching tokens, {) and (}, are used to switch the query from XML construction to query evaluation.  
  
-   The **sql:column()** is used to include a relational value in the XML that is being constructed.  
  
-   In constructing the <`Location`> element, $wc/@* retrieves all the work center location attributes.  
  
-   The **string()** function returns the string value from the <`step`> element.  
  
 This is a partial result:  
  
```  
<ManuInstr ProdModelID="7" ProductModelName="HL Touring Frame">  
   <Location LocationID="10" SetupHours="0.5"   
            MachineHours="3" LaborHours="2.5" LotSize="100">  
     <step1>Insert aluminum sheet MS-2341 into the T-85A   
             framing tool.</step1>  
   </Location>  
   <Location LocationID="20" SetupHours="0.15"   
            MachineHours="2" LaborHours="1.75" LotSize="1">  
      <step1>Assemble all frame components following   
             blueprint 1299.</step1>  
   </Location>  
...  
</ManuInstr>   
```  
  
### B. Find all telephone numbers in the AdditionalContactInfo column  
 The following query retrieves additional telephone numbers for a specific customer contact by searching the whole hierarchy for the <`telephoneNumber`> element. Because the <`telephoneNumber`> element can appear anywhere in the hierarchy, the query uses the descendant and self operator (//) in the search.  
  
```  
SELECT AdditionalContactInfo.query('  
 declare namespace ci="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactInfo";  
 declare namespace act="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactTypes";  
for $ph in /ci:AdditionalContactInfo//act:telephoneNumber  
   return  
      $ph/act:number  
') as x  
FROM  Person.Contact  
WHERE ContactID = 1  
```  
  
 This is the result:  
  
```  
<act:number   
  xmlns:act="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactTypes">  
  111-111-1111  
</act:number>  
<act:number   
  xmlns:act="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactTypes">  
  112-111-1111  
</act:number>  
```  
  
 To retrieve only the top-level telephone numbers, specifically the <`telephoneNumber`> child elements of <`AdditionalContactInfo`>, the FOR expression in the query changes to  
  
 `for $ph in /ci:AdditionalContactInfo/act:telephoneNumber`.  
  
## See also  
 [XQuery Basics](../xquery/xquery-basics.md)   
 [XML Construction &#40;XQuery&#41;](../xquery/xml-construction-xquery.md)   
 [XML Data &#40;SQL Server&#41;](../relational-databases/xml/xml-data-sql-server.md)  
  
  