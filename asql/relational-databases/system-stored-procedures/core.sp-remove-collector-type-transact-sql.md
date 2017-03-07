---
title: "core.sp_remove_collector_type (Transact-SQL) | Microsoft Docs"
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
  - "sp_remove_collector_type"
  - "sp_remove_collector_type_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "core.sp_remove_collector_type stored procedure"
  - "management data warehouse, data collector stored procedures"
  - "sp_remove_collector_type"
  - "data collector [SQL Server], stored procedures"
ms.assetid: 88ceba25-e41a-405f-a416-bb68918a0024
caps.latest.revision: 14
ms.author: "jhubbard"
manager: "jhubbard"
---
# core.sp_remove_collector_type (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes an entry from the core.supported_collector_types view in the management data warehouse database. The procedure must be executed in the context of the management data warehouse database.  
  
 The core.supported_collector_types view shows the registered collector types that can upload data to the management data warehouse.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
core.sp_remove_collector_type [ @collector_type_uid = ] 'collector_type_uid'  
```  
  
## Arguments  
 [ @collector_type_uid = ] '*collector_type_uid*'  
 The GUID for the collector type. *collector_type_uid* is **uniqueidentifier**, with no default value.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Permissions  
 Requires membership in the **mdw_admin** (with EXECUTE permission) fixed database role.  
  
## Examples  
 The following example removes the Generic T-SQL Query collector type from the core.supported_collector_types view.  
  
```  
USE <management_data_warehouse>;  
GO  
DECLARE @RC int;  
DECLARE @collector_type_uid uniqueidentifier;  
SELECT @collector_type_uid = (SELECT collector_type_uid FROM msdb.dbo.syscollector_collector_types WHERE name = N'Generic T-SQL Query Collector Type');  
EXECUTE @RC = core.sp_remove_collector_type @collector_type_uid;  
```  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Data Collector Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/data-collector-stored-procedures-transact-sql.md)   
 [Management Data Warehouse](../../relational-databases/data-collection/management-data-warehouse.md)  
  
  