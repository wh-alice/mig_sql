---
title: "ToString (geography Data Type) | Microsoft Docs"
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
  - "ToString (geography Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ToString method"
ms.assetid: 045c12fa-8fc6-441a-9500-7021cb4ff13e
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# ToString (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the Open Geospatial Consortium (OGC) Well-Known Text (WKT) representation of a **geography** instance augmented with any Z (elevation) and M (measure) values carried by the instance.  
  
 This geography data type method supports **FullGlobe** instances or spatial instances that are larger than a hemisphere.  
  
## Syntax  
  
```  
  
.ToString ()  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **nvarchar(max)**  
  
 CLR return type: **SqlString**  
  
## Remarks  
 This method returns the string "Null" when called on null instances. In [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)], the set of possible results on the server has been extended to **FullGlobe** instances. This method will return the same value as `AsTextZM()`.  
  
 This method is not precise.  
  
## Examples  
 The following example create a `LineString` instance and uses `ToString()` to return the text description of the instance.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);  
SELECT @g.ToString();  
```  
  
## See Also  
 [Extended Methods on Geography Instances](../../../t-sql/data-types/extended-methods-on-geography-instances.md)   
 [AsTextZM &#40;geography Data Type&#41;](../../../t-sql/data-types/astextzm-geography-data-type.md)  
  
  