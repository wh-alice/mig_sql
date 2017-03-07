---
title: "sys.fn_virtualfilestats (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-16"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "fn_virtualfilestats_TSQL"
  - "fn_virtualfilestats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "I/O [SQL Server], statistics"
  - "fn_virtualfilestats function"
  - "sys.fn_virtualfilestats function"
  - "statistical information [SQL Server], I/O"
ms.assetid: 96b28abb-b059-48db-be2b-d60fe127f6aa
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.fn_virtualfilestats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns I/O statistics for database files, including log files. In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], this information is also available from the [sys.dm_io_virtual_file_stats](../../relational-databases/system-dynamic-management-views/sys.dm-io-virtual-file-stats-transact-sql.md) dynamic management view.  

 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
fn_virtualfilestats ( { database_id | NULL } , { file_id | NULL } )  
```  
  
## Arguments  
 *database_id* | NULL  
 Is the ID of the database. *database_id* is **int**, with no default. Specify NULL to return information for all databases in the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 *file_id* | NULL  
 Is the ID of the file. *file_id* is **int**, with no default. Specify NULL to return information for all files in the database.  
  
## Table Returned  
  
|Column Name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**DbId**|**smallint**|Database ID.|  
|**FileId**|**smallint**|File ID.|  
|**TimeStamp**|**bigint**|Database timestamp at which the data was taken. **int** in versions before [!INCLUDE[ssSQL15_md](../../analysis-services/powershell/includes/sssql15-md.md)]. |  
|**NumberReads**|**bigint**|Number of reads issued on the file.|  
|**BytesRead**|**bigint**|Number of bytes read issued on the file.|  
|**IoStallReadMS**|**bigint**|Total amount of time, in milliseconds, that users waited for the read I/Os to complete on the file.|  
|**NumberWrites**|**bigint**|Number of writes made on the file.|  
|**BytesWritten**|**bigint**|Number of bytes written made on the file.|  
|**IoStallWriteMS**|**bigint**|Total amount of time, in milliseconds, that users waited for the write I/Os to complete on the file.|  
|**IoStallMS**|**bigint**|Sum of **IoStallReadMS** and **IoStallWriteMS**.|  
|**FileHandle**|**bigint**|Value of the file handle.|  
|**BytesOnDisk**|**bigint**|Physical file size (count of bytes) on disk.<br /><br /> For database files, this is the same value as **size** in **sys.database_files**, but is expressed in bytes rather than pages.<br /><br /> For database snapshot sparse files, this is the space the operating system is using for the file.|  
  
## Remarks  
 **fn_virtualfilestats** is a system table-valued function that gives statistical information, such as the total number of I/Os performed on a file. You can use this function to help keep track of the length of time users have to wait to read or write to a file. The function also helps identify the files that encounter large numbers of I/O activity.  
  
## Permissions  
 Requires VIEW SERVER STATE permission on the server.  
  
## Examples  
  
### A. Displaying statistical information for a database  
 The following example displays statistical information for file ID 1 in the database with an ID of `1`.  
  
```tsql  
SELECT *  
FROM fn_virtualfilestats(1, 1);  
GO  
```  
  
### B. Displaying statistical information for a named database and file  
 The following example displays statistical information for the log file in the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] sample database. The system function `DB`_`ID` is used to specify the *database_id* parameter.  
  
```tsql  
SELECT *  
FROM fn_virtualfilestats(DB_ID(N'AdventureWorks2012'), 2);  
GO  
```  
  
### C. Displaying statistical information for all databases and files  
 The following example displays statistical information for all files in all databases in the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
```tsql  
SELECT *  
FROM fn_virtualfilestats(NULL,NULL);  
GO  
```  
  
## See Also  
 [DB_ID &#40;Transact-SQL&#41;](../../t-sql/functions/db-id-transact-sql.md)   
 [FILE_IDEX &#40;Transact-SQL&#41;](../../t-sql/functions/file-idex-transact-sql.md)   
 [sys.database_files &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.database-files-transact-sql.md)   
 [sys.master_files &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.master-files-transact-sql.md)  
  
  