---
title: "DBCC SHRINKLOG (Azure SQL Data Warehouse) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
ms.assetid: 3dd74d20-1265-4553-8819-97cd89498893
caps.latest.revision: 11
ms.author: "barbkess"
manager: "jhubbard"
---
# DBCC SHRINKLOG (Azure SQL Data Warehouse)
[!INCLUDE[tsql-appliesto-xxxxxx-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-xxxxxx-xxxx-asdw-pdw-md.md)]

  Reduces the size of the transaction log *across the appliance* for the current [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] or [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)] database. The data is defragmented in order to shrink the transaction log. Over time, the database transaction log can become fragmented and inefficient. Use DBCC SHRINKLOG to reduce fragmentation and reduce the log size.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions &#40;Transact-SQL&#41;](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
DBCC SHRINKLOG   
    [ ( SIZE = { target_size [ MB | GB | TB ]  } | DEFAULT ) ]   
    [ WITH NO_INFOMSGS ]   
[;]  
```  
  
## Arguments  
 SIZE = { *target_size* [ MB | **GB** | TB ]  } | **DEFAULT**.  
 *target_size* is the desired size for the transaction log, across all the Compute nodes, after DBCC SHRINKLOG completes. It is an integer greater than 0.  
  
 The log size is measured in megabytes (MB), gigabytes (GB), or terabytes (TB). It is the combined size of the transaction log on all of the Compute nodes.  
  
 By default, DBCC SHRINKLOG reduces the transaction log to the log size stored in the metadata for the database. The log size in the metadata is determined by the LOG_SIZE parameter in [CREATE DATABASE &#40;Azure SQL Data Warehouse&#41;](../../t-sql/statements/create-database-azure-sql-data-warehouse.md) or [ALTER DATABASE &#40;Azure SQL Data Warehouse&#41;](../../t-sql/statements/alter-database-azure-sql-data-warehouse.md). DBCC SHRINKLOG reduces the transaction log size to the default size when `SIZE=DEFAULT` is specified, or when the `SIZE` clause is omitted.  
  
 WITH NO_INFOMSGS  
 Informational messages are not displayed in the DBCC SHRINKLOG results.  
  
## Permissions  
 Requires ALTER SERVER STATE permission.  
  
## General Remarks  
 DBCC SHRINKLOG does not change the log size stored in the metadata for the database. The metadata continues to contain the LOG_SIZE parameter that was specified in CREATE DATABASE or ALTER DATABASE statement.  
  
## Examples: [!INCLUDE[ssSDW](../../database-engine/configure/windows/includes/sssdw-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### A. Shrink the transaction log to the original size specified by CREATE DATABASE.  
 Suppose the transaction log for the Addresses database was set to 100 MB when the Addresses database was created. That is, the CREATE DATABASE statement for Addresses had LOG_SIZE = 100 MB. Now, suppose the log has grown to 150 MB and you want to shrink it back to 100 MB.  
  
 Each of the following statements will attempt to shrink the transaction log for the Addresses database to the default size of 100 MB. If shrinking the log to 100 MB will cause data loss, DBCC SHRINKLOG will shrink the log to the smallest size possible, greater than 100 MB, without losing data.  
  
```  
USE Addresses;  
DBCC SHRINKLOG ( SIZE = 100 MB );  
DBCC SHRINKLOG ( SIZE = DEFAULT );  
DBCC SHRINKLOG;  
```  
  
  