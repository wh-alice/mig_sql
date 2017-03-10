---
title: "Long (geography Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-02"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "Long_TSQL"
  - "Long"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "Long method"
ms.assetid: bedbeced-70b8-4569-84f3-f86bfb04ce50
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# Long (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  The longitude property of the **geography** instance.  
  
## Syntax  
  
```  
  
.Long  
```  
  
## Return Value  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] type: **float**  
  
 CLR type: **SqlDouble**  
  
## Remarks  
 In the OpenGIS model, Long is defined only on **geography** instances composed of a single point. This property will return NULL if **geography** instances contain more than a single point. This property is precise and read-only.  
  
## Examples  
 This example creates a **Point** instance and retrieves the longitude of the point.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('POINT(-122.34900 47.65100)', 4326);  
SELECT @g.Long;  
```  
  
## See Also  
 [Extended Methods on Geography Instances](../../../t-sql/spatial/geography/extended-methods-on-geography-instances.md)  
  
  