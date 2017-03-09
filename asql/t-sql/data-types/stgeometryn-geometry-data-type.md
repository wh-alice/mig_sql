---
title: "STGeometryN (geometry Data Type) | Microsoft Docs"
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
  - "STGeometryN_TSQL"
  - "STGeometryN (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STGeometryN (geometry Data Type)"
ms.assetid: 348c7047-3442-4590-8879-fe841e79058c
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# STGeometryN (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns a specified geometry in a **geometry collection**.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.STGeometryN ( expression )  
```  
  
## Arguments  
 *expression*  
 Is an **int** expression between 1 and the number of **geometry** instances in the **geometrycollection**.  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geometry**  
  
 CLR return type: **SqlGeometry**  
  
## Remarks  
 This method returns **null** if the parameter is larger than the result of `STNumGeometries()` and will throw an **ArgumentOutOfRangeException** if the *expression* parameter is less than 1.  
  
## Examples  
 The following example creates a `MultiPoint``geometry collection` and uses `STGeometryN()` to find the second `geometry` instance of the collection.  
  
```  
DECLARE @g geometry;  
SET @g = geometry::STGeomFromText('MULTIPOINT(0 0, 13.5 2, 7 19)', 0);  
SELECT @g.STGeometryN(2).ToString();  
```  
  
## See Also  
 [OGC Methods on Geometry Instances](../../t-sql/data-types/ogc-methods-on-geometry-instances.md)  
  
  