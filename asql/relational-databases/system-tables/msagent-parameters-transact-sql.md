---
title: "MSagent_parameters (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "MSagent_parameters_TSQL"
  - "MSagent_parameters"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "MSagent_parameters system table"
ms.assetid: be30abc9-c00d-446f-b1b4-1269772f37e6
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSagent_parameters (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The **MSagent_parameters** table contains parameters associated with an agent profile. The parameter names are the same as those supported by the agent. This table is stored in the **msdb** database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**profile_id**|**int**|The profile ID from the **MSagent_profiles** table.|  
|**parameter_name**|**sysname**|The name of the parameter.|  
|**value**|**nvarchar(255)**|The value of the parameter.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../relational-databases/system-views/replication-views-transact-sql.md)  
  
  