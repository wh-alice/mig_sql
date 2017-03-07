---
title: "STCurveToLine (geography Data Type) | Microsoft Docs"
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
  - "STCurveToLine_TSQL"
  - "STCurveToLine"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STCurveToLine method (geography)"
ms.assetid: 2f863a85-6168-465a-b32f-bb5e3de58dee
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# STCurveToLine (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a polygonal approximation of a **geography** instance that contains circular arc segments.  
  
## Syntax  
  
```  
  
.STCurveToLine()  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
## Remarks  
 Returns a **LineString** instance for a **CircularString** or **CompoundCurve** instance.  
  
 Returns a **Polygon** instance for a **CurvePolygon** instance.  
  
 Return a copy of **geography** instances that do not contain **CircularString**, **CompoundCurve**, or **CurvePolygon** instances.  
  
 Unlike the SQL MM specification, this method does not use z-coordinate values in calculating the polygonal approximation. Any z-coordinate values present in the calling **geography** instance are ignored.  
  
## Examples  
 The following example returns a `LineString` instance that is a polygonal approximation of a `CircularString` instance:  
  
 `DECLARE @g1 geography = 'CIRCULARSTRING(-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)';`  
  
 `DECLARE @g2 geography;`  
  
 `SET @g2 = @g1.STCurveToLine();`  
  
 `SELECT @g1.STNumPoints() AS G1, @g2.STNumPoints() AS G2;`  
  
## See Also  
 [STLength &#40;geography Data Type&#41;](../../../t-sql/data-types/stlength-geography-data-type.md)   
 [STNumPoints &#40;geography Data Type&#41;](../../../t-sql/data-types/stnumpoints-geography-data-type.md)   
 [Spatial Data Types Overview](../../../relational-databases/spatial/spatial-data-types-overview.md)  
  
  