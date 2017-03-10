---
title: "sp_releaseapplock (Transact-SQL) | Microsoft Docs"
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
  - "sp_releaseapplock_TSQL"
  - "sp_releaseapplock"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_releaseapplock"
ms.assetid: 51b03c2f-0d54-40f5-9172-e747942d4a46
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_releaseapplock (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Releases a lock on an application resource.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../analysis-services/multidimensional-models/includes/sssdsfull-md.md)].|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_releaseapplock [ @Resource = ] 'resource_name'   
     [ , [ @LockOwner = ] 'lock_owner' ]  
     [ , [ @DbPrincipal = ] 'database_principal' ]  
[ ; ]  
```  
  
## Arguments  
 [ @Resource= ] '*resource_name*'  
 Is a lock resource name specified by the client application. The application must ensure that the resource is unique. The specified name is hashed internally into a value that can be stored in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] lock manager. *resource_name* is **nvarchar(255)** with no default. *resource_name* is binary compared, thus is case-sensitive regardless of the collation settings of the current database.  
  
 [ @LockOwner= ] '*lock_owner*'  
 Is the owner of the lock, which is the *lock_owner* value when the lock was requested. *lock_owner* is **nvarchar(32)**. The value can be **Transaction** (the default) or **Session**. When the *lock_owner* value is **Transaction**, by default or specified explicitly, sp_getapplock must be executed from within a transaction.  
  
 [ @DbPrincipal= ] '*database_principal*'  
 Is the user, role, or application role that has permissions to an object in a database. The caller of the function must be a member of *database_principal*, dbo, or the db_owner fixed database role in order to call the function successfully. The default is public.  
  
## Return Code Values  
 \>= 0 (success), or < 0 (failure)  
  
|Value|Result|  
|-----------|------------|  
|0|Lock was successfully released.|  
|-999|Indicates parameter validation or other call error.|  
  
## Remarks  
 When an application calls sp_getapplock multiple times for the same lock resource, sp_releaseapplock must be called the same number of times to release the lock.  
  
 When the server shuts down for any reason, the locks are released.  
  
## Permissions  
 Requires membership in the public role.  
  
## Examples  
 The following example releases the lock associated with the current transaction on the resource `Form1` in the `AdventureWorks2012` database.  
  
```  
USE AdventureWorks2012;  
GO  
EXEC sp_getapplock @DbPrincipal = 'dbo', @Resource = 'Form1',   
     @LockMode = 'Shared';  
EXEC sp_releaseapplock @DbPrincipal = 'dbo', @Resource = 'Form1';  
GO  
```  
  
## See Also  
 [APPLOCK_MODE &#40;Transact-SQL&#41;](../../../t-sql/functions/applock-mode-transact-sql.md)   
 [APPLOCK_TEST &#40;Transact-SQL&#41;](../../../t-sql/functions/applock-test-transact-sql.md)   
 [sp_getapplock &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-getapplock-transact-sql.md)  
  
  