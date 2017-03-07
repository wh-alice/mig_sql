---
title: "sp_syscollector_stop_collection_set (Transact-SQL) | Microsoft Docs"
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
  - "sp_syscollector_stop_collection_set_TSQL"
  - "sp_syscollector_stop_collection_set"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syscollector_stop_collection_set"
  - "data collector [SQL Server], stored procedures"
ms.assetid: 4668cfb7-462f-40d0-948c-8f740a792a4d
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syscollector_stop_collection_set (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Stops a collection set.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_syscollector_stop_collection_set   
    [ [ @collection_set_id = ] collection_set_id ]  
    , [ [ @name = ] 'name' ]  
    , [ [ @stop_collection_job = ] stop_collection_job ]  
```  
  
## Arguments  
 [ @collection_set_id = ] *collection_set_id*  
 Is the unique local identifier for the collection set. *collection_set_id* is **int** with a default value of NULL. *collection_set_id* must have a value if *name* is NULL.  
  
 [ @name = ] '*name*'  
 Is the name of the collection set. *name* is **sysname** with a default value of NULL. *name* must have a value if *collection_set_id* is NULL.  
  
 [ @stop_collection_job = ] *stop_collection_job*  
 Specifies that the collection job for the collection set be stopped if it is running. *stop_collection_job* is **bit** with a default of 1.  
  
 *stop_collection_job* applies only to collection sets with collection mode set to cached. For more information, see [sp_syscollector_create_collection_set &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-syscollector-create-collection-set-transact-sql.md).  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 sp_syscollector_create_collection_set must be run in the context of the msdb system database.  
  
## Permissions  
 Requires membership in the dc_operator (with EXECUTE permission) fixed database role to execute this procedure.  
  
## Examples  
 The following example stops a collection set using its identifier.  
  
```  
USE msdb;  
GO  
EXEC sp_syscollector_stop_collection_set @collection_set_id = 1;  
```  
  
## See Also  
 [Data Collection](../../../relational-databases/data-collection/data-collection.md)   
 [Data Collector Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/data-collector-stored-procedures-transact-sql.md)  
  
  