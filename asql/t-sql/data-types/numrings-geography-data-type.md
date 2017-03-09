---
title: "NumRings (geography Data Type) | Microsoft Docs"
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
  - "NumRings_TSQL"
  - "NumRings"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "NumRings method"
ms.assetid: 0e4e4fa2-b608-4cc4-98ba-0845ddb4214c
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# NumRings (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the total number of rings in a **Polygon** instance. In the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] **geography** type, external and internal rings are not distinguished, as any ring can be taken to be the external ring.  
  
## Syntax  
  
```  
  
.NumRings ()  
```  
  
## Return Type  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **int**  
  
 CLR return type: **SqlInt32**  
  
## Remarks  
 This method will return NULL if this is not a **Polygon** instance and will return 0 if the instance is empty. This method is precise.  
  
## Examples  
 This example creates a `Polygon` instance with two rings and confirms that it has two rings.  
  
```  
DECLARE @g geography;  
SET @g = geography::STGeomFromText('POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653), (-122.357 47.654, -122.357 47.657, -122.349 47.657, -122.349 47.650, -122.357 47.654))', 4326);  
SELECT @g.NumRings();  
```  
  
## See Also  
 [Extended Methods on Geography Instances](../../t-sql/data-types/extended-methods-on-geography-instances.md)  
  
  