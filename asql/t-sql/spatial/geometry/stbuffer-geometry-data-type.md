---
title: "STBuffer (geometry Data Type) | Microsoft Docs"
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
  - "STBuffer (geometry Data Type)"
  - "STBuffer_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STBuffer (geometry Data Type)"
ms.assetid: ca6bf2dc-1d38-4503-b87e-f2ea033d36ba
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# STBuffer (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a geometric object that represents the union of all points whose distance from a **geometry** instance is less than or equal to a specified value.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STBuffer ( distance )  
```  
  
## Arguments  
 *distance*  
 Is a value of type **float** (**double** in the .NET Framework) specifying the distance from the geometry instance around which to calculate the buffer.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Remarks  
 `STBuffer()` calculates a buffer like [BufferWithTolerance](../../../t-sql/data-types/bufferwithtolerance-geometry-data-type.md), specifying *tolerance* = distance \* .001 and *relative* = **false**.  
  
 When *distance* > 0 then either a **Polygon** or **MultiPolygon** instance is returned.  
  
> [!NOTE]  
>  Since distance is a **float**, a very small value can equate to zero in the calculations.  When this occurs, a copy of the calling **geometry** instance is returned.  See [float and real &#40;Transact-SQL&#41;](../../../t-sql/data-types/float-and-real-transact-sql.md)  
  
 When *distance* = 0, then a copy of the calling **geometry** instance is returned.  
  
 When *distance* \< 0, then  
  
-   an empty **GeometryCollection** instance is returned when the dimensions of the instance are 0 or 1.  
  
-   a negative buffer is returned when the dimensions of the instance are 2 or more.  
  
    > [!NOTE]  
    >  A negative buffer may also create an empty **GeometryCollection** instance.  
  
 A negative buffer removes all points enclosed in given distance of the boundary of the geometry.  
  
 The error between the theorectical and computed buffer is max(tolerance, extents * 1.E-7) where tolerance = distance \* .001. For more information on extents, see [geometry Data Type Method Reference](../../../a9retired/geometry-data-type-method-reference.md).  
  
## Examples  
  
### A. Calling STBuffer() with parameter_value < 0 on one dimensional geometry instance  
 The following example returns an empty `GeometryCollection` instance:  
  
 `DECLARE @g geometry= 'LINESTRING(3 4, 8 11)';`  
  
 `SELECT @g.STBuffer(-1).ToString();`  
  
### B. Calling STBuffer() with parameter_value < 0 on a Polygon instance  
 The following example returns a `Polygon` instance with a negative buffer:  
  
 `DECLARE @g geometry = 'POLYGON((1 1, 1 5, 5 5, 5 1, 1 1))';`  
  
 `SELECT @g.STBuffer(-1).ToString();`  
  
### C. Calling STBuffer() with parameter_value < 0 on a CurvePolygon instance  
 The following example returns a `Polygon` instance with a negative buffer from a `CurvePolygon` instance:  
  
 `DECLARE @g geometry = 'CURVEPOLYGON(COMPOUNDCURVE(CIRCULARSTRING(0 4, 4 0, 8 4), (8 4, 0 4)))';`  
  
 `SELECT @g.STBuffer(-1).ToString();`  
  
> [!NOTE]  
>  A `Polygon` instance is returned instead of a `CurvePolygon` instance.  To return a `CurvePolygon` instance, see [BufferWithCurves &#40;geometry Data Type&#41;](../../../t-sql/data-types/bufferwithcurves-geometry-data-type.md)  
  
### D. Calling STBuffer() with a negative parameter value that returns an empty instance  
 The following example shows what occurs when the *distance* parameter equals -2 for the previous example.  
  
 `DECLARE @g geometry = 'CURVEPOLYGON(COMPOUNDCURVE(CIRCULARSTRING(0 4, 4 0, 8 4), (8 4, 0 4)))';`  
  
 `SELECT @g.STBuffer(-2).ToString();`  
  
 This **SELECT** statement returns a `GEOMETRYCOLLECTION EMPTY.`  
  
### E. Calling STBuffer() with parameter_value = 0  
 The following example returns a copy of the calling `geometry` instance:  
  
 `DECLARE @g geometry = 'LINESTRING(3 4, 8 11)';`  
  
 `SELECT @g.STBuffer(0).ToString();`  
  
### F. Calling STBuffer() with a non-zero parameter value that is extremely small  
 The following example also returns a copy of the calling `geometry` instance:  
  
 `DECLARE @g geometry = 'LINESTRING(3 4, 8 11)';`  
  
 `DECLARE @distance float = 1e-20;`  
  
 `SELECT @g.STBuffer(@distance).ToString();`  
  
### G. Calling STBuffer() with parameter_value > 0  
 The following example returns a `Polygon` instance:  
  
 `DECLARE @g geometry= 'LINESTRING(3 4, 8 11)';`  
  
 `SELECT @g.STBuffer(2).ToString();`  
  
### H. Calling STBuffer() with a string parameter value  
 The following example returns the same `Polygon` instance as mentioned earlier, but a string parameter is passed to the method:  
  
 `DECLARE @g geometry= 'LINESTRING(3 4, 8 11)';`  
  
 `SELECT @g.STBuffer('2').ToString();`  
  
 The following example will throw an error:  
  
 `DECLARE @g geometry = 'LINESTRING(3 4, 8 11)';`  
  
 `SELECT @g.STBuffer('a').ToString();`  
  
> [!NOTE]  
>  The previous two examples passed a string literal to the `STBuffer()`.  The first example works because the string literal can be converted to a numeric value. However, the second example throws an `ArgumentException`.  
  
### I. Calling STBuffer() on a MultiPoint instance  
 The following example returns two `MultiPolygon` instances and one `Polygon` instance:  
  
 `DECLARE @g geometry = 'MULTIPOINT((1 1),(1 4))';`  
  
 `SELECT @g.STBuffer(1).ToString();`  
  
 `SELECT @g.STBuffer(1.5).ToString();`  
  
 `SELECT @g.STBuffer(1.6).ToString();`  
  
 The first two **SELECT** statements return a `MultiPolygon` instance because the parameter *distance* is less than or equal to 1/2 the distance between the two points (1 1) and (1 4). The third **SELECT** statement returns a `Polygon` instance because the buffered instances of the two points (1 1) and (1 4) overlap.  
  
## See Also  
 [BufferWithTolerance &#40;geometry Data Type&#41;](../../../t-sql/data-types/bufferwithtolerance-geometry-data-type.md)   
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  