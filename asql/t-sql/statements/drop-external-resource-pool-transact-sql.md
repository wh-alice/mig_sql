---
title: "DROP EXTERNAL RESOURCE POOL (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DROP EXTERNAL RESOURCE POOL"
  - "DROP_EXTERNAL_RESOURCE_POOL_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "DROP EXTERNAL RESOURCE POOL statement"
ms.assetid: e2fa01bd-96ff-4ea9-bb08-6cb6b6adf68c
caps.latest.revision: 6
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP EXTERNAL RESOURCE POOL (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Deletes a Resource Governor external resource pool used to define resources for external processes. For R Services the external pool governs `rterm.exe`, `BxlServer.exe`, and other processes spawned by them. External resource pools are created by using [CREATE EXTERNAL RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/create-external-resource-pool-transact-sql.md) and modified by using [ALTER EXTERNAL RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/alter-external-resource-pool-transact-sql.md).  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md).  
  
## Syntax  
  
```  
DROP EXTERNAL RESOURCE POOL pool_name  
```  
  
## Arguments  
 *pool_name*  
 The name of the external resource pool to be deleted.  
  
## Remarks  
 You cannot drop an external resource pool if it contains workload groups.  
  
 You cannot drop the Resource Governor default or internal pools.  
  
 The reconfiguration does n  
  
 When you are executing DDL statements, we recommend that you be familiar with Resource Governor states. For more information, see [Resource Governor](../../relational-databases/resource-governor/resource-governor.md).  
  
## Permissions  
 Requires `CONTROL SERVER` permission.  
  
## Examples  
 The following example drops the external resource pool named `ex_pool`.  
  
```  
DROP EXTERNAL RESOURCE POOL ex_pool;  
GO  
ALTER RESOURCE GOVERNOR RECONFIGURE;  
GO  
```  
  
## See Also  
 [external scripts enabled Server Configuration Option](../../database-engine/configure/windows/external-scripts-enabled-server-configuration-option.md)   
 [SQL Server R Services](../../advanced-analytics/r-services/sql-server-r-services.md)   
 [Known Issues for SQL Server R Services](../../advanced-analytics/r-services/known-issues-for-sql-server-r-services.md)   
 [CREATE EXTERNAL RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/create-external-resource-pool-transact-sql.md)   
 [ALTER EXTERNAL RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/alter-external-resource-pool-transact-sql.md)   
 [DROP WORKLOAD GROUP &#40;Transact-SQL&#41;](../../t-sql/statements/drop-workload-group-transact-sql.md)   
 [DROP RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/drop-resource-pool-transact-sql.md)  
  
  