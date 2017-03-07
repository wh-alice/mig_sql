---
title: "Parse (geography Data Type) | Microsoft Docs"
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
  - "Parse method"
  - "Parse (geography Data Type)"
ms.assetid: 21c402fa-fd0f-4d09-a097-49cee0316d4e
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# Parse (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a **geography** instance from an Open Geospatial Consortium (OGC) Well-Known Text (WKT) representation. Parse() is equivalent to [STGeomFromText](../../../t-sql/data-types/stgeomfromtext-geography-data-type.md), except that it assumes a spatial reference ID (SRID) of 4326 as a parameter. The input may carry optional Z (elevation) and M (measure) values.  
  
 This **geography** data type method supports **FullGlobe** instances or spatial instances that are larger than a hemisphere.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
Parse ( 'geography_tagged_text' )  
```  
  
## Arguments  
 *geography_tagged_text*  
 Is the WKT representation of the **geography** instance to return. *geography_tagged_text* is an **nvarchar** expression.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
## Remarks  
 The OGC type of the **geography** instance returned by `Parse()` is set to the corresponding WKT input.  
  
 The string 'Null' will be interpreted as a null **geography** instance.  
  
 This method will throw **ArgumentException** if the input contains an antipodal edge.  
  
## Examples  
 The following example uses `Parse()` to create a `geography` instance.  
  
```  
DECLARE @g geography;   
SET @g = geography::Parse('LINESTRING(-122.360 47.656, -122.343 47.656)');  
SELECT @g.ToString();  
```  
  
## See Also  
 [Extended Static Geography Methods](../../../t-sql/data-types/extended-static-geography-methods.md)   
 [STGeomFromText &#40;geography Data Type&#41;](../../../t-sql/data-types/stgeomfromtext-geography-data-type.md)  
  
  