---
title: "STConvexHull (geography Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STConvexHull method (geography)"
ms.assetid: fb435db7-31bb-4243-9d8b-35379184cfb4
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# STConvexHull (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns an object that represents the convex hull of a **geography** instance.  
  
## Syntax  
  
```  
  
.STConvexHull ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
## Remarks  
 Returns a `FullGlobe` object for **geography** instance which has an envelope angle larger than 90 degrees.  
  
 Returns an empty **geography** collection for an empty **geography** instance.  
  
 Returns **null** for an uninitialized **geography** instance.  
  
## Examples  
  
### A. Using STConvexHull() on an uninitialized geography instance  
 The following example uses `STConvexHull()` on an uninitialized **geography** instance.  
  
 `DECLARE @g geography;`  
  
 `SELECT @g.STConvexHull();`  
  
### B. Using STConvexHull on an empty geography instance  
 The following example uses `STConvexHull()` on an empty `Polygon` instance.  
  
 `DECLARE @g geography = 'POLYGON EMPTY';`  
  
 `SELECT @g.STConvexHull().ToString();`  
  
### C. Finding the convex hull of a non-convex Polygon instance  
 The following example uses `STConvexHull()` to find the convex hull of a non-convex `Polygon` instance.  
  
```  
DECLARE @g geography;  
SET @g = geography::Parse('POLYGON((-120.533 46.566, -118.283 46.1, -122.3 47.45, -120.533 46.566))');  
SELECT @g.STConvexHull().ToString();  
```  
  
### D. Finding the convex hull on a geography instance with an envelope angle larger than 90 degrees  
 The following example uses `STConvexHull()` on a **geography** instance with an envelope angle larger than 90 degrees.  
  
 `DECLARE @g geography = 'POLYGON((20.533 46.566, -18.283 46.1, -22.3 47.45, 20.533 46.566))';`  
  
 `SELECT @g.STConvexHull().ToString();`  
  
  