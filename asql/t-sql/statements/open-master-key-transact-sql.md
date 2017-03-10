---
title: "OPEN MASTER KEY (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "OPEN MASTER KEY DECRYPTION BY PASSWORD"
  - "OPEN_MASTER_KEY_DECRYPTION_BY_PASSWORD_TSQL"
  - "MASTER_KEY_TSQL"
  - "MASTER KEY"
  - "OPEN_MASTER_KEY_TSQL"
  - "MASTER KEY DECRYPTION"
  - "OPEN MASTER KEY"
  - "MASTER_KEY_DECRYPTION_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "opening Database Master Keys"
  - "encryption [SQL Server], Database Master Key"
  - "cryptography [SQL Server], Database Master Key"
  - "master key decryption"
  - "OPEN MASTER KEY statement"
  - "database master key [SQL Server], opening"
ms.assetid: 1674753e-ca1e-4913-9ba4-b442e7106121
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# OPEN MASTER KEY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Opens the Database Master Key of the current database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server, Azure SQL Database, Azure SQL Data Warehouse, Parallel Data Warehouse  
  
OPEN MASTER KEY DECRYPTION BY PASSWORD = 'password'   
```  
  
## Arguments  
 '*password*'  
 The password with which the Database Master Key was encrypted.  
  
## Remarks  
 If the database master key was encrypted with the service master key, it will be automatically opened when it is needed for decryption or encryption. In this case, it is not necessary to use the **OPEN MASTER KEY** statement.  
  
 When a database is first attached or restored to a new instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], a copy of the database master key (encrypted by the service master key) is not yet stored in the server. You must use the **OPEN MASTER KEY** statement to decrypt the database master key (DMK). Once the DMK has been decrypted, you have the option of enabling automatic decryption in the future by using the **ALTER MASTER KEY REGENERATE** statement to provision the server with a copy of the DMK, encrypted with the service master key (SMK). When a database has been upgraded from an earlier version, the DMK should be regenerated to use the newer AES algorithm. For more information about regenerating the DMK, see [ALTER MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-master-key-transact-sql.md). The time required to regenerate the DMK key to upgrade to AES depends upon the number of objects protected by the DMK. Regenerating the DMK key to upgrade to AES is only necessary once, and has no impact on future regenerations as part of a key rotation strategy.  
  
 You can exclude the Database Master Key of a specific database from automatic key management by using the ALTER MASTER KEY statement with the DROP ENCRYPTION BY SERVICE MASTER KEY option. Afterward, you must explicitly open the Database Master Key with a password.  
  
 If a transaction in which the Database Master Key was explicitly opened is rolled back, the key will remain open.  
  
## Permissions  
 Requires CONTROL permission on the database.  
  
## Examples  
 The following example opens the Database Master Key of the `AdventureWorks2012` database, which has been encrypted with a password.  
  
```  
USE AdventureWorks2012;  
OPEN MASTER KEY DECRYPTION BY PASSWORD = '43987hkhj4325tsku7';  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example opens the database master, which has been encrypted with a password.  
  
```  
USE master;  
OPEN MASTER KEY DECRYPTION BY PASSWORD = '43987hkhj4325tsku7';  
GO  
CLOSE MASTER KEY;  
GO  
```  
  
## See Also  
 [CREATE MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-master-key-transact-sql.md)   
 [CLOSE MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/close-master-key-transact-sql.md)   
 [BACKUP MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/backup-master-key-transact-sql.md)   
 [RESTORE MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/restore-master-key-transact-sql.md)   
 [ALTER MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-master-key-transact-sql.md)   
 [DROP MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-master-key-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)  
  
  

