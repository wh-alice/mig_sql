---
title: "STCurveN (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STCurveN method (geometry)"
ms.assetid: 64adf1a1-3a41-41fb-b7d1-44390c3e4ea9
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# STCurveN (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns the curve specified from a **geometry** instance that is a **LineString**, **CircularString**, **CompoundCurve**, or **MultiLineString**.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../../a9notintoc/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STCurveN ( curve_index )  
```  
  
## Arguments  
 *curve_index*  
 Is an **int** expression between 1 and the number of curves in the **geometry** instance.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Exceptions  
 If *curve_index* < 1 then an `ArgumentOutOfRangeException` is thrown.  
  
## Remarks  
 **NULL** is returned when any of the following occurs:  
  
-   the **geometry** instance is declared, but not instantiated  
  
-   the **geometry** instance is empty  
  
-   *curve_index* exceeds the number of curves in the **geometry** instance  
  
-   the **geometry** instance is a **Point**, **MultiPoint**, **Polygon**, **CurvePolygon**, or **MultiPolygon**  
  
## Examples  
  
### A. Using STCurveN() on a CircularString instance  
 The following example returns the second curve in a `CircularString` instance:  
  
 `DECLARE @g geometry = 'CIRCULARSTRING(0 0, 1 2.1082, 3 6.3246, 0 7, -3 6.3246, -1 2.1082, 0 0)';`  
  
 `SELECT @g.STCurveN(2).ToString();`  
  
 The example earlier in this topic returns:  
  
 `CIRCULARSTRING (3 6.3246, 0 7, -3 6.3246)`  
  
### B. Using STCurveN() on a CompoundCurve instance with one CircularString instance  
 The following example returns the second curve in a `CompoundCurve` instance:  
  
 `DECLARE @g geometry = 'COMPOUNDCURVE(CIRCULARSTRING(0 0, 1 2.1082, 3 6.3246, 0 7, -3 6.3246, -1 2.1082, 0 0))';`  
  
 `SELECT @g.STCurveN(2).ToString();`  
  
 The example earlier in this topic returns:  
  
 `CIRCULARSTRING (3 6.3246, 0 7, -3 6.3246)`  
  
### C. Using STCurveN() on a CompoundCurve instance with three CircularString instances  
 The following example uses a `CompoundCurve` instance that combines three separate `CircularString` instances into the same curve sequence as the previous example:  
  
 `DECLARE @g geometry = 'COMPOUNDCURVE (CIRCULARSTRING (0 0, 1 2.1082, 3 6.3246), CIRCULARSTRING(3 6.3246, 0 7, -3 6.3246), CIRCULARSTRING(-3 6.3246, -1 2.1082, 0 0))';`  
  
 `SELECT @g.STCurveN(2).ToString();`  
  
 The example earlier in this topic returns:  
  
 `CIRCULARSTRING (3 6.3246, 0 7, -3 6.3246)`  
  
 Notice that the results are the same for the previous three examples. Whichever WKT (Well-known Text) format is used to enter the same curve sequence, the results returned by `STCurveN()` are the same when a `CompoundCurve` instance is used.  
  
### D. Validating the parameter before calling STCurveN()  
 The following example shows how to make sure `@n` is valid before you call the `STCurveN()`method:  
  
 `DECLARE @g geometry;`  
  
 `DECLARE @n int;`  
  
 `SET @n = 3;`  
  
 `SET @g = geometry::Parse('CIRCULARSTRING(0 0, 1 2.1082, 3 6.3246, 0 7, -3 6.3246, -1 2.1082, 0 0)');`  
  
 `IF @n >= 1 AND @n <= @g.STNumCurves()`  
  
 `BEGIN`  
  
 `SELECT @g.STCurveN(@n).ToString();`  
  
 `END`  
  
## See Also  
 [STNumCurves &#40;geometry Data Type&#41;](../../../t-sql/data-types/stnumcurves-geometry-data-type.md)   
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  