---
title: "STMPolyFromWKB (geometry Data Type) | Microsoft Docs"
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
  - "STMPolyFromWKB (geometry Data Type)"
  - "STMPolyFromWKB_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STMPolyFromWKB (geometry Data Type)"
ms.assetid: cac25868-08ef-46fc-9c3d-a15e43794a7a
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# STMPolyFromWKB (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a **geometryMultiPolygon** instance from an Open Geospatial Consortium (OGC) Well-Known Binary (WKB) representation.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
STMPolyFromWKB ( 'WKB_multipolygon' , SRID )  
```  
  
## Arguments  
 *WKB_multipolygon*  
 Is the WKB representation of the **geometryMultiPolygon** instance you wish to return. *WKB_multipolygon* is a **varbinary(max)** expression.  
  
 *SRID*  
 Is an **int** expression representing the spatial reference ID (SRID) of the **geometryMultiPolygon** instance you wish to return.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
 OGC type: **MultiPolygon**  
  
## Remarks  
  
## Examples  
 The following example uses `STMPolyFromWKB()` to create a `geometry` instance:  
  
```  
DECLARE @g geometry;   
SET @g = geometry::STMPolyFromWKB(0x0106000000020000000103000000010000000400000000000000000014400000000000001440000000000000244000000000000014400000000000002440000000000000244000000000000014400000000000001440010300000001000000050000000000000000002440000000000000244000000000000059400000000000002440000000000000694000000000000069400000000000003E400000000000003E4000000000000024400000000000002440, 0);  
SELECT @g.STAsText();  
```  
  
## See Also  
 [OGC Static Geometry Methods](../../t-sql/data-types/ogc-static-geometry-methods.md)  
  
  