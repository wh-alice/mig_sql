---
title: "sp_delete_jobserver (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_delete_jobserver"
  - "sp_delete_jobserver_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_delete_jobserver"
ms.assetid: 6d63ed32-68cf-4d8f-aa40-05a3826e05b8
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_delete_jobserver (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes the specified target server.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_delete_jobserver { [ @job_id = ] job_id | [ @job_name = ] 'job_name' } ,   
     [ @server_name = ] 'server'  
```  
  
## Arguments  
 [ **@job_id=** ] *job_id*  
 The identification number of the job from which the specified target server will be removed. *job_id* is **uniqueidentifier**, with a default of NULL.  
  
 [ **@job_name=** ] **'***job_name***'**  
 The name of the job from which the specified target server will be removed. *job_name* is **sysname**, with a default of NULL.  
  
> [!NOTE]  
>  Either *job_id* or *job_name* must be specified; both cannot be specified.  
  
 [ **@server_name=** ] **'***server***'**  
 The name of the target server to remove from the specified job. *server* is **nvarchar(30)**, with no default. *server* can be **(LOCAL)**or the name of a remote target server.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Permissions  
 To run this stored procedure, users must be members of the **sysadmin** fixed server role.  
  
## Examples  
 The following example removes the server `SEATTLE2` from processing the `Weekly Sales Backups`job.  
  
> [!NOTE]  
>  This example assumes that the `Weekly Sales Backups` job was created earlier.  
  
```  
USE msdb ;  
GO  
  
EXEC sp_delete_jobserver  
    @job_name = N'Weekly Sales Backups',  
    @server_name = N'SEATTLE2' ;  
GO  
```  
  
## See Also  
 [sp_add_jobserver &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-jobserver-transact-sql.md)   
 [sp_help_jobserver &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-help-jobserver-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  