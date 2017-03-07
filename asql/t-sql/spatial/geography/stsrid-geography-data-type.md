---
title: "STSrid (geography Data Type) | Microsoft Docs"
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
  - "STSrid (geography Data Type)"
  - "STSrid_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STSrid method"
ms.assetid: 6b04f5a7-2e69-4d34-901e-b61ba6ca9c14
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# STSrid (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  **STSrid** is an integer representing the spatial reference identifier (SRID) of the instance.  
  
## Syntax  
  
```  
  
.STSrid  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] type: **int**  
  
 CLR type: **SqlInt32**  
  
## Remarks  
 This property can be modified.  
  
## Examples  
 The first example creates a `geography` instance with the SRID value 4326 (WGS84) and uses `STSrid` to confirm the SRID.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);  
SELECT @g.STSrid;  
```  
  
 The second example uses `STSrid` to change the SRID value of the instance to 4267 (NAD27) and then confirms the modified SRID value.  
  
```  
SET @g.STSrid = 4267;  
SELECT @g.STSrid;  
```  
  
## See Also  
 [OGC Methods on Geography Instances](../../../t-sql/data-types/ogc-methods-on-geography-instances.md)   
 [Spatial Reference Identifiers &#40;SRIDs&#41;](../../../relational-databases/spatial/spatial-reference-identifiers-srids.md)  
  
  