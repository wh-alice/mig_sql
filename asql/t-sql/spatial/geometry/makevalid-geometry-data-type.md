---
title: "MakeValid (geometry Data Type) | Microsoft Docs"
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
  - "MakeValid"
  - "MakeValid_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MakeValid (geometry Data Type)"
ms.assetid: 38673010-ab77-4ebb-9c4d-b26b79e3b7ea
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# MakeValid (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Converts an invalid **geometry** instance into a **geometry** instance with a valid Open Geospatial Consortium (OGC) type.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.MakeValid ()  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Remarks  
 This method may cause a change in the type of the **geometry** instance, as well as cause the points of a **geometry** instance to shift slightly.  
  
## Examples  
 The first example creates an invalid `LineString` instance that overlaps itself and uses `STIsValid()` to confirm that it is an invalid instance. `STIsValid()` returns the value of 0 for an invalid instance.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('LINESTRING(0 2, 1 1, 1 0, 1 1, 2 2)', 0);  
SELECT @g.STIsValid();  
```  
  
 The second example uses `MakeValid()` to make the instance valid and to test that the instance is indeed valid. `STIsValid()` returns the value of 1 for a valid instance.  
  
```  
SET @g = @g.MakeValid();  
SELECT @g.STIsValid();  
```  
  
 The third example verifies how the instance has been changed to make it a valid instance.  
  
```  
SELECT @g.ToString();  
```  
  
 In this example, when the `LineString` instance is selected, the values are returned as a valid `MultiLineString` instance.  
  
```  
MULTILINESTRING ((0 2, 1 1, 2 2), (1 1, 1 0))  
```  
  
 The following example converts the CircularString instance into a Point instance.  
  
```  
DECLARE @g geometry = 'CIRCULARSTRING(1 1, 1 1, 1 1)';  
SELECT @g.MakeValid().ToString();  
```  
  
## See Also  
 [STIsValid &#40;geometry Data Type&#41;](../../../t-sql/spatial/geometry/stisvalid-geometry-data-type.md)   
 [Extended Methods on Geometry Instances](../../../t-sql/spatial/geometry/extended-methods-on-geometry-instances.md)  
  
  