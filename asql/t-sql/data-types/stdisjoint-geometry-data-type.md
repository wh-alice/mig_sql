---
title: "STDisjoint (geometry Data Type) | Microsoft Docs"
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
  - "STDisjoint_TSQL"
  - "STDisjoint (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STDisjoint (geometry Data Type)"
ms.assetid: 90acdb21-e826-4d81-afe8-45a71f33282a
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# STDisjoint (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns 1 if a **geometry** instance is spatially disjoint from another **geometry** instance. Returns 0 if it is not.  
  
## Syntax  
  
```  
  
.STDisjoint ( other_geometry )  
```  
  
## Arguments  
 *other_geometry*  
 Is another **geometry** instance to compare against the instance on which `STDisjoint()` is invoked.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Remarks  
 Two **geometry** instances are disjoint if the intersection of their point sets is empty.  
  
 This method always returns null if the spatial reference IDs (SRIDs) of the **geometry** instances do not match.  
  
## Examples  
 The following example uses `STDisjoint()` to test two **geometry** instances for spatial disjoint.  
  
```  
DECLARE @g geometry;  
DECLARE @h geometry;  
SET @g = geometry::STGeomFromText('LINESTRING(0 2, 2 0, 4 2)', 0);  
SET @h = geometry::STGeomFromText('POINT(1 1)', 0);  
SELECT @g.STDisjoint(@h);  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  