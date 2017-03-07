---
title: "AsBinaryZM (geography Data Type) | Microsoft Docs"
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
  - "AsBinaryZM"
  - "AsBinaryZM_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "AsBinaryZM, geography"
  - "AsBinaryZM"
ms.assetid: 37246adb-814d-4113-9983-4d336de8182c
caps.latest.revision: 7
ms.author: "rickbyh"
manager: "jhubbard"
---
# AsBinaryZM (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns the Open Geospatial Consortium (OGC) Well-Known Binary (WKB) representation of a **geometry** instance augmented with any **Z** (elevation) and **M** (measure) values carried by the instance.  
  
## Syntax  
  
```  
  
.AsBinaryZM()  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **varbinary(max)**  
  
 CLR return type: **SqlBytes**  
  
## Remarks  
  
## Examples  
  
```tsql  
DECLARE @g1 GEOGRAPHY = 'Point(1 1 2 3)';  
  
SELECT @g1.STAsBinary();  
-- Returns: 0x0101000000000000000000F03F000000000000F03F  
  
SELECT @g1.AsBinaryZM();  
--Returns: 0x01B90B0000000000000000F03F000000000000F03F00000000000000400000000000000840  
```  
  
## See Also  
 [Extended Methods on Geography Instances](../../t-sql/data-types/extended-methods-on-geography-instances.md)   
 [M &#40;geography Data Type&#41;](../../t-sql/data-types/m-geography-data-type.md)   
 [Z &#40;geography Data Type&#41;](../../t-sql/data-types/z-geography-data-type.md)  
  
  