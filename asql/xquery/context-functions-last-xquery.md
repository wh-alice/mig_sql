---
title: "last Function (XQuery) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "last function [XQuery]"
  - "fn:last function"
ms.assetid: dc92086e-3b01-4b0b-9f54-3bbf306cf7ae
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# Context Functions - last (XQuery)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns the number of items in the sequence that is currently being processed. Specifically, it returns the integer index of the last item in the sequence. The first item in the sequence has an index value of 1.  
  
## Syntax  
  
```  
  
fn:last() as xs:integer  
```  
  
## Remarks  
 In SQL Server, **fn:last()** can only be used in the context of a context-dependent predicate. Specifically, it can only be used inside brackets (`[ ]`).  
  
## Examples  
 This topic provides XQuery examples against XML instances that are stored in various **xml** type columns in the AdventureWorks database.  
  
### A. Using the last() XQuery function to retrieve the last two manufacturing steps  
 The following query retrieves the last two manufacturing steps for a specific product model. The value, the number of manufacturing steps, returned by the **last()** function is used in this query to retrieve the last two manufacturing steps.  
  
```  
SELECT ProductModelID, Instructions.query('   
declare namespace AWMI="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions";  
  <LastTwoManuSteps>  
   <Last-1Step>   
     { (/AWMI:root/AWMI:Location)[1]/AWMI:step[(last()-1)]/text() }  
   </Last-1Step>  
   <LastStep>   
     { (/AWMI:root/AWMI:Location)[1]/AWMI:step[last()]/text() }  
   </LastStep>  
  </LastTwoManuSteps>  
') as Result  
FROM Production.ProductModel  
WHERE ProductModelID=7  
```  
  
 In the preceding query, the **last()** function in /`/AWMI:root//AWMI:Location)[1]/AWMI:step[last()]` returns the number of manufacturing steps. This value is used to retrieve the last manufacturing step at the work center location.  
  
 This is the result:  
  
```  
ProductModelID Result    
-------------- -------------------------------------  
7      <LastTwoManuSteps>  
         <Last-1Step>  
            When finished, inspect the forms for defects per   
            Inspection Specification .  
         </Last-1Step>  
         <LastStep>Remove the frames from the tool and place them   
            in the Completed or Rejected bin as appropriate.  
         </LastStep>  
       </LastTwoManuSteps>  
```  
  
## See Also  
 [XQuery Functions against the xml Data Type](../xquery/xquery-functions-against-the-xml-data-type.md)  
  
  