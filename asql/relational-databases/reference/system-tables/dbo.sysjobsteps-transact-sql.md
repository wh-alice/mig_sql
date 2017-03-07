---
title: "dbo.sysjobsteps (Transact-SQL) | Microsoft Docs"
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
  - "dbo.sysjobsteps"
  - "dbo.sysjobsteps_TSQL"
  - "sysjobsteps"
  - "sysjobsteps_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysjobsteps system table"
ms.assetid: 978b8205-535b-461c-91f3-af9b08eca467
caps.latest.revision: 28
ms.author: "jhubbard"
manager: "jhubbard"
---
# dbo.sysjobsteps (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains the information for each step in a job to be executed by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent. This table is stored in the **msdb** database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**job_id**|**uniqueidentifier**|ID of the job.|  
|**step_id**|**int**|ID of the step in the job.|  
|**step_name**|**sysname**|Name of the job step.|  
|**subsystem**|**nvarchar(40)**|Name of the subsystem used by [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent to execute the job step.|  
|**command**|**nvarchar(max)**|Command to be executed by **subsystem**.|  
|**flags**|**int**|Reserved.|  
|**additional_parameters**|**ntext**|Reserved.|  
|**cmdexec_success_code**|**int**|Error-level value returned by **CmdExec** subsystem steps to indicate success.|  
|**on_success_action**|**tinyint**|Action to be performed when a step is executed successfully.|  
|**on_success_step_id**|**int**|ID of the next step to execute when a step is executed successfully.|  
|**on_fail_action**|**tinyint**|Action to be performed when a step is not executed successfully.|  
|**on_fail_step_id**|**int**|ID of the next step to execute when a step is not executed successfully.|  
|**server**|**sysname**|Reserved.|  
|**database_name**|**sysname**|Name of the database in which **command** is executed if **subsystem** is TSQL.|  
|**database_user_name**|**sysname**|Name of the database user whose account will be used when executing the step.|  
|**retry_attempts**|**int**|Number of retry attempts made if the step fails.|  
|**retry_interval**|**int**|Amount of time to wait between retry attempts.|  
|**os_run_priority**|**int**|Reserved.|  
|**output_file_name**|**nvarchar(200)**|Name of the file in which the step's output is saved when **subsystem** is TSQL, PowerShell, or **CmdExec***.*|  
|**last_run_outcome**|**int**|Outcome of the previous execution of the job step.<br /><br /> **0** = Failed<br /><br /> **1** = Succeeded<br /><br /> **2** = Retry<br /><br /> **3** = Canceled<br /><br /> **5** = Unknown|  
|**last_run_duration**|**int**|Duration (hhmmss) of the step the last time it ran.|  
|**last_run_retries**|**int**|Number of retry attempts in the last execution of the job step.|  
|**last_run_date**|**int**|Date (yyyymmdd) the step last started execution.|  
|**last_run_time**|**int**|Time (hhmmss) the step last started execution.|  
|**proxy_id**|**int**|Proxy for the job step.|  
|**step_uid**|**uniqueidentifier**|Identifier for the job step.|  
  
## See Also  
 [SQL Server Agent Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/sql-server-agent-tables-transact-sql.md)  
  
  