---
title: "AsGml (geography Data Type) | Microsoft Docs"
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
  - "AsGml_(geography_Data_Type)_TSQL"
  - "AsGml"
  - "AsGml_TSQL"
  - "AsGml (geography Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "AsGml method"
ms.assetid: 67795c64-d8d3-48dc-93ef-3c8a9274deb6
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
#  AsGml - geography Data Type
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the Geography Markup Language (GML) representation of a **geography** instance.  
  
 For more information on Geography Markup Language, see the Open Geospatial Consortium Specification: [OGC Specifications, Geography Markup Language.](http://go.microsoft.com/fwlink/?LinkId=93629)  
  
## Syntax  
  
```  
  
.AsGml ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] return type: **xml**  
  
 CLR return type: **SqlXml**  
  
## Remarks  
  
## Examples  
 The following example creates a `LineString` instance and uses `AsGML()` to return the GML description of the instance.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);  
SELECT @g.AsGml();  
```  
  
 This method returns the description as a `LineString` instance.  
  
```  
<LineString xmlns="http://www.opengis.net/gml"><posList>47.656 -122.36 47.656 -122.343</posList></LineString>  
```  
  
## See Also  
 [Extended Methods on Geography Instances](../../../t-sql/data-types/extended-methods-on-geography-instances.md)  
  
  