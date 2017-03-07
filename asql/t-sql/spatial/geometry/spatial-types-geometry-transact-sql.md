---
title: "geometry (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "geometry"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "spatial data types [SQL Server]"
  - "geometry data type [SQL Server], Transact-SQL"
ms.assetid: 3fefdf7b-f931-404c-821c-82c0375eaf51
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# Spatial Types - geometry (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  The planar spatial data type, **geometry**, is implemented as a common language runtime (CLR) data type in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. This type represents data in a Euclidean (flat) coordinate system.  
  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] supports a set of methods for the **geometry** spatial data type. These methods include methods on **geometry** that are defined by the Open Geospatial Consortium (OGC) standard and a set of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] extensions to that standard.  
 
 The error tolerance for the geometry methods can be as large as 1.0e-7 * extents. The extents refer to the approximate maximal distance between points of the **geometry**object.
  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Registering the geometry Type  
 The **geometry** type is predefined and available in each database. You can create table columns of type **geometry** and operate on **geometry** data in the same manner as you would use other CLR types. Can be used in persisted and non-persisted computed columns.  
  
## Examples  
  
### A. Showing how to add and query geometry data  
 The following two examples show how to add and query geometry data. The first example creates a table with an identity column and a `geometry` column, `GeomCol1`. A third column renders the `geometry` column into its Open Geospatial Consortium (OGC) Well-Known Text (WKT) representation, and uses the `STAsText()` method. Two rows are then inserted: one row contains a `LineString` instance of `geometry`, and one row contains a `Polygon` instance.  
  
```  
IF OBJECT_ID ( 'dbo.SpatialTable', 'U' ) IS NOT NULL   
    DROP TABLE dbo.SpatialTable;  
GO  
  
CREATE TABLE SpatialTable   
    ( id int IDENTITY (1,1),  
    GeomCol1 geometry,   
    GeomCol2 AS GeomCol1.STAsText() );  
GO  
  
INSERT INTO SpatialTable (GeomCol1)  
VALUES (geometry::STGeomFromText('LINESTRING (100 100, 20 180, 180 180)', 0));  
  
INSERT INTO SpatialTable (GeomCol1)  
VALUES (geometry::STGeomFromText('POLYGON ((0 0, 150 0, 150 150, 0 150, 0 0))', 0));  
GO  
```  
  
### B. Returning the intersection of two geometry instances  
 The second example uses the `STIntersection()` method to return the points where the two previously inserted `geometry` instances intersect.  
  
```  
DECLARE @geom1 geometry;  
DECLARE @geom2 geometry;  
DECLARE @result geometry;  
  
SELECT @geom1 = GeomCol1 FROM SpatialTable WHERE id = 1;  
SELECT @geom2 = GeomCol1 FROM SpatialTable WHERE id = 2;  
SELECT @result = @geom1.STIntersection(@geom2);  
SELECT @result.STAsText();  
```  
  
### C. Using geometry in a computed column  
 The following example creates a table with a persisted computed column using a **geometry** type.  
  
```  
IF OBJECT_ID ( 'dbo.SpatialTable', 'U' ) IS NOT NULL   
    DROP TABLE dbo.SpatialTable;  
GO  
  
CREATE TABLE SpatialTable  
(  
    locationId int IDENTITY(1,1),  
    location geometry,  
    deliveryArea as location.STBuffer(10) persisted  
)  
```  
  
## See Also  
  [Spatial Data &#40;SQL Server&#41;](../../../relational-databases/spatial/spatial-data-sql-server.md)  
  
  