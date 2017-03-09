---
title: "STStartPoint (geometry Data Type) | Microsoft Docs"
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
  - "STStartPoint_TSQL"
  - "STStartPoint (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STStartPoint (geometry Data Type)"
ms.assetid: 049917db-3f76-4053-8cd2-bc54158e89bc
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# STStartPoint (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the start point of a **geometry** instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STStartPoint ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
 Open Geospatial Consortium (OGC) type: **Point**  
  
## Remarks  
 `STStartPoint()` is the equivalent of [STPointN](../../../t-sql/data-types/stpointn-geometry-data-type.md) (1).  
  
## Examples  
 The following example creates a `LineString` instance and uses `STStartPoint()` to retrieve the start point of the instance.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('LINESTRING(0 0, 2 2, 1 0)', 0;  
SELECT @g.STStartPoint().ToString();  
```  
  
## See Also  
 [STPointN &#40;geometry Data Type&#41;](../../../t-sql/data-types/stpointn-geometry-data-type.md)   
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  