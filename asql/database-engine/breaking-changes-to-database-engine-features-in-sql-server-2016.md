---
title: "Breaking Changes to Database Engine Features in SQL Server 2016 | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-11-15"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Database Engine [SQL Server], what's new"
  - "breaking changes [SQL Server]"
ms.assetid: 47edefbd-a09b-4087-937a-453cd5c6e061
caps.latest.revision: 144
ms.author: "rickbyh"
manager: "jhubbard"
---
# Breaking Changes to Database Engine Features in SQL Server 2016
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  This topic describes breaking changes in the [!INCLUDE[ssCurrent](../advanced-analytics/r-services/includes/sscurrent-md.md)][!INCLUDE[ssDE](../analysis-services/instances/install/windows/includes/ssde-md.md)] and earlier versions of [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)]. These changes might break applications, scripts, or functionalities that are based on earlier versions of [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)]. You might encounter these issues when you upgrade.  
  
##  <a name="SQL15"></a> Breaking Changes in [!INCLUDE[ssSQL15](../analysis-services/powershell/includes/sssql15-md.md)]  
  
-   The sample_ms column of sys.dm_io_virtual_file_stats has expanded from an **int** to a **bigint** data type.  
  
-   The TimeStamp column of sys.fn_virtualfilestats has expanded from an **int** to a **bigint** data type.  

-   Using the MD2, MD4, MD5, SHA, or SHA1 hash algorithms (not recommended) requires setting the database compatibility level to earlier than 130.  

-   Under database compatibility level 130, implicit conversions from **datetime** to **datetime2** data types show improved accuracy by accounting for the fractional milliseconds, resulting in different converted values. Use explicit casting to datetime2 datatype whenever a mixed comparison scenario between datetime and datetime2 datatypes exists.

  
## Previous Versions  
  
-   [Breaking Changes to Database Engine Features in SQL Server 2014](https://msdn.microsoft.com/library/ms143179\(v=sql.120\))  
  
-   [Breaking Changes to Database Engine Features in SQL Server 2012](https://msdn.microsoft.com/library/ms143179\(v=sql.110\))  
  
-   [Breaking Changes to Database Engine Features in SQL Server 2008](https://msdn.microsoft.com/library/ms143179\(v=sql.100\))  
  
## See Also  
 [Deprecated Database Engine Features in SQL Server 2016](../database-engine/deprecated-database-engine-features-in-sql-server-2016.md)   
 [Discontinued Database Engine Functionality in SQL Server 2016](../database-engine/discontinued-database-engine-functionality-in-sql-server-2016.md)   
 [SQL Server Database Engine Backward Compatibility](../database-engine/sql-server-database-engine-backward-compatibility.md)   
 [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../t-sql/statements/alter-database-transact-sql-compatibility-level.md)  
  
  