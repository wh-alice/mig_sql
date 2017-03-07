---
title: "STConvexHull (geometry Data Type) | Microsoft Docs"
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
  - "STConvexHull (geometry Data Type)"
  - "STConvexHull_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STConvexHull (geometry Data Type)"
ms.assetid: 60a520a6-1a7c-486b-8d91-34401edf6233
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# STConvexHull (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns an object representing the convex hull of a **geometry** instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STConvexHull ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Remarks  
 `STConvexHull()` returns the smallest convex polygon that contains the given **geometry** instance. **Points** or co-linear **LineString** instances will produce an instance of the same type as that of the input.  
  
## Examples  
 The following example uses `STConvexHull()` to find the convex hull of a non-convex `Polygon``geometry` instance.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('POLYGON((0 0, 0 2, 1 1, 2 2, 2 0, 0 0))', 0);  
SELECT @g.STConvexHull().ToString();  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  