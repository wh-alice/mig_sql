---
title: "ShortestLineTo (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "ShortestLineTo method (geometry)"
ms.assetid: 39a2d0e4-4f93-4e94-a27e-6ad9537cfe74
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# ShortestLineTo (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns a **LineString** instance with two points that represent the shortest distance between the two **geometry** instances. The length of the **LineString** instance returned is the distance between the two **geometry** instances.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.ShortestLineTo ( geometry_other )  
```  
  
## Arguments  
 *geometry_other*  
 The second **geometry** instance that the calling **geometry** instance is trying to determine the shortest distance to.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Remarks  
 The method returns a **LineString** instance with endpoints lying on the borders of the two non-intersecting **geometry** instances being compared. The length of the **LineString** returned equals the shortest distance between the two **geometry** instances. An empty **LineString** instance is returned when the two **geometry** instances intersect each other.  
  
## Examples  
  
### A. Calling ShortestLineTo() on non-intersecting instances  
 This example finds the shortest distance between a `CircularString` instance and a `LineString` instance and returns the `LineString` instance connecting the two points:  
  
 `DECLARE @g1 geometry = 'CIRCULARSTRING(0 0, 1 2.1082, 3 6.3246, 0 7, -3 6.3246, -1 2.1082, 0 0)';`  
  
 `DECLARE @g2 geometry = 'LINESTRING(-4 7, 7 10, 3 7)';`  
  
 `SELECT @g1.ShortestLineTo(@g2).ToString();`  
  
### B. Calling ShortestLineTo() on intersecting instances  
 This example returns an empty `LineString` instance because the `LineString` instance intersects the `CircularString` instance:  
  
 `DECLARE @g1 geometry = 'CIRCULARSTRING(0 0, 1 2.1082, 3 6.3246, 0 7, -3 6.3246, -1 2.1082, 0 0)';`  
  
 `DECLARE @g2 geometry = 'LINESTRING(0 5, 7 10, 3 7)';`  
  
 `SELECT @g1.ShortestLineTo(@g2).ToString();`  
  
## See Also  
 [ShortestLineTo &#40;geography Data Type&#41;](../../t-sql/data-types/shortestlineto-geography-data-type.md)  
  
  