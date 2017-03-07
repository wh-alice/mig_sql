---
title: "sys.sp_cdc_drop_job (Transact-SQL) | Microsoft Docs"
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
  - "sys.sp_cdc_drop_job_TSQL"
  - "sp_cdc_drop_job_TSQL"
  - "sp_cdc_drop_job"
  - "sys.sp_cdc_drop_job"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_cdc_drop_job"
ms.assetid: e8265846-8051-4848-b28e-fac27c10bdeb
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sp_cdc_drop_job (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes a change data capture cleanup or capture job for the current database from msdb.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sys.sp_cdc_drop_job [ [ @job_type = ] 'job_type' ]  
```  
  
## Arguments  
 [ @job_type**=** ] '*job_type*'  
 Type of job to remove. *job_type* is **nvarchar(20)** and cannot be NULL. Valid inputs are 'capture' and 'cleanup'.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 Nones  
  
## Remarks  
 sp_cdc_drop_job is called internally by [sys.sp_cdc_disable_db](../../relational-databases/system-stored-procedures/sys.sp-cdc-disable-db-transact-sql.md).  
  
## Permissions  
 Requires membership in the db_owner fixed database role.  
  
## Examples  
 The following example removes the cleanup job for the `AdventureWorks2012` database.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sys.sp_cdc_drop_job @job_type = N'cleanup';  
```  
  
## See Also  
 [dbo.cdc_jobs &#40;Transact-SQL&#41;](../../relational-databases/system-tables/dbo.cdc-jobs-transact-sql.md)   
 [sys.sp_cdc_disable_db &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-disable-db-transact-sql.md)   
 [sys.sp_cdc_add_job &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-add-job-transact-sql.md)  
  
  