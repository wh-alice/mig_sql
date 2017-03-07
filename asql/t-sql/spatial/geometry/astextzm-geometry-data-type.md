---
title: "AsTextZM (geometry Data Type) | Microsoft Docs"
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
  - "AsTextZM_TSQL"
  - "AsTextZM"
  - "AsTextZM (geometry Data Type)"
  - "AsTextZM_(geometry_Data_Type)_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "AsTextZM (geometry Data Type)"
ms.assetid: 08ac8aa0-aff7-4b22-87e0-1a1d55dcbc04
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# AsTextZM (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the Open Geospatial Consortium (OGC) Well-Known Text (WKT) representation of a geometry instance augmented with any **Z** (elevation) and **M** (measure) values carried by the instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.AsTextZM ()  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **nvarchar(max)**  
  
 CLR return type: **SqlChars**  
  
## Remarks  
  
## Examples  
 The following example creates a `Point` instance that contains **Z** (elevation) and **M** (measure) values. `STAsText()` selects the WKT values, (1 2); `AsTextZM()` selects the same WKT values and also returns the values for **Z** and **M**, yielding (1 2 3 4).  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('POINT(1 2 3 4)', 0);  
SELECT @g.STAsText();  
SELECT @g.AsTextZM();  
```  
  
## See Also  
 [Extended Methods on Geometry Instances](../../../t-sql/data-types/extended-methods-on-geometry-instances.md)   
 [M &#40;geometry Data Type&#41;](../../../t-sql/data-types/m-geometry-data-type.md)   
 [Z &#40;geometry Data Type&#41;](../../../t-sql/data-types/z-geometry-data-type.md)  
  
  