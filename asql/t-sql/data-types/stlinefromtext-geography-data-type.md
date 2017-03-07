---
title: "STLineFromText (geography Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "STLineFromText (geography Data Type)"
  - "STLineFromText_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STLineFromText method"
ms.assetid: e0c05bde-077d-4ce2-b4ec-8861db9b996d
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# STLineFromText (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a **geography** instance from an Open Geospatial Consortium (OGC) Well-Known Text (WKT) representation, augmented with any Z (elevation) and M (measure) values carried by the instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
STLineFromText ( 'linestring_tagged_text' , SRID )  
```  
  
## Arguments  
 *linestring_tagged_text*  
 Is the WKT representation of the **geographyLineString** instance you wish to return. *linestring_tagged_text* is an **nvarchar(max)** expression.  
  
 *SRID*  
 Is an **int** expression representing the spatial reference ID (SRID) of the **geographyLineString** instance you wish to return.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
 OGC type: **LineString**  
  
## Remarks  
 This method throws a **FormatException** if the input is not well-formatted.  
  
## Examples  
 The following example uses `STLineFromText()` to create a `geography` instance.  
  
```  
DECLARE @g geography;  
SET @g = geography::STLineFromText('LINESTRING(-122.360 47.656, -122.343 47.656 )', 4326);  
SELECT @g.ToString();  
```  
  
## See Also  
 [OGC Static Geography Methods](../../t-sql/data-types/ogc-static-geography-methods.md)  
  
  