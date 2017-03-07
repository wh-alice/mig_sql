---
title: "dbo.sysjobschedules (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sysjobschedules"
  - "dbo.sysjobschedules"
  - "dbo.sysjobschedules_TSQL"
  - "sysjobschedules_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysjobschedules system table"
ms.assetid: ccdafec7-2a9b-4356-bffb-1caa3a12db59
caps.latest.revision: 32
ms.author: "jhubbard"
manager: "jhubbard"
---
# dbo.sysjobschedules (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains schedule information for jobs to be executed by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent. This table is stored in the **msdb** database.  
  
> **NOTE:** The **sysjobschedules** table refreshes every 20 minutes, which may affect the values returned by the **sp_help_jobschedule** stored procedure.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**schedule_id**|**int**|ID of the schedule.|  
|**job_id**|**uniqueidentifier**|ID of the job.|  
|**next_run_date**|**int**|Next date on which the job is scheduled to run. The date is formatted YYYYMMDD.|  
|**next_run_time**|**int**|Time at which the job is scheduled to run. The time is formatted HHMMSS, and uses a 24-hour clock.|  
  
## See Also  
 [dbo.sysschedules &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/dbo.sysschedules-transact-sql.md)  
  
  