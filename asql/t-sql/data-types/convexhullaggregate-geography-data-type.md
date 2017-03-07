---
title: "ConvexHullAggregate (geography Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "ConvexHullAggregate_TSQL"
  - "ConvexHullAggregate"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ConvexHullAggregate method (geography)"
ms.assetid: 21784c66-2725-471b-9e2d-a8c2e3695197
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# ConvexHullAggregate (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a convex hull for a given set of **geography** objects.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
ConvexHullAggregate ( geography_operand )  
```  
  
## Arguments  
 *geography_operand*  
 Is a **geography** type table column that represents a set of **geography** objects.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geography**  
  
## Exception  
 Throws a `FormatException` when there are input values that are not valid. See [STIsValid &#40;geography Data Type&#41;](../../t-sql/data-types/stisvalid-geography-data-type.md)  
  
## Remarks  
 Method returns **null** when the input is empty or the input has different SRIDs. See [Spatial Reference Identifiers &#40;SRIDs&#41;](../../relational-databases/spatial/spatial-reference-identifiers-srids.md)  
  
 Method ignores **null** inputs.  
  
> [!NOTE]  
>  Method returns **null** if all inputted values are **null**.  
  
## Examples  
 The following example returns a convex hull of the set of **geography** objects.  
  
 `USE AdventureWorks2012`  
  
 `GO`  
  
 `SELECT geography::ConvexHullAggregate(SpatialLocation).ToString() AS SpatialLocation`  
  
 `FROM Person.Address`  
  
 `WHERE City LIKE ('Bothell')`  
  
## See Also  
 [Extended Static Geography Methods](../../t-sql/data-types/extended-static-geography-methods.md)  
  
  