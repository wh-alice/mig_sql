---
title: "APPLOCK_MODE (Transact-SQL) | Microsoft Docs"
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
  - "APPLOCK_MODE_TSQL"
  - "APPLOCK_MODE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "locking [SQL Server], applications"
  - "applications [SQL Server], locks"
  - "sessions [SQL Server], application locks"
  - "APPLOCK_MODE function"
ms.assetid: e43d4917-77f1-45cc-b231-68ba7fee3385
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# APPLOCK_MODE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the lock mode held by the lock owner on a particular application resource. APPLOCK_MODE is an application lock function, and it operates on the current database. The scope of application locks is the database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
APPLOCK_MODE( 'database_principal' , 'resource_name' , 'lock_owner' )  
```  
  
## Arguments  
 '*database_principal*'  
 Is the user, role, or application role that can be granted permissions to objects in the database. The caller of the function must be a member of *database_principal*, dbo, or the db_owner fixed database role in order to call the function successfully.  
  
 '*resource_name*'  
 Is a lock resource name specified by the client application. The application must ensure that the resource name is unique. The specified name is hashed internally into a value that can be stored in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] lock manager. *resource_name*is **nvarchar(255)** with no default. *resource_name* is binary compared, and is case-sensitive regardless of the collation settings of the current database.  
  
 '*lock_owner*'  
 Is the owner of the lock, which is the *lock_owner* value when the lock was requested. *lock_owner* is **nvarchar(32)**, and the value can be either **Transaction** (the default) or **Session**.  
  
## Return Types  
 **nvarchar(32)**  
  
## Return Value  
 Returns the lock mode held by the lock owner on a particular application resource. Lock mode can be any one of these values:  
  
||||  
|-|-|-|  
|**NoLock**|**Update**|**\*SharedIntentExclusive**|  
|**IntentShared**|**IntentExclusive**|**\*UpdateIntentExclusive**|  
|**Shared**|**Exclusive**||  
  
 *This lock mode is a combination of other lock modes and cannot be explicitly acquired by using sp_getapplock.  
  
## Function Properties  
 **Nondeterministic**  
  
 **Nonindexable**  
  
 **Nonparallelizable**  
  
## Examples  
 Two users (User A and User B) with separate sessions run the following sequence of [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements.  
  
 User A runs:  
  
```  
USE AdventureWorks2012;  
GO  
BEGIN TRAN;  
DECLARE @result int;  
EXEC @result=sp_getapplock  
    @DbPrincipal='public',  
    @Resource='Form1',  
    @LockMode='Shared',  
    @LockOwner='Transaction';  
SELECT APPLOCK_MODE('public', 'Form1', 'Transaction');  
GO  
```  
  
 User B then runs:  
  
```  
Use AdventureWorks2012;  
GO  
BEGIN TRAN;  
SELECT APPLOCK_MODE('public', 'Form1', 'Transaction');  
--Result set: NoLock  
  
SELECT APPLOCK_TEST('public', 'Form1', 'Shared', 'Transaction');  
--Result set: 1 (Lock is grantable.)  
  
SELECT APPLOCK_TEST('public', 'Form1', 'Exclusive', 'Transaction');  
--Result set: 0 (Lock is not grantable.)  
GO  
```  
  
 User A then runs:  
  
```  
EXEC sp_releaseapplock @Resource='Form1', @DbPrincipal='public';  
GO  
```  
  
 User B then runs:  
  
```  
SELECT APPLOCK_TEST('public', 'Form1', 'Exclusive', 'Transaction');  
--Result set: '1' (The lock is grantable.)  
GO  
```  
  
 User A and User B then run:  
  
```  
COMMIT TRAN;  
GO  
```  
  
## See Also  
 [APPLOCK_TEST &#40;Transact-SQL&#41;](../../t-sql/functions/applock-test-transact-sql.md)   
 [sp_getapplock &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-getapplock-transact-sql.md)   
 [sp_releaseapplock &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-releaseapplock-transact-sql.md)  
  
  