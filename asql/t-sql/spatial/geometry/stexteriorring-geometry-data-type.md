---
title: "STExteriorRing (geometry Data Type) | Microsoft Docs"
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
  - "STExteriorRing_TSQL"
  - "STExteriorRing (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STExteriorRing (geometry Data Type)"
ms.assetid: b402b36f-05bf-4c6d-8cd6-76c0fff19db2
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# STExteriorRing (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the exterior ring of a **geometry** instance that is a polygon.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STExteriorRing ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
 Open Geospatial Consortium (OGC) type: **LineString**  
  
## Remarks  
 This method returns **null** if the **geometry** instance is not a polygon.  
  
## Examples  
 The following example creates a `Polygon` instance and uses `STExteriorRing()` to return the exterior ring of the polygon as a **LineString**.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('POLYGON((0 0, 3 0, 3 3, 0 3, 0 0),(2 2, 2 1, 1 1, 1 2, 2 2))', 0);  
SELECT @g.STExteriorRing().ToString();  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  