---
title: "sp_dropdynamicsnapshot_job (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "sp_dropdynamicsnapshot_job_TSQL"
  - "sp_dropdynamicsnapshot_job"
helpviewer_keywords: 
  - "sp_dropdynamicsnapshot_job"
ms.assetid: 128e428a-01b3-4062-8c6e-d22d5fa268a9
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_dropdynamicsnapshot_job (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes a filtered data snapshot job for a publication with parameterized row filters. This stored procedure is executed at the Publisher on the publication database. When the job is deleted, all of the related data is deleted from the [MSdynamicsnapshotjobs](../../relational-databases/system-tables/msdynamicsnapshotjobs-transact-sql.md) system table.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_dropdynamicsnapshot_job [ @publication = ] 'publication'   
    [ , [ @dynamic_snapshot_jobname = ] 'dynamic_snapshot_jobname' ]   
    [ , [ @dynamic_snapshot_jobid = ] 'dynamic_snapshot_jobid' ]   
    [ , [ @ignore_distributor =] ignore_distributor ]  
```  
  
## Arguments  
 [ **@publication=**] **'***publication***'**  
 Is the name of the publication from which the filtered data snapshot job is being removed. *publication* is **sysname**, with no default.  
  
 [ **@dynamic_snapshot_jobname**= ] **'***dynamic_snapshot_jobname***'**  
 Is the name of the filtered data snapshot job being removed. *dynamic_snapshot_jobname*is sysname, and if it is not supplied defaults to whatever job name is associated with *dynamic_snapshot_jobid*.  
  
 [ **@dynamic_snapshot_jobid**= ] **'***dynamic_snapshot_jobid***'**  
 Is an identifier for the filtered data snapshot job being removed. *dynamic_snapshot_jobid*is **uniqueidentifier**, with default of NULL.  
  
> [!IMPORTANT]  
>  Only *dynamic_snapshot_jobid*or *dynamic_snapshot_jobname* can be specified. If values are not supplied for either *dynamic_snapshot_jobid*or *dynamic_snapshot_jobname*, all dynamic snapshot jobs for the publication are removed.  
  
 [ **@ignore_distributor =**] *ignore_distributor*  
 *ignore_distributor* is **bit**, with a default of **0**. This parameter can be used to drop a dynamic snapshot job without doing cleanup tasks at the Distributor.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_dropdynamicsnapshot** is used in merge replication.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role or **db_owner** fixed database role can execute **sp_dropdynamicsnapshot**.  
  
## See Also  
 [sp_adddynamicsnapshot_job &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-adddynamicsnapshot-job-transact-sql.md)  
  
  