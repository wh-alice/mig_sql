---
title: "sp_syscollector_delete_collection_set (Transact-SQL) | Microsoft Docs"
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
  - "sp_syscollector_delete_collection_set_TSQL"
  - "sp_syscollector_delete_collection_set"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "data collector [SQL Server], stored procedures"
  - "sp_syscollector_delete_collecton_set"
ms.assetid: 29c63a74-4db4-4068-bd57-9fb519b0c598
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syscollector_delete_collection_set (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Deletes a user-defined collection set and all its collection items.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_syscollector_delete_collection_set [[ @collection_set_id = ] collection_set_id OUTPUT ]  
    , [[ @name = ] 'name' ]  
```  
  
## Arguments  
 [ @collection_set_id = ] *collection_set_id*  
 Is the unique identifier for the collection set. *collection_set_id* is **int** and must have a value if *name* is NULL.  
  
 [ @name = ] '*name*'  
 Is the name of the collection set. *name* is **sysname** and must have a value if *collection_set_id* is NULL.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 sp_syscollector_delete_collection_set must be run in the context of the msdb system database.  
  
 Either *collection_set_id* or *name* must have a value, both cannot be NULL. To obtain these values, query the syscollector_collection_set system view.  
  
 System-defined collection sets cannot be deleted.  
  
## Permissions  
 Requires membership in the dc_admin (with EXECUTE permission) fixed database role to execute this procedure.  
  
## Examples  
 The following example deletes a user-defined collection set specifying the *collection_set_id*.  
  
```  
USE msdb;  
GO  
EXEC dbo.sp_syscollector_delete_collection_set  
    @collection_set_id = 4;  
```  
  
## See Also  
 [Data Collector Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/data-collector-stored-procedures-transact-sql.md)   
 [Data Collection](../../../relational-databases/data-collection/data-collection.md)   
 [syscollector_collection_sets &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/syscollector-collection-sets-transact-sql.md)  
  
  