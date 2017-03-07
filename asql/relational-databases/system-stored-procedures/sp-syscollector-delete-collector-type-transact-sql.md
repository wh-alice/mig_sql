---
title: "sp_syscollector_delete_collector_type (Transact-SQL) | Microsoft Docs"
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
  - "sp_syscollector_delete_collector_type"
  - "sp_syscollector_delete_collector_type_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "data collector [SQL Server], stored procedures"
  - "sp_syscollector_delete_collector_type"
ms.assetid: 3f32905e-0005-42cb-aef1-7bd04c51fbac
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_syscollector_delete_collector_type (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Deletes the definition of a collector type.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_syscollector_delete_collector_type [[ @collector_type_uid = ] 'collector_type_uid' ]  
          , [[ @name = ] 'name' ]  
```  
  
## Arguments  
 [ **@collector_type_uid =** ] **'***collector_type_uid***'**  
 Is the GUID for the collector type. *collector_type_uid* is **uniqueidentifier** and must have a value if *name* is NULL.  
  
 [ **@name =** ] **'***name***'**  
 Is the name of the collector type. *name* is **sysname** and must have a value if *collector_type_uid* is NULL.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 Either *collector_type_uid* or *name* must have a value, both cannot be NULL.  
  
 This procedure will throw an error if collection items of this collection type exist.  
  
## Permissions  
 Requires membership in the **dc_admin** (with EXECUTE permission) fixed database role to execute this procedure.  
  
## Example  
 This example deletes the Generic T-SQL Query collector type.  
  
```  
USE msdb;  
GO  
EXEC sp_syscollector_delete_collector_type @collector_type_uid = '302E93D1-3424-4be7-AA8E-84813ECF2419';  
```  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Data Collection](../../relational-databases/data-collection/data-collection.md)  
  
  