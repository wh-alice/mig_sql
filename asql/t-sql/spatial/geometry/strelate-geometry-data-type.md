---
title: "STRelate (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "STRelate (geometry Data Type)"
  - "STRelate_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STRelate (geometry Data Type)"
ms.assetid: 9dcb5f58-35ab-4bb3-86ee-2d29eefba6d3
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# STRelate (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns 1 if a **geometry** instance is related to another **geometry** instance, where the relationship is defined by a Dimensionally Extended 9 Intersection Model (DE-9IM) pattern matrix value; otherwise, returns 0.  
  
## Syntax  
  
```  
  
.STRelate ( other_geometry, intersection_pattern_matrix )  
```  
  
## Arguments  
 *other_geometry*  
 Is another **geometry** instance to compare against the instance on which `STRelate()` is invoked.  
  
 *intersection_pattern_matrix*  
 Is a string of type **nchar(9)** encoding acceptable values for the DE-9IM pattern matrix device between the two **geometry** instances.  
  
## Remarks  
 This method always returns null if the spatial reference IDs (SRIDs) of the **geometry** instances do not match. This method will throw an **ArgumentException** if the matrix is not well-formed.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Examples  
 The following example uses `STRelate()` to test two **geometry** instances for spatial disjoint using an explicit DE-9IM pattern.  
  
```  
DECLARE @g geometry;  
DECLARE @h geometry;  
SET @g = geometry::STGeomFromText('LINESTRING(0 2, 2 0, 4 2)', 0);  
SET @h = geometry::STGeomFromText('POINT(5 5)', 0);  
SELECT @g.STRelate(@h, 'FF*FF****');  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  