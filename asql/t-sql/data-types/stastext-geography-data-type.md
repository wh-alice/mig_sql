---
title: "STAsText (geography Data Type) | Microsoft Docs"
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
  - "STAsText (geography Data Type)"
  - "STAsText_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STAsText method"
ms.assetid: d3d2635d-ca6c-4205-9d6c-eb939ee314fd
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# STAsText (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the Open Geospatial Consortium (OGC) Well-Known Text (WKT) representation of a **geography** instance. This text will not contain any Z (elevation) or M (measure) values carried by the instance.  
  
 This **geography** data type method supports **FullGlobe** instances or spatial instances that are larger than a hemisphere.  
  
## Syntax  
  
```  
  
.STAsText ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] return type: **nvarchar(max)**  
  
 CLR return type: **SqlChars**  
  
## Remarks  
 The OGC type of a **geography** instance can be determined by invoking [STGeometryType()](../../t-sql/data-types/stgeometrytype-geography-data-type.md).  
  
 In [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)], the set of possible results returned on the server has been extended to **FullGlobe** instances.  
  
## Examples  
 The following example uses `STAsText()` to create a `LineString``geography` instance from (-122.360, 47.656) to (-122.343, 47.656) from text. It then returns the result in text.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);  
SELECT @g.STAsText();  
```  
  
## See Also  
 [OGC Methods on Geography Instances](../../t-sql/data-types/ogc-methods-on-geography-instances.md)  
  
  