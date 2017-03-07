---
title: "STEnvelope (geometry Data Type) | Microsoft Docs"
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
  - "STEnvelope_TSQL"
  - "STEnvelope (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STEnvelope (geometry Data Type)"
ms.assetid: 781d22e9-38df-4c23-836f-6dd0bdef49c5
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# STEnvelope (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the minimum axis-aligned bounding rectangle of the instance.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)] (Initial release through [current release](http://go.microsoft.com/fwlink/p/?LinkId=299659)).|  
  
## Syntax  
  
```  
  
STEnvelope ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Examples  
 The following example uses `STGeomFromText()` to create a `LineString` instance from (0,0) to (2,3), and uses `STEnvelope()` to return the bounding box of the `LineString`.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('LINESTRING(0 0, 2 3)', 0);  
SELECT @g.STEnvelope().ToString();  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  