---
title: "STIsValid (geometry Data Type) | Microsoft Docs"
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
  - "STIsValid (geometry Data Type)"
  - "STIsValid_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STIsValid (geometry Data Type)"
ms.assetid: 6da39bea-0f67-4660-98fc-d7214f9b2138
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# STIsValid (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns true if a **geometry** instance is well-formed, based on its Open Geospatial Consortium (OGC) type. Returns false if a **geometry** instance is not well-formed.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STIsValid ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Remarks  
 The OGC type of a **geometry** instance can be determined by invoking [STGeometryType()](../../t-sql/data-types/stgeometrytype-geometry-data-type.md).  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] produces only valid **geometry** instances, but allows for the storage and retrieval of invalid instances. A valid instance representing the same point set of any invalid instance can be retrieved using the `MakeValid()` method.  
  
## Examples  
 The following example creates a `geometry` instance and uses `STIsValid()` to test if the instance is valid.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('LINESTRING(0 0, 2 2, 1 0)', 0);  
SELECT @g.STIsValid();  
```  
  
## See Also  
 [STGeometryType &#40;geometry Data Type&#41;](../../t-sql/data-types/stgeometrytype-geometry-data-type.md)   
 [MakeValid &#40;geometry Data Type&#41;](../../t-sql/data-types/makevalid-geometry-data-type.md)   
 [OGC Methods on Geometry Instances](../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  