---
title: "STTouches (geometry Data Type) | Microsoft Docs"
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
  - "STTouches (geometry Data Type)"
  - "STTouches_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STTouches (geometry Data Type)"
ms.assetid: af3650b4-26da-4600-9cc2-1be71dd76a14
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# STTouches (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns 1 if a **geometry** instance spatially touches another **geometry** instance. Returns 0 if it does not.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STTouches ( other_geometry )  
```  
  
## Arguments  
 *other_geometry*  
 Is another **geometry** instance to compare against the instance on which `STTouches()` is invoked.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Remarks  
 Two **geometry** instances touch if their point sets intersect, but their interiors do not intersect.  
  
 This method always returns null if the spatial reference IDs (SRIDs) of the **geometry** instances do not match.  
  
## Examples  
 The following example uses `STTouches()` to test two `geometry` instances to see if they touch.  
  
```  
DECLARE @g geometry;  
DECLARE @h geometry;  
SET @g = geometry::STGeomFromText('LINESTRING(0 2, 2 0, 4 2)', 0);  
SET @h = geometry::STGeomFromText('POINT(1 1)', 0);  
SELECT @g.STTouches(@h);  
```  
  
## See Also  
 [Spatial Indexes Overview](../../../relational-databases/spatial/spatial-indexes-overview.md)   
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  