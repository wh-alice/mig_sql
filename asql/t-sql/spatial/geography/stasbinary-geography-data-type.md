---
title: "STAsBinary (geography Data Type) | Microsoft Docs"
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
  - "STAsBinary_TSQL"
  - "STAsBinary (geography Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STAsBinary method"
ms.assetid: 99602a62-265d-4aa4-a8dc-92992ca55ba4
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# STAsBinary (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns the Open Geospatial Consortium (OGC) Well-Known Binary (WKB) representation of a **geography** instance.  
  
 This **geography** data type method supports **FullGlobe** instances or spatial instances that are larger than a hemisphere.  
  
## Syntax  
  
```  
  
.STAsBinary ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **varbinary(max)**  
  
 CLR return type: **SqlBytes**  
  
## Remarks  
 The OGC type of a **geography** instance can be determined by invoking [STGeometryType()](../../../t-sql/spatial/geography/stgeometrytype-geography-data-type.md).  
  
## Examples  
 The following example uses `STAsBinary()` to create a `LineString``geography` instance from (-122.360, 47.656) to (-122.343, 47.656) from text. It then returns the result in WKB.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('LINESTRING( -122.360 47.656, -122.343 47.656)', 4326);  
SELECT @g.STAsBinary();  
```  
  
## See Also  
 [OGC Methods on Geography Instances](../../../t-sql/spatial/geography/ogc-methods-on-geography-instances.md)  
  
  