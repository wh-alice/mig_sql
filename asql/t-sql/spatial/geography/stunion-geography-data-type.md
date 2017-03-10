---
title: "STUnion (geography Data Type) | Microsoft Docs"
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
  - "STUnion (geography Data Type)"
  - "STUnion_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STUnion method"
ms.assetid: 9bf87691-efd8-4c53-bd2f-eefe0acd19ca
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# STUnion (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns an object that represents the union of a **geography** instance with another **geography** instance.  
  
## Syntax  
  
```  
  
.STUnion ( other_geography )  
```  
  
## Arguments  
 *other_geography*  
 Is another **geography** instance to form a union with the instance on which STUnion() is being invoked.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
## Exceptions  
 This method throws an **ArgumentException** if the instance contains an antipodal edge.  
  
## Remarks  
 This method always returns null if the spatial reference identifiers (SRIDs) of the **geography** instances do not match.  
  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports spatial instances that are larger than a hemisphere. In [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the set of possible results returned on the server has been extended to **FullGlobe** instances.  
  
 The result may contain circular arc segments only if the input instances contain circular arc segments.  
  
 This method is not precise.  
  
## Examples  
  
### A. Computing the union of two polygons  
 The following example uses `STUnion()` to compute the union of two `Polygon` instances.  
  
```  
DECLARE @g geography;  
DECLARE @h geography;  
SET @g = geography::STGeomFromText('POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))', 4326);  
SET @h = geography::STGeomFromText('POLYGON((-122.351 47.656, -122.341 47.656, -122.341 47.661, -122.351 47.661, -122.351 47.656))', 4326);  
SELECT @g.STUnion(@h).ToString();  
```  
  
### B. Producing a FullGlobe result  
 The following example produces a `FullGlobe` when `STUnion()` combines two `Polygon` instances.  
  
 `DECLARE @g geography = 'POLYGON ((-122.358 47.653, -122.358 47.658,-122.348 47.658, -122.348 47.649, -122.358 47.653))';`  
  
 `DECLARE @h geography = 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))';`  
  
 `SELECT @g.STUnion(@h).ToString();`  
  
### C. Producing a triagonal hole from a union of a CurvePolygon and a traigonal hole.  
 The following example produces a triagonal hole from the union of a `CurvePolygon` with a `Polygon` instance.  
  
 `DECLARE @g geography = 'POLYGON ((-0.5 0, 0 1, 0.5 0.5, -0.5 0))';`  
  
 `DECLARE @h geography = 'CURVEPOLYGON(COMPOUNDCURVE(CIRCULARSTRING(0 0, 0.7 0.7, 0 1), (0 1, 0 0)))';`  
  
 `SELECT @g.STUnion(@h).ToString();`  
  
## See Also  
 [OGC Methods on Geography Instances](../../../t-sql/spatial/geography/ogc-methods-on-geography-instances.md)  
  
  