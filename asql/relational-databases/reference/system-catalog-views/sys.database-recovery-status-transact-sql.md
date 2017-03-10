---
title: "sys.database_recovery_status (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-12"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "database_recovery_status_TSQL"
  - "database_recovery_status"
  - "sys.database_recovery_status"
  - "sys.database_recovery_status_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.database_recovery_status catalog view"
ms.assetid: 46fab234-1542-49be-8edf-aa101e728acf
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# sys.database_recovery_status (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains one row per database. If the database is not opened, the [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] tries to start it.  
  
 To see the row for a database other than **master** or **tempdb**, one of the following must apply:  
  
-   Be the owner of the database.  
  
-   Have ALTER ANY DATABASE or VIEW ANY DATABASE server-level permissions.  
  
-   Have CREATE DATABASE permission in the **master** database.    
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**database_id**|**int**|ID of the database, unique within an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].|  
|**database_guid**|**uniqueidentifier**|Used to relate all the database files of a database together. All files must have this GUID in their header page for the database to start as expected. Only one database should ever have this GUID, but duplicates can be created by copying and attaching databases. RESTORE always generates a new GUID when you restore a database that does not yet exist.<br /><br /> NULL= Database is offline, or the database will not start.|  
|**family_guid**|**uniqueidentifier**|Identifier of the "backup family" for the database for detecting matching restore states.<br /><br /> NULL= Database is offline or the database will not start.|  
|**last_log_backup_lsn**|**numeric(25,0)**|The starting log sequence number of the next log backup.<br /><br /> If NULL, a transaction log back up cannot be performed because either the database is in SIMPLE recovery or there is no current database backup.|  
|**recovery_fork_guid**|**uniqueidentifier**|Identifies the current recovery fork on which the database is currently active.<br /><br /> NULL= Database is offline, or the database will not start.|  
|**first_recovery_fork_guid**|**uniqueidentifier**|Identifier of the starting recovery fork.<br /><br /> NULL= Database is offline, or the database will not start.|  
|**fork_point_lsn**|**numeric(25,0)**|If **first_recovery_fork_guid** is not equal (!=) to **recovery_fork_guid**, **fork_point_lsn** is the log sequence number of the current fork point. Otherwise, the value is NULL.|  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../../relational-databases/reference/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Databases and Files Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/databases-and-files-catalog-views-transact-sql.md)   
 [RESTORE HEADERONLY &#40;Transact-SQL&#41;](../../../t-sql/statements/restore-statements-headeronly-transact-sql.md)   
 [Querying the SQL Server System Catalog FAQ](../../../relational-databases/reference/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  