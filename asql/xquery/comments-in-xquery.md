---
title: "Comments in XQuery | Microsoft Docs"
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
  - "comments [XQuery]"
  - "XQuery, comments"
ms.assetid: 4d977268-de9d-4bf0-b310-b63f6a0fb0db
caps.latest.revision: 11
ms.author: "jhubbard"
manager: "jhubbard"
---
# Comments in XQuery
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  You can add comments to XQuery. The comment strings are added by using the "`(:`" and "`:)`" delimiters. For example:  
  
```  
declare @x xml  
set @x=''  
SELECT @x.query('  
(: simple query to construct an element :)  
<ProductModel ProductModelID="10" />  
')  
```  
  
 Following is another example in which a query is specified against an Instruction column of the **xml** type:  
  
```  
SELECT Instructions.query('  
(: declare prefix and namespace binding in the prolog. :)  
     declare namespace AWMI="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions";  
  (: Following expression retrieves the <Location> element children of the <root> element. :)  
  /AWMI:root/AWMI:Location  
') as Result  
FROM Production.ProductModel  
where ProductModelID=7  
```  
  
  