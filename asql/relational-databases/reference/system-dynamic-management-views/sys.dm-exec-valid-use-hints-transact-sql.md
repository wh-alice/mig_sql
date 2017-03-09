---
title: "sys.dm_exec_valid_use_hints (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-11-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sys.dm_exec_valid_use_hints"
  - "sys.dm_exec_valid_use_hints_TSQL"
  - "dm_exec_valid_use_hints"
  - "dm_exec_valid_use_hints_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.dm_exec_valid_use_hints management view"
ms.assetid: 65d50589-39c2-4046-92b6-0c4587d8c593
caps.latest.revision: 5
ms.author: "pelopes"
manager: "jhubbard"
---
# sys.dm_exec_valid_use_hints (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

Returns [USE HINT](../../../t-sql/queries/hints-transact-sql-query.md) supported hint names. It lists one hint name per row.  
  
Use this DMV to see the list of all supported hints under the USE HINT notation.  
  
|Column Name|Data Type|Description|  
|-----------------|---------------|-----------------|  
|name|**sysname**|The name of the hint.|

See [Query Hints](../../../t-sql/queries/hints-transact-sql-query.md) for descriptions of each hint.

Introduced in [!INCLUDE[ssSQL15_md](../../../analysis-services/powershell/includes/sssql15-md.md)] SP1.
  
## See Also  
    
 [Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../Topic/Dynamic%20Management%20Views%20and%20Functions%20\(Transact-SQL\).md)   
 [Database Related Dynamic Management Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/database-related-dynamic-management-views-transact-sql.md)  