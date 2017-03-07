---
title: "STPointN (geometry Data Type) | Microsoft Docs"
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
  - "STPointN_TSQL"
  - "STPointN (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STPointN (geometry Data Type)"
ms.assetid: 8f0bb3b7-5cd9-42c2-b9f8-f04628653bd0
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# STPointN (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a specified point in a **geometry** instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STPointN ( expression )  
```  
  
## Arguments  
 *expression*  
 Is an **int** expression between 1 and the number of points in the **geometry** instance.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
 Open Geospatial Consortium (OGC) type: **Point**  
  
## Remarks  
 If a **geometry** instance is user created, `STPointN()` returns the point specified by *expression* by ordering the points in the order in which they were originally input.  
  
 If a **geometry** instance was constructed by the system, `STPointN()` returns the point specified by *expression* by ordering all the points in the same order they would be output: first by geometry, then by ring within the geometry (if appropriate), and then by point within the ring. This order is deterministic.  
  
 If this method is called with a value less than 1, it throws an **ArgumentOutOfRangeException**.  
  
 If this method is called with a value greater than the number of points in the instance, it returns null.  
  
## Examples  
 The following example creates a `LineString` instance and uses `STPointN()` to retrieve the second point in the description of the instance.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('LINESTRING(0 0, 2 2, 1 0)', 0);  
SELECT @g.STPointN(2).ToString();  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  