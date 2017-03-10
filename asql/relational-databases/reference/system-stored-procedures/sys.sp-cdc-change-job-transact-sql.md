---
title: "sys.sp_cdc_change_job (Transact-SQL) | Microsoft Docs"
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
  - "sys.sp_cdc_change_job_TSQL"
  - "sys.sp_cdc_change_job"
  - "sp_cdc_change_job_TSQL"
  - "sp_cdc_change_job"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_cdc_change_job"
ms.assetid: ea918888-0fc5-4cc1-b301-26b2a9fbb20d
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sp_cdc_change_job (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Modifies the configuration of a change data capture cleanup or capture job in the current database. To view the current configuration of a job, query the [dbo.cdc_jobs](../../../relational-databases/reference/system-tables/dbo.cdc-jobs-transact-sql.md) table, or use [sp_cdc_help_jobs](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-help-jobs-transact-sql.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.sp_cdc_change_job [ [ @job_type = ] 'job_type' ]  
    [ , [ @maxtrans = ] max_trans ]   
    [ , [ @maxscans = ] max_scans ]   
    [ , [ @continuous = ] continuous ]   
    [ , [ @pollinginterval = ] polling_interval ]   
    [ , [ @retention ] = retention ]   
    [ @threshold = ] 'delete threshold'  
```  
  
## Arguments  
 [ **@job_type=** ] **'***job_type***'**  
 Type of job to modify. *job_type* is **nvarchar(20)** with a default of 'capture'. Valid inputs are 'capture' and 'cleanup'.  
  
 [ **@maxtrans** ] **=***max_trans*  
 Maximum number of transactions to process in each scan cycle. *max_trans* is **int** with a default of NULL, which indicates no change for this parameter. If specified, the value must be a positive integer.  
  
 *max_trans* is valid only for capture jobs.  
  
 [ **@maxscans** ] **=***max_scans*  
 Maximum number of scan cycles to execute in order to extract all rows from the log. *max_scans* is **int** with a default of NULL, which indicates no change for this parameter.  
  
 *max_scan* is valid only for capture jobs.  
  
 [ **@continuous** ] **=***continuous*  
 Indicates whether the capture job is to run continuously (1), or run only once (0). *continuous* is **bit** with a default of NULL, which indicates no change for this parameter.  
  
 When *continuous* = 1, the [sp_cdc_scan](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-scan-transact-sql.md) job scans the log and processes up to (*max_trans* \* *max_scans*) transactions. It then waits the number of seconds specified in *polling_interval* before beginning the next log scan.  
  
 When *continuous* = 0, the **sp_cdc_scan** job executes up to *max_scans* scans of the log, processing up to *max_trans* transactions during each scan, and then exits.  
  
 If **@continuous** is changed from 1 to 0, **@pollinginterval** is automatically set to 0. A value specified for **@pollinginterval** other than 0 is ignored.  
  
 If **@continuous** is omitted or explicitly set to NULL and **@pollinginterval** is explicitly set to a value greater than 0, **@continuous** is automatically set to 1.  
  
 *continuous* is valid only for capture jobs.  
  
 [ **@pollinginterval** ] **=***polling_interval*  
 Number of seconds between log scan cycles. *polling_interval* is **bigint** with a default of NULL, which indicates no change for this parameter.  
  
 *polling_interval* is valid only for capture jobs when *continuous* is set to 1.  
  
 [ **@retention** ] **=***retention*  
 Number of minutes that change rows are to be retained in change tables. *retention* is **bigint** with a default of NULL, which indicates no change for this parameter. The maximum value is 52494800 (100 years). If specified, the value must be a positive integer.  
  
 *retention* is valid only for cleanup jobs.  
  
 [ **@threshold=** ] **'***delete threshold***'**  
 Maximum number of delete entries that can be deleted using a single statement on cleanup. *delete threshold* is **bigint** with a default of NULL, which indicates no change for this parameter. *delete threshold* is valid only for cleanup jobs.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 If a parameter is omitted, the associated value in the [dbo.cdc_jobs](../../../relational-databases/reference/system-tables/dbo.cdc-jobs-transact-sql.md) table is not updated. A parameter set explicitly to NULL is treated as though the parameter is omitted.  
  
 Specifying a parameter that is invalid for the job type will cause the statement to fail.  
  
 Changes to a job do not take effect until the job is stopped by using [sp_cdc_stop_job](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-stop-job-transact-sql.md) and restarted by using [sp_cdc_start_job](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-start-job-transact-sql.md).  
  
## Permissions  
 Requires membership in the **db_owner** fixed database role.  
  
## Examples  
  
### A. Changing a capture job  
 The following example updates the `@job`_`type`, `@maxscans`, and `@maxtrans` parameters of a capture job in the `AdventureWorks2012` database. The other valid parameters for a capture job, `@continuous` and `@pollinginterval`, are omitted; their values are not modified.  
  
```  
USE AdventureWorks2012;  
GO  
EXECUTE sys.sp_cdc_change_job   
    @job_type = N'capture',  
    @maxscans = 1000,  
    @maxtrans = 15;  
GO  
```  
  
### B. Changing a cleanup job  
 The following example updates a cleanup job in the `AdventureWorks2012` database. All valid parameters for this job type, except **@threshold**, are specified. The value of **@threshold** is not modified.  
  
```  
USE AdventureWorks2012;  
GO  
EXECUTE sys.sp_cdc_change_job   
    @job_type = N'cleanup',  
    @retention = 2880;  
GO  
```  
  
## See Also  
 [dbo.cdc_jobs &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/dbo.cdc-jobs-transact-sql.md)   
 [sys.sp_cdc_enable_table &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-enable-table-transact-sql.md)   
 [sys.sp_cdc_add_job &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-add-job-transact-sql.md)  
  
  