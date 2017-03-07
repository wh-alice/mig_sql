---
title: "Data Collector Stored Procedures (Transact-SQL) | Microsoft Docs"
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
  - "stored procedures [SQL Server], data collector"
  - "system stored procedures [SQL Server], data collector"
  - "data collector [SQL Server], stored procedures"
ms.assetid: 9dd2824f-ea55-439b-8cd5-3a81fedb1432
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# Data Collector Stored Procedures (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  SQL Server supports the following system stored procedures that are used to work with the data collector and the following components: collection sets, collection items, and collection types.  
  
> [!IMPORTANT]  
>  Unlike regular stored procedures, the parameters for data collector stored procedures are strictly typed and do not support automatic data type conversion. If these parameters are not called with the correct input parameter data types, as specified in the argument description, the stored procedure returns an error.  
  
|||  
|-|-|  
|[sp_syscollector_create_collection_item](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-create-collection-item-transact-sql.md)|[sp_syscollector_set_cache_window](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-set-cache-window-transact-sql.md)|  
|[sp_syscollector_create_collection_set](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-create-collection-set-transact-sql.md)|[sp_syscollector_set_warehouse_database_name](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-set-warehouse-database-name-transact-sql.md)|  
|[sp_syscollector_create_collector_type](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-create-collector-type-transact-sql.md)|[sp_syscollector_set_warehouse_instance_name](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-set-warehouse-instance-name-transact-sql.md)|  
|[sp_syscollector_delete_collection_item](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-delete-collection-item-transact-sql.md)|[sp_syscollector_start_collection_set](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-start-collection-set-transact-sql.md)|  
|[sp_syscollector_delete_collection_set](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-delete-collection-set-transact-sql.md)|[sp_syscollector_stop_collection_set](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-stop-collection-set-transact-sql.md)|  
|[sp_syscollector_delete_collector_type](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-delete-collector-type-transact-sql.md)|[sp_syscollector_run_collection_set](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-run-collection-set-transact-sql.md)|  
|[sp_syscollector_delete_execution_log_tree](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-delete-execution-log-tree-transact-sql.md)|[sp_syscollector_update_collection_item](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-update-collection-item-transact-sql.md)|  
|[sp_syscollector_disable_collector](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-disable-collector-transact-sql.md)|[sp_syscollector_update_collection_set](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-update-collection-set-transact-sql.md)|  
|[sp_syscollector_enable_collector](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-enable-collector-transact-sql.md)|[sp_syscollector_update_collector_type](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-update-collector-type-transact-sql.md)|  
|[sp_syscollector_set_cache_directory](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-set-cache-directory-transact-sql.md)|[sp_syscollector_upload_collection_set](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-upload-collection-set-transact-sql.md)|  
  
 The following stored procedures are for internal use only:  
  
-   sp_syscollector_get_warehouse_connection_string  
  
-   sp_syscollector_set_warehouse_connection_password  
  
-   sp_syscollector_set_warehouse_connection_user  
  
-   sp_syscollector_event_oncollectionbegin  
  
-   sp_syscollector_event_oncollectionend  
  
-   sp_syscollector_event_onpackagebegin  
  
-   sp_syscollector_event_onpackageend  
  
-   sp_syscollector_event_onpackageupdate  
  
-   sp_syscollector_event_onerror  
  
-   sp_syscollector_event_onstatsupdate  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  