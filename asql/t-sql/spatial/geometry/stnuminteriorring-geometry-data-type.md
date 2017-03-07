---
title: "STNumInteriorRing (geometry Data Type) | Microsoft Docs"
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
  - "STNumInteriorRing_TSQL"
  - "STNumInteriorRing (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STNumInteriorRing (geometry Data Type)"
ms.assetid: 48e78948-5b14-41dd-85d1-169bba1c4195
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# STNumInteriorRing (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the number of interior rings of a **Polygongeometry** instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STNumInteriorRing ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **int**  
  
 CLR return type: **SqlInt32**  
  
## Remarks  
 This method returns null if the **geometry** instance is not a polygon.  
  
## Examples  
 The following example creates a `Polygon` instance and uses `STNumInteriorRing()` to find how many interior rings the instance has.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('POLYGON((0 0, 3 0, 3 3, 0 3, 0 0),(2 2, 2 1, 1 1, 1 2, 2 2))', 0);  
SELECT @g.STNumInteriorRing();  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  