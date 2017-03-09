---
title: "sp_syscollector_upload_collection_set (Transact-SQL) | Microsoft Docs"
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
  - "sp_syscollector_upload_collection_set"
  - "sp_syscollector_upload_collection_set_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_syscollector_upload_collection_set"
  - "data collector [SQL Server], stored procedures"
ms.assetid: eed9232c-2b0a-4b6a-8ba0-76b7c99f48dc
caps.latest.revision: 19
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syscollector_upload_collection_set (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Starts an upload of collection set data if the collection set is enabled.  
  
> [!IMPORTANT]  
>  This stored procedure can only be used for collection sets that are configured for cached mode data collection and upload.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_syscollector_upload_collection_set [[ @collection_set_id = ] collection_set_id ]  
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
 Either *collection_set_id* or *name* must have a value; both cannot be NULL.  
  
 This procedure can be used for starting an on-demand upload for a running collection set. It can only be used for collection sets that are configured for cached mode data collection and upload. This enables a user to obtain data to analyze without having to wait for a scheduled upload.  
  
## Permissions  
 Requires membership in the **dc_operator** (with EXECUTE permission) fixed database role to execute this procedure.  
  
## Example  
 Does an on-demand upload of a collection set named `Simple Collection Set`.  
  
```  
USE msdb;  
GO  
EXEC sp_syscollector_upload_collection_set @name = 'Simple Collection Set' ;  
```  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Data Collection](../../../relational-databases/data-collection/data-collection.md)  
  
  