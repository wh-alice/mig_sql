---
title: "sys.sysdatabases (Transact-SQL) | Microsoft Docs"
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
  - "sysdatabases_TSQL"
  - "sys.sysdatabases_TSQL"
  - "sys.sysdatabases"
  - "sysdatabases"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.sysdatabases compatibility view"
  - "sysdatabases system table"
ms.assetid: 60a93880-62f1-4eda-a886-f046706ba90c
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.sysdatabases (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../../relational-databases/reference/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Contains one row for each database in an instance of [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. When [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is first installed, **sysdatabases** contains entries for the **master**, **model**, **msdb**, and **tempdb** databases.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssnoteCompView](../../../relational-databases/reference/system-compatibility-views/includes/ssnotecompview-md.md)]  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**name**|**sysname**|Database name|  
|**dbid**|**smallint**|Database ID|  
|**sid**|**varbinary(85)**|System ID of the database creator|  
|**mode**|**smallint**|Used internally for locking a database while it is being created.|  
|**status**|**int**|Status bits, some of which can be set by using [ALTER DATABASE](../../../t-sql/statements/alter-database-transact-sql.md) as noted:<br /><br /> 1 = **autoclose** (ALTER DATABASE)<br /><br /> 4 = **select into/bulkcopy** (ALTER DATABASE using SET RECOVERY)<br /><br /> 8 = **trunc. log on chkpt** (ALTER DATABASE using SET RECOVERY)<br /><br /> 16 = **torn page detection** (ALTER DATABASE)<br /><br /> 32 = **loading**<br /><br /> 64 = **pre recovery**<br /><br /> 128 = **recovering**<br /><br /> 256 = **not recovered**<br /><br /> 512 = **offline** (ALTER DATABASE)<br /><br /> 1024 = **read only** (ALTER DATABASE)<br /><br /> 2048 = **dbo use only** (ALTER DATABASE using SET RESTRICTED_USER)<br /><br /> 4096 = **single user** (ALTER DATABASE)<br /><br /> 32768 = **emergency mode**<br /><br /> 65536 = **CHECKSUM** (ALTER DATABASE)<br /><br /> 4194304 = **autoshrink** (ALTER DATABASE)<br /><br /> 1073741824 = **cleanly shutdown**<br /><br /> Multiple bits can be ON at the same time.|  
|**status2**|**int**|16384 = **ANSI null default** (ALTER DATABASE)<br /><br /> 65536 = **concat null yields null** (ALTER DATABASE)<br /><br /> 131072 = **recursive triggers** (ALTER DATABASE)<br /><br /> 1048576 = **default to local cursor** (ALTER DATABASE)<br /><br /> 8388608 = **quoted identifier** (ALTER DATABASE)<br /><br /> 33554432 = **cursor close on commit** (ALTER DATABASE)<br /><br /> 67108864 = **ANSI nulls** (ALTER DATABASE)<br /><br /> 268435456 = **ANSI warnings** (ALTER DATABASE)<br /><br /> 536870912 = **full text enabled** (set by using **sp_fulltext_database**)|  
|**crdate**|**datetime**|Creation date|  
|**reserved**|**datetime**|Reserved for future use.|  
|**category**|**int**|Contains a bitmap of information used for replication:<br /><br /> 1 = Published for snapshot or transactional replication.<br /><br /> 2 = Subscribed to a snapshot or transactional publication.<br /><br /> 4 = Published for merge replication.<br /><br /> 8 = Subscribed to a merge publication.<br /><br /> 16 = Distribution database.|  
|**cmptlevel**|**tinyint**|Compatibility level for the database. For more information, see [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-database-transact-sql-compatibility-level.md).|  
|**filename**|**nvarchar(260)**|Operating-system path and name for the primary file for the database.<br /><br /> **filename** is visible to **dbcreator**, **sysadmin**, the database owner with CREATE ANY DATABASE permissions, or grantees that have any one of the following permissions: ALTER ANY DATABASE, CREATE ANY DATABASE, VIEW ANY DEFINITION. To return the path and file name, query the [sys.sysfiles](../../../relational-databases/reference/system-compatibility-views/sys.sysfiles-transact-sql.md) compatibility view, or the [sys.database_files](../../../relational-databases/reference/system-catalog-views/sys.database-files-transact-sql.md) view.|  
|**version**|**smallint**|Internal version number of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] code with which the database was created. [!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
  
## See Also  
 [ALTER DATABASE &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-database-transact-sql.md)   
 [Mapping System Tables to System Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/mapping-system-tables-to-system-views-transact-sql.md)   
 [Compatibility Views &#40;Transact-SQL&#41;](../Topic/Compatibility%20Views%20\(Transact-SQL\).md)  
  
  