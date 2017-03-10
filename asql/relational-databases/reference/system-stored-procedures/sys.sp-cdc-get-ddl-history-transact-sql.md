---
title: "sys.sp_cdc_get_ddl_history (Transact-SQL) | Microsoft Docs"
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
  - "sp_cdc_get_ddl_history"
  - "sp_cdc_get_ddl_history_TSQL"
  - "sys.sp_cdc_get_ddl_history_TSQL"
  - "sys.sp_cdc_get_ddl_history"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "change data capture [SQL Server], querying metadata"
  - "sp_cdc_get_ddl_history"
  - "sys.sp_cdc_get_ddl_history"
ms.assetid: 4dee5e2e-d7e5-4fea-8037-a4c05c969b3a
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sp_cdc_get_ddl_history (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the data definition language (DDL) change history associated with the specified capture instance since change data capture was enabled for that capture instance. Change data capture is not available in every edition of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.sp_cdc_get_ddl_history [ @capture_instance = ] 'capture_instance'  
```  
  
## Arguments  
 [ @capture_instance = ] '*capture_instance*'  
 Is the name of the capture instance associated with a source table. *capture_instance* is **sysname** and cannot be NULL.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|source_schema|**sysname**|Name of the source table schema.|  
|source_table|**sysname**|Name of the source table.|  
|capture_instance|**sysname**|Name of the capture instance.|  
|required_column_update|**bit**|Indicates the DDL change required a column in the change table to be altered to reflect a data type change made to the source column.|  
|ddl_command|**nvarchar(max)**|The DDL statement applied to the source table.|  
|ddl_lsn|**binary(10)**|Log sequence number (LSN) associated with the DDL change.|  
|ddl_time|**datetime**|Time associated with the DDL change.|  
  
## Remarks  
 DDL modifications to the source table that change the source table column structure, such as adding or dropping a column, or changing the data type of an existing column, are maintained in the [cdc.ddl_history](../../../relational-databases/reference/system-tables/cdc.ddl-history-transact-sql.md) table. These changes can be reported by using this stored procedure. Entries in cdc.ddl_history are made at the time the capture process reads the DDL transaction in the log.  
  
## Permissions  
 Requires membership in the db_owner fixed database role to return rows for all capture instances in the database. For all other users, requires SELECT permission on all captured columns in the source table and, if a gating role for the capture instance was defined, membership in that database role.  
  
## Examples  
 The following example adds a column to the source table `HumanResources.Employee` and then runs the `sys.sp_cdc_get_ddl_history` stored procedure to report the DDL changes that apply to the source table associated with the capture instance `HumanResources_Employee`.  
  
```  
USE AdventureWorks2012;  
GO  
ALTER TABLE HumanResources.Employee  
ADD Test_Column int NULL;  
GO  
-- Pause 10 seconds to allow the event to be logged.   
WAITFOR DELAY '00:00:10';  
GO   
EXECUTE sys.sp_cdc_get_ddl_history   
    @capture_instance = 'HumanResources_Employee';  
GO  
```  
  
## See Also  
 [sys.sp_cdc_help_change_data_capture &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sys.sp-cdc-help-change-data-capture-transact-sql.md)  
  
  