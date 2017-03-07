---
title: "Change Data Capture Stored Procedures (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "system stored procedures [SQL Server], change data capture"
  - "change data capture [SQL Server], stored procedures"
ms.assetid: 7da7068d-6388-465a-b708-a2f27ded1efe
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# Change Data Capture Stored Procedures (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Change data capture makes available in a convenient relational format the historical record of Data Manipulation Language (DML) activity that occurred on enabled tables. The following stored procedures are used to configure change data capture, manage the change data capture Agent jobs, and supply current meta data to change data consumers.  
  
|||  
|-|-|  
|[sys.sp_cdc_add_job &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-add-job-transact-sql.md)|[sys.sp_cdc_generate_wrapper_function &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-generate-wrapper-function-transact-sql.md)|  
|[sys.sp_cdc_change_job &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-change-job-transact-sql.md)|[sys.sp_cdc_get_captured_columns &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-get-captured-columns-transact-sql.md)|  
|[sys.sp_cdc_cleanup_change_table &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-cleanup-change-table-transact-sql.md)|[sys.sp_cdc_get_ddl_history &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-get-ddl-history-transact-sql.md)|  
|[sys.sp_cdc_disable_db &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-disable-db-transact-sql.md)|[sys.sp_cdc_help_change_data_capture &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-help-change-data-capture-transact-sql.md)|  
|[sys.sp_cdc_disable_table &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-disable-table-transact-sql.md)|[sys.sp_cdc_help_jobs &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-help-jobs-transact-sql.md)|  
|[sys.sp_cdc_drop_job &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-drop-job-transact-sql.md)|[sys.sp_cdc_scan &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-scan-transact-sql.md)|  
|[sys.sp_cdc_enable_db &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-enable-db-transact-sql.md)|[sys.sp_cdc_start_job &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-start-job-transact-sql.md)|  
|[sys.sp_cdc_enable_table &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-enable-table-transact-sql.md)|[sys.sp_cdc_stop_job &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sys.sp-cdc-stop-job-transact-sql.md)|  
  
## See Also  
 [Change Data Capture Tables &#40;Transact-SQL&#41;](../../relational-databases/system-tables/change-data-capture-tables-transact-sql.md)  
  
  