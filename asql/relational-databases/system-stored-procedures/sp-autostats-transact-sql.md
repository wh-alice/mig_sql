---
title: "sp_autostats (Transact-SQL) | Microsoft Docs"
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
  - "sp_autostats_TSQL"
  - "sp_autostats"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_autostats"
ms.assetid: d1df8c15-ee73-49eb-9d13-6e98943c3e38
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_autostats (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Displays or changes the automatic statistics update option, AUTO_UPDATE_STATISTICS, for an index, a statistics object, a table, or an indexed view.  
  
 For more information about the AUTO_UPDATE_STATISTICS option, see [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20SET%20Options%20\(Transact-SQL\).md) and [Statistics](../../relational-databases/statistics/statistics.md).  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_autostats [ @tblname = ] 'table_or_indexed_view_name'   
    [ , [ @flagc = ] 'stats_value' ]   
    [ , [ @indname = ] 'statistics_name' ]  
```  
  
## Arguments  
 [ **@tblname=** ] **'***table_or_indexed_view_name***'**  
 Is the name of the table or indexed view to display the AUTO_UPDATE_STATISTICS option on. *table_or_indexed_view_name* is **nvarchar(776)**, with no default.  
  
 [ **@flagc=** ] **'***stats_value***'**  
 Updates the AUTO_UPDATE_STATISTICS option to one of these values:  
  
 **ON** = ON  
  
 **OFF** = OFF  
  
 When *stats_flag* is not specified, display the current AUTO_UPDATE_STATISTICS setting. *stats_value* is **varchar(10)**, with a default of NULL.  
  
 [ **@indname=** ] **'***statistics_name***'**  
 Is the name of the statistics to display or update the AUTO_UPDATE_STATISTICS option on. To display the statistics for an index, you can use the name of the index; an index and its corresponding statistics object have the same name.  
  
 *statistics_name* is **sysname**, with a default of NULL.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 If *stats_flag* is specified, **sp_autostats** reports the action that was taken but returns no result set.  
  
 If *stats_flag* is not specified, **sp_autostats** returns the following result set.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**Index Name**|**varchar(60)**|Name of the index or statistics.|  
|**AUTOSTATS**|**varchar(3)**|Current value for the AUTO_UPDATE_STATISTICS option.|  
|**Last Updated**|**datetime**|Date of the most recent statistics update.|  
  
 The result set for a table or indexed view includes statistics created for indexes, single-column statistics generated with the AUTO_CREATE_STATISTICS option and statistics created with the [CREATE STATISTICS](../../t-sql/statements/create-statistics-transact-sql.md) statement.  
  
## Remarks  
 If the specified index is disabled, or the specified table has a disabled clustered index, an error message is displayed.  
  
 AUTO_UPDATE_STATISTICS is always OFF for memory-optimized tables.  
  
## Permissions  
 To change the AUTO_UPDATE_STATISTICS option requires membership n the **db_owner** fixed database role, or ALTER permission on *table_name*.To display the AUTO_UPDATE_STATISTICS option requires membership in the **public** role.  
  
## Examples  
  
### A. Display the status of all statistics on a table  
 The following displays the status of all statistics on the `Product` table.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_autostats 'Production.Product';  
GO  
```  
  
### B. Enable AUTO_UPDATE_STATISTICS for all statistics on a table  
 The following enables the AUTO_UPDATE_STATISTICS option for all statistics on the `Product` table.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_autostats 'Production.Product', 'ON';  
GO  
```  
  
### C. Disable AUTO_UPDATE_STATISTICS for a specific index  
 The following example disables the AUTO_UPDATE_STATISTICS option for the `AK_Product_Name` index on the `Product` table.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_autostats 'Production.Product', 'OFF', AK_Product_Name;  
GO  
```  
  
## See Also  
 [Statistics](../../relational-databases/statistics/statistics.md)   
 [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../Topic/ALTER%20DATABASE%20SET%20Options%20\(Transact-SQL\).md)   
 [Database Engine Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/database-engine-stored-procedures-transact-sql.md)   
 [CREATE STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/create-statistics-transact-sql.md)   
 [DBCC SHOW_STATISTICS &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-show-statistics-transact-sql.md)   
 [DROP STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/drop-statistics-transact-sql.md)   
 [sp_createstats &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-createstats-transact-sql.md)   
 [UPDATE STATISTICS &#40;Transact-SQL&#41;](../../t-sql/statements/update-statistics-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  