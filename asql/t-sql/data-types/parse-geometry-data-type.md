---
title: "Parse (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "Parse (geometry Data Type)"
ms.assetid: 6e080919-4b64-46cd-8dd2-254a9c232e53
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# Parse (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a **geometry** instance from an Open Geospatial Consortium (OGC) Well-Known Text (WKT) representation. `Parse()` is equivalent to [STGeomFromText()](../../t-sql/data-types/parse-geometry-data-type.md), with the exception that it assumes a spatial reference ID (SRID) of 0 as a parameter. The input may carry optional Z (elevation) and M (measure) values.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
Parse ( 'geometry_tagged_text' )  
```  
  
## Arguments  
 *geometry_tagged_text*  
 Is the WKT representation of the **geometry** instance you wish to return. *geometry_tagged_text* is an **nvarchar** expression.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Remarks  
 The OGC type of the **geometry** instance returned by `Parse()` is set to the corresponding WKT input.  
  
 The string 'Null' will be interpreted as a null **geometry** instance.  
  
 This method will throw a **FormatException** if the input is not well-formatted.  
  
## Examples  
 The following example uses `Parse()` to create a `geometry` instance.  
  
```  
DECLARE @g geometry;   
SET @g = geometry::Parse('LINESTRING (100 100, 20 180, 180 180)');  
SELECT @g.ToString();  
```  
  
## See Also  
 [STGeomFromText](../../t-sql/data-types/parse-geometry-data-type.md)   
 [Extended Static Geometry Methods](../../t-sql/data-types/extended-static-geometry-methods.md)  
  
  