---
title: "STEquals (geography Data Type) | Microsoft Docs"
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
  - "STEquals_TSQL"
  - "STEquals (geography Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STEquals method"
ms.assetid: 0766ff37-0b9e-49bf-83c0-019f4354fe44
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# STEquals (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns 1 if a **geography** instance represents the same point set as another **geography** instance. Returns 0 if it does not.  
  
## Syntax  
  
```  
  
.STEquals ( other_geography )  
```  
  
## Arguments  
 *other_geography*  
 Is another **geography** instance to compare against the instance on which `STEquals()` is invoked.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Remarks  
 This method always returns null if the spatial reference IDs (SRIDs) of the **geography** instances do not match.  
  
## Examples  
 The following example creates two `geography` instances with `STGeomFromText()` that are equal but not trivially equal, and uses `STEquals()` to test their equality. The instances are equal because `LINESTRING` and `POINT` are contained within the `POLYGON`.  
  
```  
DECLARE @g geography;  
DECLARE @h geography;  
SET @g = geography::STGeomFromText('GEOMETRYCOLLECTION(POLYGON((-122.368 47.658, -122.338 47.649, -122.338 47.658, -122.368 47.658, -122.368 47.658)), LINESTRING(-122.360 47.656, -122.343 47.656), POINT (-122.35 47.656))', 4326);  
SET @h = geography::STGeomFromText('POLYGON((-122.368 47.658, -122.338 47.649, -122.338 47.658, -122.368 47.658, -122.368 47.658))', 4326);  
SELECT @g.STEquals(@h);  
```  
  
## See Also  
 [OGC Methods on Geography Instances](../../../t-sql/spatial/geography/ogc-methods-on-geography-instances.md)  
  
  