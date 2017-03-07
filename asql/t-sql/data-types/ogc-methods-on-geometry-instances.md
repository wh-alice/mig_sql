---
title: "OGC Methods on Geometry Instances | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "OGC Methods on Geometry Instances [SQL Server]"
ms.assetid: c0c0f441-bf33-410c-9df0-544e3d05b944
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# OGC Methods on Geometry Instances
[!INCLUDE[tsql-appliesto-ss2012-all_md](../../relational-databases/indexes/includes/tsql-appliesto-ss2012-all-md.md)]

  [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] supports the Open Geospatial Consortium (OGC) methods on geometry instances.  
  
 For more information on OGC specifications, see the following:  
  
-   [OGC Specifications, Simple Feature Access Part 1 - Common Architecture](http://go.microsoft.com/fwlink/?LinkId=93627)  
  
-   [OGC Specifications, Simple Feature Access Part 2 – SQL Options](http://go.microsoft.com/fwlink/?LinkId=93628)  
  
## In This Section  
  
-   [STArea](../../t-sql/data-types/starea-geometry-data-type.md)  
  
-   [STAsBinary](../../t-sql/data-types/stasbinary-geometry-data-type.md)  
  
-   [STAsText](../../t-sql/data-types/stastext-geometry-data-type.md)  
  
-   [STBoundary](../../t-sql/data-types/stboundary-geometry-data-type.md)  
  
-   [STBuffer](../../t-sql/data-types/stbuffer-geometry-data-type.md)  
  
-   [STCentroid](../../t-sql/data-types/stcentroid-geometry-data-type.md)  
  
-   [STContains](../../t-sql/data-types/stcontains-geometry-data-type.md)  
  
-   [STConvexHull](../../t-sql/data-types/stconvexhull-geometry-data-type.md)  
  
-   [STCrosses](../../t-sql/data-types/stcrosses-geometry-data-type.md)  
  
-   [STCurveN &#40;geometry Data Type&#41;](../../t-sql/data-types/stcurven-geometry-data-type.md)  
  
-   [STCurveToLine &#40;geometry Data Type&#41;](../../t-sql/data-types/stcurvetoline-geometry-data-type.md)  
  
-   [STDifference](../../t-sql/data-types/stdifference-geometry-data-type.md)  
  
-   [STDimension](../../t-sql/data-types/stdimension-geometry-data-type.md)  
  
-   [STDisjoint](../../t-sql/data-types/stdisjoint-geometry-data-type.md)  
  
-   [STDistance](../../t-sql/data-types/stdistance-geometry-data-type.md)  
  
-   [STEndpoint](../../t-sql/data-types/stendpoint-geometry-data-type.md)  
  
-   [STEnvelope](../../t-sql/data-types/stenvelope-geometry-data-type.md)  
  
-   [STEquals](../../t-sql/data-types/stequals-geometry-data-type.md)  
  
-   [STExteriorRing](../../t-sql/data-types/stexteriorring-geometry-data-type.md)  
  
-   [STGeometryN](../../t-sql/data-types/stgeometryn-geometry-data-type.md)  
  
-   [STGeometryType](../../t-sql/data-types/stgeometrytype-geometry-data-type.md)  
  
-   [STInteriorRingN](../../t-sql/data-types/stinteriorringn-geometry-data-type.md)  
  
-   [STIntersection](../../t-sql/data-types/stintersection-geometry-data-type.md)  
  
-   [STIntersects](../../t-sql/data-types/stintersects-geometry-data-type.md)  
  
-   [STIsClosed](../../t-sql/data-types/stisclosed-geometry-data-type.md)  
  
-   [STIsEmpty](../../t-sql/data-types/stisempty-geometry-data-type.md)  
  
-   [STIsRing](../../t-sql/data-types/stisring-geometry-data-type.md)  
  
-   [STIsSimple](../../t-sql/data-types/stissimple-geometry-data-type.md)  
  
-   [STIsValid](../../t-sql/data-types/stisvalid-geometry-data-type.md)  
  
-   [STLength](../../t-sql/data-types/stlength-geometry-data-type.md)  
  
-   [STNumCurves &#40;geometry Data Type&#41;](../../t-sql/data-types/stnumcurves-geometry-data-type.md)  
  
-   [STNumGeometries](../../t-sql/data-types/stnumgeometries-geometry-data-type.md)  
  
-   [STNumInteriorRing](../../t-sql/data-types/stnuminteriorring-geometry-data-type.md)  
  
-   [STNumPoints](../../t-sql/data-types/stnumpoints-geometry-data-type.md)  
  
-   [STOverlaps](../../t-sql/data-types/stoverlaps-geometry-data-type.md)  
  
-   [STPointN](../../t-sql/data-types/stpointn-geometry-data-type.md)  
  
-   [STPointOnSurface](../../t-sql/data-types/stpointonsurface-geometry-data-type.md)  
  
-   [STRelate](../../t-sql/data-types/strelate-geometry-data-type.md)  
  
-   [STSrid](../../t-sql/data-types/stsrid-geometry-data-type.md)  
  
-   [STStartPoint](../../t-sql/data-types/ststartpoint-geometry-data-type.md)  
  
-   [STSymDifference](../../t-sql/data-types/stsymdifference-geometry-data-type.md)  
  
-   [STTouches](../../t-sql/data-types/sttouches-geometry-data-type.md)  
  
-   [STUnion](../../t-sql/data-types/stunion-geometry-data-type.md)  
  
-   [STWithin](../../t-sql/data-types/stwithin-geometry-data-type.md)  
  
-   [STX](../../t-sql/data-types/stx-geometry-data-type.md)  
  
-   [STY](../../t-sql/data-types/sty-geometry-data-type.md)  
  
## See Also  
 [Extended Methods on Geometry Instances](../../t-sql/data-types/extended-methods-on-geometry-instances.md)   
 [OGC Static Geometry Methods](../../t-sql/data-types/ogc-static-geometry-methods.md)   
 [Extended Static Geometry Methods](../../t-sql/data-types/extended-static-geometry-methods.md)  
  
  