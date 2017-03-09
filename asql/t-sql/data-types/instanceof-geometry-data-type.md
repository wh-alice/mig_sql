---
title: "InstanceOf (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
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
  - "InstanceOf (geometry Data Type)"
ms.assetid: fdea1248-29a4-4bab-a60d-a1b359b5e109
caps.latest.revision: 26
ms.author: "rickbyh"
manager: "jhubbard"
---
# InstanceOf (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  A method that tests if the **geometry** instance is the same as the specified type. Returns 1 if the type of a **geometry** instance is the same as the specified type, or if the specified type is an ancestor of the instance type; otherwise, returns 0.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.InstanceOf (geometry_type )  
```  
  
## Arguments  
 *geometry_type*  
 Is an **nvarchar(4000)** string specifying one of 15 types exposed in the **geometry** type hierarchy.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Remarks  
 The input for the method must be one of the following: **Geometry**, **Point**, **Curve**, **LineString**, **CircularString**, **CompoundCurve**, **Surface**, **Polygon**, **CurvePolygon**, **GeometryCollection**, **MultiSurface**, **MultiPolygon**, **MultiCurve**, **MultiLineString**, and **MultiPoint**. This method throws an **ArgumentException** if any other strings are used for the input.  
  
## Examples  
 The following example creates a `MultiPoint` instance and uses `InstanceOf()` to see if the instance is a `GeometryCollection`.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('MULTIPOINT(0 0, 13.5 2, 7 19)', 0);  
SELECT @g.InstanceOf('GEOMETRYCOLLECTION');  
```  
  
## See Also  
 [Extended Methods on Geometry Instances](../../t-sql/data-types/extended-methods-on-geometry-instances.md)  
  
  