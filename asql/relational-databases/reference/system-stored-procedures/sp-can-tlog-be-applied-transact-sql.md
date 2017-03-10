---
title: "sp_can_tlog_be_applied (Transact-SQL) | Microsoft Docs"
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
  - "sp_can_tlog_be_applied_TSQL"
  - "sp_can_tlog_be_applied"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_can_tlog_be_applied"
ms.assetid: 9c143b6c-27ac-4ab7-98d1-3b7b265f3963
caps.latest.revision: 26
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_can_tlog_be_applied (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Verifies whether a transaction log backup can be applied to a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database. **sp_can_tlog_be_applied** requires that the database be in the Restoring state.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_can_tlog_be_applied [ @backup_file_name = ] 'backup_file_name'   
        , [ @database_name = ] 'database_name'   
        , [ @result = ] result OUTPUT  
```  
  
## Arguments  
 [ **@backup_file_name=** ] **'***backup_file_name***'**  
 Is the name of a backup file. *backup_file_name* is **nvarchar(128)**.  
  
 [ **@database_name=** ] **'***database_name***'**  
 Is the name of the database. *database_name* is **sysname**.  
  
 [ **@result=** ] *result* **OUTPUT**  
 Indicates whether the transaction log can be applied to the database. *result* is **bit**.  
  
 1 = The log can be applies  
  
 0= The log cannot be applied.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_can_tlog_be_applied**.  
  
## Examples  
 The following example declares a local variable, `@MyBitVar`, to store the result.  
  
```  
USE master;  
GO  
DECLARE @MyBitVar BIT;  
EXEC sp_can_tlog_be_applied  
     @backup_file_name =   
N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Backup\AdventureWorks2012.bak',  
     @database_name = N'AdventureWorks2012',  
     @result = @MyBitVar OUTPUT;  
GO  
```  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  