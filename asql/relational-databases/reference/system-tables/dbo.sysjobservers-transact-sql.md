---
title: "dbo.sysjobservers (Transact-SQL) | Microsoft Docs"
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
  - "sysjobservers"
  - "sysjobservers_TSQL"
  - "dbo.sysjobservers"
  - "dbo.sysjobservers_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysjobservers system table"
ms.assetid: 9abcc20f-a421-4591-affb-62674d04575e
caps.latest.revision: 26
ms.author: "jhubbard"
manager: "jhubbard"
---
# dbo.sysjobservers (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Stores the association or relationship of a particular job with one or more target servers.This table is stored in the msdb database.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|job_id|**uniqueidentifier**|Job identification number.|  
|server_id|**int**|Server identification number.|  
|last_run_outcome|**tinyint**|Outcome for the job's last run:<br /><br /> **0** = Fail<br /><br /> **1** = Succeed<br /><br /> **3** = Cancel|  
|last_outcome_ message|**nvarchar(1024)**|Associated message, if any, with the last_run_outcome column.|  
|last_run_date|**int**|Date the job was last run.|  
|last_run_time|**int**|Time the job was last run.|  
|last_run_duration|**int**|Duration that the job was run, in hours, minutes, and seconds. Computed by using the formula: (*hours*\*10000) + (*minutes*\*100) + *seconds*.|  
  
## See Also  
 [SQL Server Agent Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/sql-server-agent-tables-transact-sql.md)  
  
  