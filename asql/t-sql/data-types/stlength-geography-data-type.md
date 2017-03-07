---
title: "STLength (geography Data Type) | Microsoft Docs"
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
  - "STLength (geography Data Type)"
  - "STLength_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STLength method"
ms.assetid: 774560ab-4a4a-4058-b043-1e67cf6fb9eb
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# STLength (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Returns the total length of the elements in a **geography** instance or the **geography** instances within a **GeometryCollection**.  
  
## Syntax  
  
```  
  
.STLength ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **float**  
  
 CLR return type: **SqlDouble**  
  
## Remarks  
 If a **geography** instance is closed, its length is calculated as the total length around the instance; the length of any polygon is its perimeter, and the length of a point is 0. The length of a **GeometryCollection** is found by calculating the sum of the lengths of all of the **geography** instances contained within the collection.  
  
 STLength() works on both valid and invalid LineStrings. Typically a LineString is invalid due to overlapping segments, which may be caused by anomalies such as inaccurate GPS traces. STLength() does not remove overlapping or invalid segments. It includes overlapping and invalid segments in the length value that it returns. The MakeValid() method can remove overlapping segments from a LineString.  
  
## Examples  
 The following example creates a `LineString` instance and uses `STLength()` to find the length of the instance.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);  
SELECT @g.STLength();  
```  
  
## See Also  
 [OGC Methods on Geography Instances](../../t-sql/data-types/ogc-methods-on-geography-instances.md)  
  
  