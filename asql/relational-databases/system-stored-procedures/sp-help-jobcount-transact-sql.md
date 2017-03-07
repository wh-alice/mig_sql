---
title: "sp_help_jobcount (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_jobcount"
  - "sp_help_jobcount_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_jobcount"
ms.assetid: ae8ef851-646c-4889-bc11-c8ec78762572
caps.latest.revision: 25
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_help_jobcount (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Provides the number of jobs that a schedule is attached to.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_help_jobcount   
     [ @schedule_name = ] 'schedule_name' ,  
     [ @schedule_id = ] schedule_id   
```  
  
## Arguments  
 [ **@schedule_id=** ] *schedule_id*  
 The identifier of the schedule to list. *schedule_id* is **int**, with no default. Either *schedule_id* or *schedule_name* may be specified.  
  
 [ **@schedule_name=** ]  **'***schedule_name***'**  
 The name of the schedule to list. *schedule_name* is **sysname**, with no default. Either *schedule_id* or *schedule_name* may be specified.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 Returns the following result set:  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**JobCount**|**int**|Number of jobs for the specified schedule.|  
  
## Remarks  
 This procedure lists the number of jobs attached to the specified schedule.  
  
## Permissions  
 By default, members of the **sysadmin** fixed server role can execute this stored procedure. Other users must be granted one of the following [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent fixed database roles in the **msdb** database:  
  
-   **SQLAgentUserRole**  
  
-   **SQLAgentReaderRole**  
  
-   **SQLAgentOperatorRole**  
  
 For details about the permissions of these roles, see [SQL Server Agent Fixed Database Roles](../Topic/SQL%20Server%20Agent%20Fixed%20Database%20Roles.md).  
  
 Only members of **sysadmin** can view counts for jobs that are owned by others.  
  
## Examples  
 The following example lists the number of jobs attached to the `NightlyJobs` schedule.  
  
```  
USE msdb ;  
GO  
  
EXEC sp_help_jobcount  
    @schedule_name = N'NightlyJobs' ;  
GO  
```  
  
## See Also  
 [SQL Server Agent Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sql-server-agent-stored-procedures-transact-sql.md)   
 [sp_add_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-schedule-transact-sql.md)   
 [sp_attach_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-attach-schedule-transact-sql.md)   
 [sp_delete_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-delete-schedule-transact-sql.md)   
 [sp_detach_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-detach-schedule-transact-sql.md)  
  
  