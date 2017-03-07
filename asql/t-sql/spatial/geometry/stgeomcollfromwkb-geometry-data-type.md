---
title: "STGeomCollFromWKB (geometry Data Type) | Microsoft Docs"
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
  - "STGeomCollFromWKB (geometry Data Type)"
  - "STGeomCollFromWKB_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STGeomCollFromWKB (geometry Data Type)"
ms.assetid: 6c55032c-7f5e-4181-8e67-c0265032db63
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# STGeomCollFromWKB (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a **geometrycollection** instance from an Open Geospatial Consortium (OGC) Well-Known Binary (WKB) representation.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
STGeomCollFromWKB ( 'WKB_geometrycollection' , SRID )  
```  
  
## Arguments  
 *WKB_geometrycollection*  
 Is the WKB representation of the **geometrycollection** instance you wish to return. *WKB_geometrycollection* is a **varbinary(max)** expression.  
  
 *SRID*  
 Is an **int** expression representing the spatial reference ID (SRID) of the **geometry** instance you wish to return.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Remarks  
 The OGC type of the **geometry** instance returned by `STGeomCollFromWKB()` is set to **GeomCollection**, **MultiPolygon**, **MultiLineString**, or **MulitPoint**, depending on the corresponding WKB input.  
  
 This method will throw a FormatException  exception if the input is not well-formatted.  
  
## Examples  
 The following example uses `STGeomCollFromWKB()` to create a **geometry** instance.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomCollFromWKB(0x0107000000020000000103000000010000000400000000000000000014400000000000001440000000000000244000000000000014400000000000002440000000000000244000000000000014400000000000001440010100000000000000000024400000000000002440, 0);  
SELECT @g.STAsText();  
```  
  
## See Also  
 [OGC Static Geometry Methods](../../../t-sql/data-types/ogc-static-geometry-methods.md)  
  
  