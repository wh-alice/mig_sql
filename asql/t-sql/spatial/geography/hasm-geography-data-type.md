---
title: "HasM (geography Data Type) | Microsoft Docs"
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
  - "HasM_TSQL"
  - "HasM"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "HasM geography"
ms.assetid: e752e97f-1619-437d-b962-48c188b4e94c
caps.latest.revision: 7
ms.author: "rickbyh"
manager: "jhubbard"
---
# HasM (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns 1 (true) if a spatial object contains at least one M value; otherwise, it returns 0 (false).  
  
## Syntax  
  
```  
  
.HasM()  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **Boolean**  
  
## Remarks  
  
## Examples  
  
```tsql  
DECLARE @p GEOGRAPHY = 'Point(1 1 1 1)'  
SELECT @p.HasM   
--Returns: 1 (true)  
```  
  
## See Also  
 [Extended Methods on Geography Instances](../../../t-sql/data-types/extended-methods-on-geography-instances.md)   
 [M &#40;geography Data Type&#41;](../../../t-sql/data-types/m-geography-data-type.md)  
  
  