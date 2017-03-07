---
title: "sys.sysconstraints (Transact-SQL) | Microsoft Docs"
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
  - "sysconstraints"
  - "sys.sysconstraints"
  - "sysconstraints_TSQL"
  - "sys.sysconstraints_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sysconstraints compatibility view"
  - "sysconstraints system table"
ms.assetid: f2b2e2ad-ba24-48a1-913c-8ee4e0895dc4
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysconstraints (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  Contains mappings of constraints to the objects that own the constraints within the database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**constid**|**int**|Constraint number.|  
|**id**|**int**|ID of the table that owns the constraint.|  
|**colid**|**smallint**|ID of the column on which the constraint is defined.<br /><br /> 0 = Table constraint|  
|**spare1**|**tinyint**|Reserved|  
|**status**|**int**|Pseudo-bit-mask indicating the status. Possible values include the following:<br /><br /> 1 = PRIMARY KEY constraint<br /><br /> 2 = UNIQUE KEY constraint<br /><br /> 3 = FOREIGN KEY constraint<br /><br /> 4 = CHECK constraint<br /><br /> 5 = DEFAULT constraint<br /><br /> 16 = Column-level constraint<br /><br /> 32 = Table-level constraint|  
|**actions**|**int**|Reserved|  
|**error**|**int**|Reserved|  
  
## See Also  
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  