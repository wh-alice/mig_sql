---
title: "sp_db_increased_partitions | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_db_increased_partitions_TSQL"
  - "sp_db_increased_partitions"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_db_increased_partitions"
ms.assetid: a8c043ec-b504-4929-ac0e-8babaa99d989
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_db_increased_partitions
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Enables or disables support for up to 15,000 partitions for the specified database.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] SP2 through [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP1 and higher versions). For more information, see [Support for 15,000 Partitions in SQL Server 2008 SP2 and SQL Server 2008 R2 SP1](http://go.microsoft.com/fwlink/p/?LinkId=299658),|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_dp_increased_partitions   
[ @dbname ] = 'database_name'   
[ , [ @increased_partitions = ] 'increased_partitions' ] [;]  
```  
  
## Arguments  
 [ @dbname= ] '*database_name*'  
 Is the name of the database. *dbname* is **sysname** with a default value of NULL. If *dbname* is not specified, the current database is used.  
  
 [ @increased_partitions= ] '*increased_partitions*'  
 Enables or disables support for 15,000 partitions on the specified database. *increased_partitions* is **varchar(6)** with a default of NULL. Accepted values are 'ON' or 'TRUE' to enable support and 'OFF' or 'FALSE' to disable support. If *increased_partitions* is not specified, the procedure returns 1 to indicate support is enabled for the specified database or 0 to indicate support is disabled.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Permissions  
 Requires ALTER DATABASE permission on the specified database.  
  
  