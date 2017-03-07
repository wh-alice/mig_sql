---
title: "Database Engine Stored Procedures (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-11-02"
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
  - "Database Engine [SQL Server], stored procedures"
  - "system stored procedures [SQL Server], Database Engine"
  - "stored procedures [SQL Server], Database Engine"
ms.assetid: 2ce018e9-1a3b-4530-a87d-842456a555ad
caps.latest.revision: 42
ms.author: "rickbyh"
manager: "jhubbard"
---
# Database Engine Stored Procedures (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] supports the following system stored procedures that are used for general maintenance of an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
|||  
|-|-|  
|[sp_add_data_file_recover_suspect_db](../../../relational-databases/reference/system-stored-procedures/sp-add-data-file-recover-suspect-db-transact-sql.md)|[sp_help](../../../relational-databases/reference/system-stored-procedures/sp-help-transact-sql.md)|  
|[sp_add_log_file_recover_suspect_db](../../../relational-databases/reference/system-stored-procedures/sp-add-log-file-recover-suspect-db-transact-sql.md)|[sp_helpconstraint](../../../relational-databases/reference/system-stored-procedures/sp-helpconstraint-transact-sql.md)|  
|[sp_addextendedproc](../../../relational-databases/reference/system-stored-procedures/sp-addextendedproc-transact-sql.md)|[sp_helpdb](../../../relational-databases/reference/system-stored-procedures/sp-helpdb-transact-sql.md)|  
|[sp_addextendedproperty](../../../relational-databases/reference/system-stored-procedures/sp-addextendedproperty-transact-sql.md)|[sp_helpdevice](../../../relational-databases/reference/system-stored-procedures/sp-helpdevice-transact-sql.md)|  
|[sp_addmessage](../../../relational-databases/reference/system-stored-procedures/sp-addmessage-transact-sql.md)|[sp_helpextendedproc](../../../relational-databases/reference/system-stored-procedures/sp-helpextendedproc-transact-sql.md)|  
|[sp_addtype](../../../relational-databases/reference/system-stored-procedures/sp-addtype-transact-sql.md)|[sp_helpfile](../../../relational-databases/reference/system-stored-procedures/sp-helpfile-transact-sql.md)|  
|[sp_addumpdevice](../../../relational-databases/reference/system-stored-procedures/sp-addumpdevice-transact-sql.md)|[sp_helpfilegroup](../../../relational-databases/reference/system-stored-procedures/sp-helpfilegroup-transact-sql.md)|  
|[sp_altermessage](../../../relational-databases/reference/system-stored-procedures/sp-altermessage-transact-sql.md)|[sp_helpindex](../../../relational-databases/reference/system-stored-procedures/sp-helpindex-transact-sql.md)|  
|[sp_attach_db](../../../relational-databases/reference/system-stored-procedures/sp-attach-db-transact-sql.md)|[sp_helplanguage](../../../relational-databases/reference/system-stored-procedures/sp-helplanguage-transact-sql.md)|  
|[sp_attach_single_file_db](../../../relational-databases/reference/system-stored-procedures/sp-attach-single-file-db-transact-sql.md)|[sp_helpserver](../../../relational-databases/reference/system-stored-procedures/sp-helpserver-transact-sql.md)|  
|[sp_autostats](../../../relational-databases/reference/system-stored-procedures/sp-autostats-transact-sql.md)|[sp_helpsort](../../../relational-databases/reference/system-stored-procedures/sp-helpsort-transact-sql.md)|  
|[sp_bindefault](../../../relational-databases/reference/system-stored-procedures/sp-bindefault-transact-sql.md)|[sp_helpstats](../../../relational-databases/reference/system-stored-procedures/sp-helpstats-transact-sql.md)|  
|[sp_bindrule](../../../relational-databases/reference/system-stored-procedures/sp-bindrule-transact-sql.md)|[sp_helptext](../../../relational-databases/reference/system-stored-procedures/sp-helptext-transact-sql.md)|  
|[sp_bindsession](../../../relational-databases/reference/system-stored-procedures/sp-bindsession-transact-sql.md)|[sp_helptrigger](../../../relational-databases/reference/system-stored-procedures/sp-helptrigger-transact-sql.md)|  
|[sp_certify_removable](../../../relational-databases/reference/system-stored-procedures/sp-certify-removable-transact-sql.md)|[sp_indexoption](../../../relational-databases/reference/system-stored-procedures/sp-indexoption-transact-sql.md)|  
|[sp_clean_db_file_free_space](../../../relational-databases/reference/system-stored-procedures/sp-clean-db-file-free-space-transact-sql.md)|[sp_invalidate_textptr](../../../relational-databases/reference/system-stored-procedures/sp-invalidate-textptr-transact-sql.md)|  
|[sp_clean_db_free_space](../../../relational-databases/reference/system-stored-procedures/sp-clean-db-free-space-transact-sql.md)|[sp_lock](../../../relational-databases/reference/system-stored-procedures/sp-lock-transact-sql.md)|  
|[sp_configure](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)|[sys.sp_merge_xtp_checkpoint_files](../../../relational-databases/reference/system-stored-procedures/sys.sp-xtp-merge-checkpoint-files-transact-sql.md)|  
|[sp_control_plan_guide](../../../relational-databases/reference/system-stored-procedures/sp-control-plan-guide-transact-sql.md)|[sp_monitor](../../../relational-databases/reference/system-stored-procedures/sp-monitor-transact-sql.md)|  
|[sp_create_plan_guide](../../../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-transact-sql.md)|[sp_prepare](../../../relational-databases/reference/system-stored-procedures/sp-prepare-transact-sql.md)|  
|[sp_create_plan_guide_from_handle](../../../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-from-handle-transact-sql.md)|[sp_prepexec](../../../relational-databases/reference/system-stored-procedures/sp-prepexec-transact-sql.md)|  
|[sp_create_removable](../../../relational-databases/reference/system-stored-procedures/sp-create-removable-transact-sql.md)|[sp_prepexecrpc](../../../relational-databases/reference/system-stored-procedures/sp-prepexecrpc-transact-sql.md)|  
|[sp_createstats](../../../relational-databases/reference/system-stored-procedures/sp-createstats-transact-sql.md)|[sp_procoption](../../../relational-databases/reference/system-stored-procedures/sp-procoption-transact-sql.md)|  
|[sp_cycle_errorlog](../../../relational-databases/reference/system-stored-procedures/sp-cycle-errorlog-transact-sql.md)|[sp_recompile](../../../relational-databases/reference/system-stored-procedures/sp-recompile-transact-sql.md)|  
|[sp_datatype_info](../../../relational-databases/reference/system-stored-procedures/sp-datatype-info-transact-sql.md)|[sp_refreshview](../../../relational-databases/reference/system-stored-procedures/sp-refreshview-transact-sql.md)|  
|[sp_db_increased_partitions](../../../relational-databases/reference/system-stored-procedures/sp-db-increased-partitions.md)|[sp_releaseapplock](../../../relational-databases/reference/system-stored-procedures/sp-releaseapplock-transact-sql.md)|  
|[sp_dbcmptlevel](../../../relational-databases/reference/system-stored-procedures/sp-dbcmptlevel-transact-sql.md)|[sp_rename](../../../relational-databases/reference/system-stored-procedures/sp-rename-transact-sql.md)|  
|[sp_dbmmonitoraddmonitoring](../../../relational-databases/reference/system-stored-procedures/sp-dbmmonitoraddmonitoring-transact-sql.md)|[sp_renamedb](../../../relational-databases/reference/system-stored-procedures/sp-renamedb-transact-sql.md)|  
|[sp_dbmmonitorchangealert](../../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorchangealert-transact-sql.md)|[sp_resetstatus](../../../relational-databases/reference/system-stored-procedures/sp-resetstatus-transact-sql.md)|  
|[sp_dbmmonitorchangemonitoring](../../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorchangemonitoring-transact-sql.md)|[sp_sequence_get_range](../../../relational-databases/reference/system-stored-procedures/sp-sequence-get-range-transact-sql.md)|  
|[sp_dbmmonitordropalert](../../../relational-databases/reference/system-stored-procedures/sp-dbmmonitordropalert-transact-sql.md)|[sp_serveroption](../../../relational-databases/reference/system-stored-procedures/sp-serveroption-transact-sql.md)|  
|[sp_dbmmonitordropmonitoring](../../../relational-databases/reference/system-stored-procedures/sp-dbmmonitordropmonitoring-transact-sql.md)|[sp_set_session_context](../../../relational-databases/reference/system-stored-procedures/sp-set-session-context-transact-sql.md)|  
|[sp_dbmmonitorhelpalert](../../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorhelpalert-transact-sql.md)|[sp_setnetname](../../../relational-databases/reference/system-stored-procedures/sp-setnetname-transact-sql.md)|  
|[sp_dbmmonitorhelpmonitoring](../../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorhelpmonitoring-transact-sql.md)|[sp_settriggerorder](../../../relational-databases/reference/system-stored-procedures/sp-settriggerorder-transact-sql.md)|  
|[sp_dbmmonitorresults](../../../relational-databases/reference/system-stored-procedures/sp-dbmmonitorresults-transact-sql.md)|[sp_spaceused](../../../relational-databases/reference/system-stored-procedures/sp-spaceused-transact-sql.md)|  
|[sp_delete_backuphistory](../../../relational-databases/reference/system-stored-procedures/sp-delete-backuphistory-transact-sql.md)|[sp_tableoption](../../../relational-databases/reference/system-stored-procedures/sp-tableoption-transact-sql.md)|  
|[sp_depends](../../../relational-databases/reference/system-stored-procedures/sp-depends-transact-sql.md)|[sp_unbindefault](../../../relational-databases/reference/system-stored-procedures/sp-unbindefault-transact-sql.md)|  
|[sp_describe_first_result_set](../../../relational-databases/reference/system-stored-procedures/sp-describe-first-result-set-transact-sql.md)|[sp_unbindrule](../../../relational-databases/reference/system-stored-procedures/sp-unbindrule-transact-sql.md)|  
|[sp_describe_undeclared_parameters](../../../relational-databases/reference/system-stored-procedures/sp-describe-undeclared-parameters-transact-sql.md)|[sp_updateextendedproperty](../../../relational-databases/reference/system-stored-procedures/sp-updateextendedproperty-transact-sql.md)|  
|[sp_detach_db](../../../relational-databases/reference/system-stored-procedures/sp-detach-db-transact-sql.md)|[sp_updatestats](../../../relational-databases/reference/system-stored-procedures/sp-updatestats-transact-sql.md)|  
|[sp_dropdevice](../../../relational-databases/reference/system-stored-procedures/sp-dropdevice-transact-sql.md)|[sp_unprepare](../../../relational-databases/reference/system-stored-procedures/sp-unprepare-transact-sql.md)|  
|[sp_dropextendedproc](../../../relational-databases/reference/system-stored-procedures/sp-dropextendedproc-transact-sql.md)|[sp_validname](../../../relational-databases/reference/system-stored-procedures/sp-validname-transact-sql.md)|  
|[sp_dropextendedproperty](../../../relational-databases/reference/system-stored-procedures/sp-dropextendedproperty-transact-sql.md)|[sp_who](../../../relational-databases/reference/system-stored-procedures/sp-who-transact-sql.md)|  
|[sp_dropmessage](../../../relational-databases/reference/system-stored-procedures/sp-dropmessage-transact-sql.md)|[sys.sp_xtp_control_proc_exec_stats](../../../relational-databases/reference/system-stored-procedures/sys.sp-xtp-control-proc-exec-stats-transact-sql.md)|  
|[sp_droptype](../../../relational-databases/reference/system-stored-procedures/sp-droptype-transact-sql.md)|[sys.sp_flush_log](../../../relational-databases/reference/system-stored-procedures/sys.sp-flush-log-transact-sql.md)|  
|[sp_execute](../../../relational-databases/reference/system-stored-procedures/sp-execute-transact-sql.md)|[sys.sp_xtp_bind_db_resource_pool](../../../relational-databases/reference/system-stored-procedures/sys.sp-xtp-bind-db-resource-pool-transact-sql.md)|  
|[sp_executesql](../../../relational-databases/reference/system-stored-procedures/sp-executesql-transact-sql.md)|[sys.sp_xtp_control_query_exec_stats](../../../relational-databases/reference/system-stored-procedures/sys.sp-xtp-control-query-exec-stats-transact-sql.md)|  
|[sp_getapplock](../../../relational-databases/reference/system-stored-procedures/sp-getapplock-transact-sql.md)|[sys.sp_xtp_checkpoint_force_garbage_collection](../../../relational-databases/reference/system-stored-procedures/sys.sp-xtp-checkpoint-force-garbage-collection-transact-sql.md)|  
|[sp_getbindtoken](../../../relational-databases/reference/system-stored-procedures/sp-getbindtoken-transact-sql.md)|[sys.sp_xtp_unbind_db_resource_pool](../../../relational-databases/reference/system-stored-procedures/sys.sp-xtp-unbind-db-resource-pool-transact-sql.md)|  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  