---
title: "STMLineFromWKB (geometry Data Type) | Microsoft Docs"
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
  - "STMLineFromWKB (geometry Data Type)"
  - "STMLineFromWKB_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STMLineFromWKB (geometry Data Type)"
ms.assetid: 00a8a8e7-11d6-47a0-b971-00e60f7877ce
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# STMLineFromWKB (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a **geometryMultiLineString** instance from an Open Geospatial Consortium (OGC) Well-Known Binary (WKB) representation.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)]|  
  
## Syntax  
  
```  
  
STMLineFromWKB ( 'WKB_multilinestring' , SRID )  
```  
  
## Arguments  
 *WKB_multilinestring*  
 Is the WKB representation of the **geometryMultiLineString** instance to return. *WKB_multilinestring* is a **varbinary(max)** expression.  
  
 *SRID*  
 Is an **int** expression representing the spatial reference ID (SRID) of the **geometryMultiLineString** instance to return.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
 OGC type: **MultiLineString**  
  
## Remarks  
 This method will throw a **FormatException** if the input is not well-formatted.  
  
## Examples  
 The following example uses `STMLineFromWKB()` to create a `geometry` instance.  
  
```  
DECLARE @g geometry;   
SET @g = geometry::STMLineFromWKB(0x0105000000020000000102000000020000000000000000005940000000000000594000000000000069400000000000006940010200000003000000000000000000084000000000000010400000000000001C40000000000000204000000000000024400000000000002440, 0);  
SELECT @g.STAsText();  
```  
  
## See Also  
 [OGC Static Geometry Methods](../../../t-sql/spatial/geometry/ogc-static-geometry-methods.md)  
  
  