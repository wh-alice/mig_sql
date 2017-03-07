---
title: "GeomFromGml (geometry Data Type) | Microsoft Docs"
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
  - "GeomFromGML_TSQL"
  - "GeomFromGML"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "GeomFromGML (geometry Data Type)"
ms.assetid: a3f2c84b-a49f-4ce3-ba25-b903fb0c99b4
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# GeomFromGml (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Construct a **geometry** instance given a representation in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] subset of the Geography Markup Language (GML).  
  
 For more information on the Geography Markup Language, see the following Open Geospatial Consortium Specifications:  
  
 [OGC Specifications, Geography Markup Language](http://go.microsoft.com/fwlink/?LinkId=93629)  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
GeomFromGml ( GML_input, SRID )  
```  
  
## Arguments  
 *GML_input*  
 Is an XML input from which the GML will return a value.  
  
 *SRID*  
 Is an **int** expression representing the spatial reference ID (SRID) of the **geometry** instance you wish to return.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Remarks  
 This method will throw a **FormatException** if the input is not well-formatted.  
  
## Examples  
 The following example uses `GeomFromGml()` to create a `geometry` instance.  
  
```  
DECLARE @g geometry;  
DECLARE @x xml;  
SET @x = '<LineString xmlns="http://www.opengis.net/gml"> <posList>100 100 20 180 180 180</posList> </LineString>';  
SET @g = geometry::GeomFromGml(@x, 0);  
SELECT @g.ToString();  
```  
  
## See Also  
 [Extended Static Geometry Methods](../../../t-sql/data-types/extended-static-geometry-methods.md)  
  
  