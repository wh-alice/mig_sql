---
title: "FileTable DDL, Functions, Stored Procedures, and Views | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-blob"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "FileTables [SQL Server], database objects"
ms.assetid: 7e2e0f7f-94a8-4178-8bc7-d2e14ac8528c
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# FileTable DDL, Functions, Stored Procedures, and Views
  Lists the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements and the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database objects that have been added or changed to support the FileTable feature in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 The Status column in the following tables indicates whether the item is new in [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)], or was present in previous versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] but has been changed in [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] to support semantic search.  
  
 For the list of statements and database objects that support FILESTREAM, see [FILESTREAM DDL, Functions, Stored Procedures, and Views](../../relational-databases/blob/filestream-ddl-functions-stored-procedures-and-views.md).  
  
##  <a name="ddl"></a> Transact-SQL Data Definition Language (DDL) Statements  
  
|Object|Status|More Information|  
|------------|------------|----------------------|  
|[ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md)<br /><br /> [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20SET%20Options%20\(Transact-SQL\).md)|Changed|[Enable the Prerequisites for FileTable](../../relational-databases/blob/enable-the-prerequisites-for-filetable.md)<br /><br /> [Manage FileTables](../../relational-databases/blob/manage-filetables.md)|  
|[ALTER TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-table-transact-sql.md)|Changed|[Create, Alter, and Drop FileTables](../../relational-databases/blob/create-alter-and-drop-filetables.md)<br /><br /> [Manage FileTables](../../relational-databases/blob/manage-filetables.md)|  
|[CREATE DATABASE &#40;SQL Server Transact-SQL&#41;](../../t-sql/statements/create-database-sql-server-transact-sql.md)|Changed|[Enable the Prerequisites for FileTable](../../relational-databases/blob/enable-the-prerequisites-for-filetable.md)|  
|[CREATE TABLE &#40;Transact-SQL&#41;](../../t-sql/statements/create-table-transact-sql.md)|Changed|[Create, Alter, and Drop FileTables](../../relational-databases/blob/create-alter-and-drop-filetables.md)|  
|[RESTORE &#40;Transact-SQL&#41;](../Topic/RESTORE%20\(Transact-SQL\).md)<br /><br /> [RESTORE Arguments &#40;Transact-SQL&#41;](../Topic/RESTORE%20Arguments%20\(Transact-SQL\).md)|Changed||  
  
##  <a name="func"></a> Functions  
  
|Object|Status|More Information|  
|------------|------------|----------------------|  
|[FileTableRootPath &#40;Transact-SQL&#41;](../../relational-databases/system-functions/filetablerootpath-transact-sql.md)|**Added**|[Work with Directories and Paths in FileTables](../../relational-databases/blob/work-with-directories-and-paths-in-filetables.md)|  
|[GetFileNamespacePath &#40;Transact-SQL&#41;](../../relational-databases/system-functions/getfilenamespacepath-transact-sql.md)|**Added**|[Work with Directories and Paths in FileTables](../../relational-databases/blob/work-with-directories-and-paths-in-filetables.md)|  
|[GetPathLocator &#40;Transact-SQL&#41;](../../relational-databases/system-functions/getpathlocator-transact-sql.md)|**Added**|[Work with Directories and Paths in FileTables](../../relational-databases/blob/work-with-directories-and-paths-in-filetables.md)|  
  
##  <a name="sproc"></a> Stored Procedures  
  
|Object|Status|More Information|  
|------------|------------|----------------------|  
|[sp_kill_filestream_non_transacted_handles &#40;Transact-SQL&#41;](../Topic/sp_kill_filestream_non_transacted_handles%20\(Transact-SQL\).md)|**Added**|[Manage FileTables](../../relational-databases/blob/manage-filetables.md)|  
  
##  <a name="cv"></a> Catalog Views  
  
|Object|Status|More Information|  
|------------|------------|----------------------|  
|[sys.database_filestream_options &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.database-filestream-options-transact-sql.md)|**Added**|[Enable the Prerequisites for FileTable](../../relational-databases/blob/enable-the-prerequisites-for-filetable.md)|  
|[sys.filetable_system_defined_objects &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.filetable-system-defined-objects-transact-sql.md)|**Added**|[Create, Alter, and Drop FileTables](../../relational-databases/blob/create-alter-and-drop-filetables.md)<br /><br /> [Manage FileTables](../../relational-databases/blob/manage-filetables.md)|  
|[sys.filetables &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.filetables-transact-sql.md)|**Added**|[Manage FileTables](../../relational-databases/blob/manage-filetables.md)|  
|[sys.tables &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.tables-transact-sql.md)|Changed|[Manage FileTables](../../relational-databases/blob/manage-filetables.md)|  
  
##  <a name="dmv"></a> Dynamic Management Views  
  
|Object|Status|More Information|  
|------------|------------|----------------------|  
|[sys.dm_filestream_non_transacted_handles &#40;Transact-SQL&#41;](../../relational-databases/system-dynamic-management-views/sys.dm-filestream-non-transacted-handles-transact-sql.md)|**Added**|[Manage FileTables](../../relational-databases/blob/manage-filetables.md)|  
  
## See Also  
 [Manage FileTables](../../relational-databases/blob/manage-filetables.md)  
  
  