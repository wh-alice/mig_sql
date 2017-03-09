---
title: "sp_syscollector_run_collection_set (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_syscollector_run_collection_set_TSQL"
  - "sp_syscollector_run_collection_set"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syscollector_run_collection_set"
  - "data collector [SQL Server], stored procedures"
ms.assetid: 7bbaee48-dfc7-45c0-b11f-c636b6a7e720
caps.latest.revision: 9
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syscollector_run_collection_set (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Starts a collection set if the collector is already enabled and the collection set is configured for non-cached collection mode.  
  
> [!NOTE]  
>  This procedure will fail if it is run against a collection set that is configured for cached collection mode.  
  
 sp_syscollector_run_collection_set enables a user to take on-demand data snapshots.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_syscollector_run_collection_set [[ @collection_set_id = ] collection_set_id ]  
          , [[ @name = ] 'name' ]   
```  
  
## Arguments  
 [ **@collection_set_id =** ] *collection_set_id*  
 Is the unique local identifier for the collection set. *collection_set_id* is **int** and must have a value if *name* is NULL.  
  
 [ **@name =** ] **'***name***'**  
 Is the name of the collection set. *name* is **sysname** and must have a value if *collection_set_id* is NULL.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 Either *collection_set_id* or *name* must have a value, both cannot be NULL.  
  
 This procedure will start the collection and upload jobs for the specified collection set and will immediately start the collection agent job if the collection set has its **@collection_mode** set to non-cached (1). For more information see, [sp_syscollector_create_collection_set &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-create-collection-set-transact-sql.md).  
  
 sp_sycollector_run_collection_set can also be used to run a collection set that does not have a schedule.  
  
## Permissions  
 Requires membership in the **dc_operator** (with EXECUTE permission) fixed database role to execute this procedure.  
  
## Example  
 Start a collection set using its identifier.  
  
```  
USE msdb;  
GO  
EXEC sp_syscollector_run_collection_set @collection_set_id = 1;  
```  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Data Collection](../../../relational-databases/data-collection/data-collection.md)  
  
  