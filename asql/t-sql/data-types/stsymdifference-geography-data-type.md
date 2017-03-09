---
title: "STSymDifference (geography Data Type) | Microsoft Docs"
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
  - "STSymDifference (geography Data Type)"
  - "STSymDifference_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STSymDifference (geography Data Type)"
ms.assetid: 82bbfa2c-a61b-4f41-9bf8-6f720f363bae
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# STSymDifference (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns an object that represents all points that are either in one **geography** instance or another **geography** instance, but not those points that lie in both instances.  
  
## Syntax  
  
```  
  
.STSymDifference ( other_geography )  
```  
  
## Arguments  
 *other_geography*  
 Is another **geography** instance in addition to the instance on which STSymDistance() is being invoked.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
## Remarks  
 This method always returns null if the spatial reference identifiers (SRIDs) of the **geography** instances do not match.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports spatial instances that are larger than a hemisphere. In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the set of possible results on the server has been extended to **FullGlobe** instances.  
  
 The result may contain circular arc segments only if the input instances contain circular arc segments.  
  
## Examples  
  
### A. Computing the symmetric difference of two polygons  
 The following example uses `STSymDifference()` to compute the symmetric difference of two `Polygon` instances.  
  
```  
DECLARE @g geography;  
DECLARE @h geography;  
SET @g = geography::STGeomFromText('POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))', 4326);  
SET @h = geography::STGeomFromText('POLYGON((-122.351 47.656, -122.341 47.656, -122.341 47.661, -122.351 47.661, -122.351 47.656))', 4326);  
SELECT @g.STSymDifference(@h).ToString();  
```  
  
### B. Computing the symmetric difference with FullGlobe  
 The following example compares the symmetric difference of a `Polygon` with `FullGlobe`.  
  
 `DECLARE @g geography = 'POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))';`  
  
 `SELECT @g.STSymDifference('FULLGLOBE').ToString();`  
  
## See Also  
 [OGC Methods on Geography Instances](../../t-sql/data-types/ogc-methods-on-geography-instances.md)  
  
  