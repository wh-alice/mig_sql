---
title: "Filter (geometry Data Type) | Microsoft Docs"
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
  - "Filter"
  - "Filter_TSQL"
  - "Filter (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Filter method"
ms.assetid: 3d629a39-157e-4159-a3ca-a3c2e0ed4160
caps.latest.revision: 10
ms.author: "rickbyh"
manager: "jhubbard"
---
# Filter (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  A method that offers a fast, index-only intersection method to determine if a **geometry** instance intersects another **geometry** instance, assuming an index is available.  
  
 Returns 1 if a **geometry** instance potentially intersects another **geometry** instance. This method may produce a false positive return, and the exact result may be plan-dependent. Returns an accurate 0 value (true negative return) if there is no intersection of **geometry** instances found.  
  
 In cases where an index is not available, or is not used, the method will return the same values as **STIntersects()** when called with the same parameters.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.Filter ( other_geometry )  
```  
  
## Arguments  
 *other_geometry*  
 Is another **geometry** instance to compare against the instance on which Filter() is invoked.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **SqlBoolean**  
  
## Remarks  
 This method is not deterministic and is not precise.  
  
## Examples  
 The following example uses `Filter()` to determine if two `geometry` instances intersect each other.  
  
```  
CREATE TABLE sample (id int primary key, g geometry);  
GO  
INSERT INTO sample VALUES  
   (0, geometry::Point(0, 0, 0)),  
   (1, geometry::Point(0, 1, 0)),  
   (2, geometry::Point(0, 2, 0)),  
   (3, geometry::Point(0, 3, 0)),  
   (4, geometry::Point(0, 4, 0));  
  
CREATE SPATIAL INDEX sample_idx ON sample(g)  
WITH (bounding_box = (-8000, -8000, 8000, 8000));  
GO  
SELECT id  
FROM sample   
WHERE g.Filter(geometry::Parse('POLYGON((-1 -1, 1 -1, 1 1, -1 1, -1 -1))')) = 1;  
```  
  
## See Also  
 [Extended Methods on Geometry Instances](../../../t-sql/data-types/extended-methods-on-geometry-instances.md)   
 [STIntersects &#40;geometry Data Type&#41;](../../../t-sql/data-types/stintersects-geometry-data-type.md)  
  
  