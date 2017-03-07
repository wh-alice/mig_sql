---
title: "geometry Data Type Method Reference | Microsoft Docs"
ms.custom: ""
ms.date: "02/21/2017"
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
  - "geometry data type [SQL Server]"
ms.assetid: d88e632b-6b2f-4466-a15f-9fbef1a347a7
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
robots: noindex,nofollow
---
# geometry Data Type Method Reference
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] supports a set of methods for the **geometry** spatial data type. These methods include methods on geometry that are defined by the Open Geospatial Consortium (OGC) standard and a set of [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] extensions to that standard.  
  
 The error tolerance for the **geometry** methods can be as large as 1.0e-7 \* extents. The extents refer to the approximate maximal distance between points of the **geometry**object.  
  
## In This Section  
 [OGC Methods on Geometry Instances](../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
 [Extended Methods on Geometry Instances](../t-sql/data-types/extended-methods-on-geometry-instances.md)  
  
 [OGC Static Geometry Methods](../t-sql/data-types/ogc-static-geometry-methods.md)  
  
 [Extended Static Geometry Methods](../t-sql/data-types/extended-static-geometry-methods.md)  
  
 [Static Aggregate Geometry Methods](../t-sql/data-types/static-aggregate-geometry-methods.md)  
  
## See Also  
 [Spatial Data Types Overview](../relational-databases/spatial/spatial-data-types-overview.md)  
  
  