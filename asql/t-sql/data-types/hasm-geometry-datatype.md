---
title: "HasM (geometry DataType) | Microsoft Docs"
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
  - "HasM geometry"
ms.assetid: 15540837-c4bf-4d18-b380-13ae31f3226f
caps.latest.revision: 6
ms.author: "rickbyh"
manager: "jhubbard"
---
# HasM (geometry DataType)
[!INCLUDE[tsql-appliesto-ss2012-asdb-xxxx-xxx_md](../../relational-databases/databases/includes/tsql-appliesto-ss2012-asdb-xxxx-xxx-md.md)]

  Returns 1 (true) if a spatial object contains at least one M value; otherwise, it returns 0 (false).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [current version](http://msdn.microsoft.com/library/bb500435.aspx)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.HasM()  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] return type: **bit**  
  
 CLR return type: **Boolean**  
  
## Remarks  
  
## Examples  
  
```tsql  
DECLARE @p GEOMETRY = 'Point(1 1 1 1)'  
SELECT @p.HasM   
--Returns: 1 (true)  
```  
  
## See Also  
 [Extended Methods on Geometry Instances](../../t-sql/data-types/extended-methods-on-geometry-instances.md)   
 [M &#40;geometry Data Type&#41;](../../t-sql/data-types/m-geometry-data-type.md)  
  
  