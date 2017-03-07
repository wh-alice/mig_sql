---
title: "STEndpoint (geography Data Type) | Microsoft Docs"
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
  - "STEndpoint (geography Data Type)"
  - "STEndpoint_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "STEndpoint method"
ms.assetid: 8974cd07-8ec4-4126-8fc2-fdcf322ccedd
caps.latest.revision: 15
ms.author: "rickbyh"
manager: "jhubbard"
---
# STEndpoint (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the end point of a **geography** instance.  
  
## Syntax  
  
```  
  
.STEndPoint ( )  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **geography**  
  
 CLR return type: **SqlGeography**  
  
 Open Geospatial Consortium (OGC) type: **Point**  
  
## Remarks  
 STEndPoint() is the equivalent of [STPointN](../../../t-sql/data-types/stpointn-geography-data-type.md)`(x.STNumPoints``())`.  
  
 This method returns null if called on an empty **geography** instance.  
  
## Examples  
 The following example creates a `LineString` instance with `STGeomFromText()` and uses `STEndpoint()` to retrieve the end point of the `LineString`.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);  
SELECT @g.STEndPoint().ToString();  
```  
  
## See Also  
 [OGC Methods on Geography Instances](../../../t-sql/data-types/ogc-methods-on-geography-instances.md)  
  
  