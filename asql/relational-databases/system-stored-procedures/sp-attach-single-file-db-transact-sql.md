---
title: "sp_attach_single_file_db (Transact-SQL) | Microsoft Docs"
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
  - "sp_attach_single_file_db"
  - "sp_attach_single_file_db_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_attach_single_file_db"
ms.assetid: 13bd1044-9497-4293-8390-1f12e6b8e952
caps.latest.revision: 68
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_attach_single_file_db (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Attaches a database that has only one data file to the current server. **sp_attach_single_file_db** cannot be used with multiple data files.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] We recommend that you use CREATE DATABASE *database_name* FOR ATTACH instead. For more information, see [CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../t-sql/statements/create-database-sql-server-transact-sql.md). Do not use this procedure on a replicated database.  
  
> [!IMPORTANT]  
>  We recommend that you do not attach or restore databases from unknown or untrusted sources. Such databases could contain malicious code that might execute unintended [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] code or cause errors by modifying the schema or the physical database structure. Before you use a database from an unknown or untrusted source, run [DBCC CHECKDB](../../t-sql/database-console-commands/dbcc-checkdb-transact-sql.md) on the database on a nonproduction server and also examine the code, such as stored procedures or other user-defined code, in the database.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_attach_single_file_db [ @dbname= ] 'dbname'  
    , [ @physname= ] 'physical_name'  
```  
  
## Arguments  
 [ **@dbname=** ] **'***dbname***'**  
 Is the name of the database to be attached to the server. The name must be unique. *dbname* is **sysname**, with a default of NULL.  
  
 [ **@physname=** ] **'***physical_name***'**  
 Is the physical name, including path, of the database file. *physical_name* is **nvarchar(260)**, with a default of NULL.  
  
> [!NOTE]  
>  This argument maps to the FILENAME parameter of the CREATE DATABASE statement. For more information, see [CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../t-sql/statements/create-database-sql-server-transact-sql.md).  
  
 When you attach a [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] database that contains full-text catalog files onto a [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] server instance, the catalog files are attached from their previous location along with the other database files, the same as in [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)]. For more information, see [Upgrade Full-Text Search](../../relational-databases/search/upgrade-full-text-search.md).  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 Use **sp_attach_single_file_db** only on databases that were previously detached from the server by using an explicit **sp_detach_db** operation or on copied databases.  
  
 **sp_attach_single_file_db** works only on databases that have a single log file. When **sp_attach_single_file_db** attaches the database to the server, it builds a new log file. If the database is read-only, the log file is built in its previous location.  
  
> [!NOTE]  
>  A database snapshot cannot be detached or attached.  
  
 Do not use this procedure on a replicated database.  
  
## Permissions  
 For information about how permissions are handled when a database is attached, see [CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../t-sql/statements/create-database-sql-server-transact-sql.md).  
  
## Examples  
 The following example detaches [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] and then attaches one file from [!INCLUDE[ssSampleDBobject](../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] to the current server.  
  
```  
USE master;  
GO  
EXEC sp_detach_db @dbname = 'AdventureWorks2012';  
EXEC sp_attach_single_file_db @dbname = 'AdventureWorks2012',   
    @physname =   
N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Data\AdventureWorks2012_Data.mdf';  
```  
  
## See Also  
 [Database Detach and Attach &#40;SQL Server&#41;](../../relational-databases/databases/database-detach-and-attach-sql-server.md)   
 [sp_detach_db &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-detach-db-transact-sql.md)   
 [sp_helpfile &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helpfile-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  