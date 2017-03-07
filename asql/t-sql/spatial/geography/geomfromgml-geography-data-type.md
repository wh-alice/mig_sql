---
title: "GeomFromGML (geography Data Type) | Microsoft Docs"
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
  - "GeomFromGML (geography Data Type)"
  - "GeomFromGML method"
ms.assetid: 470d0997-3cb0-4d34-9a45-b332fe432b14
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# GeomFromGML (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Constructs a **geography** instance given a representation in the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] subset of the Geography Markup Language (GML).  
  
 For more information on GML, see the following Open Geospatial Consortium Specifications: [OGC Specifications, Geography Markup Language](http://go.microsoft.com/fwlink/?LinkId=93629)  
  
 This **geography** data type method supports **FullGlobe** instances or spatial instances that are larger than a hemisphere.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
GeomFromGml ( GML_input, SRID )  
```  
  
## Arguments  
 *GML_input*  
 Is an XML input from which the GML will return a value.  
  
 *SRID*  
 Is an **int** expression representing the spatial reference ID (SRID) of the **geography** instance to return.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
## Remarks  
 This method throws a **FormatException** if the input is not well-formatted.  
  
 This method will throw **ArgumentException** if the input contains antipodal edge.  
  
## Examples  
 The following example uses `GeomFromGml()` to create a `geography` instance.  
  
```  
DECLARE @g geography;  
DECLARE @x xml;  
SET @x = '<LineString xmlns="http://www.opengis.net/gml"><posList>47.656 -122.36 47.656 -122.343</posList></LineString>';  
SET @g = geography::GeomFromGml(@x, 4326);  
SELECT @g.ToString();  
```  
  
 The following example uses `GeomFromGml()` to create a `FullGlobe``geography` instance.  
  
```  
DECLARE @g geography;  
DECLARE @x xml;  
SET @x = '<FullGlobe xmlns="http://schemas.microsoft.com/sqlserver/2011/geography" />';  
SET @g = geography::GeomFromGml(@x, 4326);  
SELECT @g.ToString();  
```  
  
## See Also  
 [Extended Static Geography Methods](../../../t-sql/data-types/extended-static-geography-methods.md)  
  
  