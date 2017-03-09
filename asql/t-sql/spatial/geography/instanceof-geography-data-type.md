---
title: "InstanceOf (geography Data Type) | Microsoft Docs"
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
  - "InstanceOf"
  - "InstanceOf_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "InstanceOf method"
ms.assetid: 1eaed0e4-1c72-45a9-9926-5b513335cf33
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# InstanceOf (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Tests if the **geography** instance is the same as the specified type.  
  
## Syntax  
  
```  
  
.InstanceOf ( 'geography_type')  
```  
  
## Arguments  
 *geography_type*  
 Is an **nvarchar(4000)** string specifying one of 16 types exposed in the **geography** type hierarchy.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Remarks  
 Returns 1 if the type of a **geography** instance is the same as the specified type, or if the specified type is an ancestor of the instance type; otherwise, returns 0.  
  
 This **geography** data type method supports **FullGlobe** instances or spatial instances that are larger than a hemisphere.  
  
 The input for the method must be one of the following: Geometry, Point, Curve, LineString,CircularString, Surface, Polygon, CurvePolygon, **GeometryCollection**, **MultiSurface**, **MultiPolygon, MultiCurve, MultiLineString**, **MultiPoint**, or **FullGlobe**.  
  
 This method throws an `ArgumentException` if any other strings are used for the input.  
  
 This method is not precise.  
  
## Examples  
 The following example creates a `MultiPoint` instance and uses `InstanceOf()` to see whether the instance is a `GeometryCollection`.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('MULTIPOINT(-122.360 47.656, -122.343 47.656)', 4326);  
SELECT @g.InstanceOf('GEOMETRYCOLLECTION');  
```  
  
## See Also  
 [Extended Methods on Geography Instances](../../../t-sql/data-types/extended-methods-on-geography-instances.md)  
  
  