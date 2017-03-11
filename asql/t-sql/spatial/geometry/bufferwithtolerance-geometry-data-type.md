---
title: "BufferWithTolerance (geometry Data Type) | Microsoft Docs"
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
  - "BufferWithTolerance_TSQL"
  - "BufferWithTolerance"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "BufferWithTolerance (geometry Data Type)"
ms.assetid: 7049d37a-3e72-4e93-87a1-c96a6f0e2b99
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# BufferWithTolerance (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a geometric object that represents the union of all point values whose distance from a **geometry** instance is less than or equal to a specified value, allowing for a specified tolerance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.BufferWithTolerance ( distance, tolerance, relative )  
```  
  
## Arguments  
 *distance*  
 Is a **float** expression specifying the distance from the **geometry** instance around which to calculate the buffer.  
  
 *tolerance*  
 Is a **float** expression specifying the tolerance of the buffer distance.  
  
 *Tolerance* refers to the maximum variation in the ideal buffer distance for the returned linear approximation.  
  
 For example, the ideal buffer distance of a point is a circle, but this must be approximated by a polygon. The smaller the tolerance, the more points the polygon will have, which increases the complexity of the result, but decreases the error.  
  
 *relative*  
 Is a **bit** specifying whether the *tolerance* value is relative or absolute. If 'TRUE' or 1, then tolerance is relative and is calculated as the product of the *tolerance* parameter and the diameter of the bounding box of the instance. If 'FALSE' or 0, tolerance is absolute and the *tolerance* value is the absolute maximum variation in the ideal buffer distance for the returned linear approximation.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Exceptions  
 The *tolerance* parameter must be greater than zero. If *tolerance* <= 0 then a `System.ArgumentOutOfRangeException` is thrown.  
  
> [!NOTE]  
>  Since *tolerance* is a **float** type, a `System.Runtime.InteropServices.COMException` can be thrown if the value given for tolerance is very small because of the rounding issues with floating point types.  
  
## Remarks  
 When *distance* > 0 then either a **Polygon** or **MultiPolygon** instance is returned.  
  
> [!NOTE]  
>  Since distance is a **float**, an extremely small value can equate to zero in the calculations. When this occurs, a copy of the calling **geometry** instance is returned. See [float and real &#40;Transact-SQL&#41;](../../../t-sql/data-types/float-and-real-transact-sql.md).  
  
 When *distance* = 0 then a copy of the calling **geometry** instance is returned.  
  
 When *distance* \< 0 then  
  
-   An empty **GeometryCollection** instance is returned when the dimensions of the instance are 0 or 1.  
  
-   A negative buffer is returned when the dimensions of the instance are 2 or more.  
  
    > [!NOTE]  
    >  A negative buffer may also create an empty **GeometryCollection** instance.  
  
 A negative buffer removes all points within the given distance of the boundary of the **geometry** instance.  
  
 The error between the theorectical and computed buffer is max(tolerance, extents \* 1.E-7) where tolerance is the value of the *tolerance* parameter. For more information on extents, see [geometry Data Type Method Reference](http://msdn.microsoft.com/library/d88e632b-6b2f-4466-a15f-9fbef1a347a7).  
  
## Examples  
 The following example creates a `Point` instance and uses `BufferWithTolerance()` to obtain a rough buffer around it.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('POINT(3 3)', 0);  
SELECT @g.BufferWithTolerance(1, .5, 0).ToString();  
```  
  
## See Also  
 [STBuffer &#40;geometry Data Type&#41;](../../../t-sql/spatial/geometry/stbuffer-geometry-data-type.md)   
 [Extended Methods on Geometry Instances](../../../t-sql/spatial/geometry/extended-methods-on-geometry-instances.md)  
  
  