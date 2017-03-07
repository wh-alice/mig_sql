---
title: "Logical Expressions (XQuery) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "logical operators [SQL Server], XQuery"
  - "effective Boolean value [XQuery]"
  - "logical expressions [XQuery]"
  - "EBV"
  - "expressions [XQuery], logical"
ms.assetid: de94cd2e-2d48-49fb-9ebd-a2d90c79bf62
caps.latest.revision: 26
ms.author: "jhubbard"
manager: "jhubbard"
---
# Logical Expressions (XQuery)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  XQuery supports the logical **and** and **or** operators.  
  
```  
expression1 and expression2  
expression1 or expression2  
```  
  
 The test expressions, `expression1,``expression2`, in [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] can result in an empty sequence, a sequence of one or more nodes, or a single Boolean value. Based on the result, their effective Boolean value is determined in the following manner:  
  
-   If the test expression results in an empty sequence, the result of the expression is False.  
  
-   If the test expression results in a single Boolean value, this value is the result of the expression.  
  
-   If the test expression results in a sequence of one or more nodes, the result of the expression is True.  
  
-   Otherwise, a static error is raised.  
  
 The logical **and** and **or** operator is then applied to the resulting Boolean values of the expressions with the standard logical semantics.  
  
 The following query retrieves from the product catalog the front-angle small pictures, the <`Picture`> element, for a specific product model. Note that for each product description document, the catalog can store one or more product pictures with different attributes, such as size and angle.  
  
```  
SELECT CatalogDescription.query('  
     declare namespace PD="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription";  
     for $F in /PD:ProductDescription/PD:Picture[PD:Size="small"   
                                                 and PD:Angle="front"]  
     return   
         $F   
    ') as Result  
FROM  Production.ProductModel  
where ProductModelID=19  
```  
  
 This is the result:  
  
```  
<PD:Picture   
  xmlns:PD="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription">  
  <PD:Angle>front</PD:Angle>  
  <PD:Size>small</PD:Size>  
  <PD:ProductPhotoID>31</PD:ProductPhotoID>  
</PD:Picture>  
  
```  
  
## See Also  
 [XQuery Expressions](../xquery/xquery-expressions.md)  
  
  