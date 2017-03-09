---
title: "CREATE MASTER KEY (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-18"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "CREATE_MASTER_KEY_TSQL"
  - "MASTER_KEY_TSQL"
  - "MASTER KEY"
  - "CREATE MASTER KEY"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "encryption [SQL Server], Database Master Key"
  - "database master key [SQL Server]"
  - "CREATE MASTER KEY statement"
  - "cryptography [SQL Server], Database Master Key"
  - "database master key [SQL Server], creating"
ms.assetid: 1710a305-1a4f-48ec-836c-11ffd0356d76
caps.latest.revision: 50
ms.author: "rickbyh"
manager: "jhubbard"
---
# CREATE MASTER KEY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Creates a database master key.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Parallel Data Warehouse  
  
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'password'  
[ ; ]  
```  
  
```  
-- Syntax for Azure SQL Database and Azure SQL Data Warehouse  
  
CREATE MASTER KEY [ ENCRYPTION BY PASSWORD ='password' ]
[ ; ]  
```  
  
## Arguments  
 PASSWORD ='*password*'  
 Is the password that is used to encrypt the master key in the database. *password* must meet the Windows password policy requirements of the computer that is running the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. *password* is optional in [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] and [!INCLUDE[ssSDW_md](../../database-engine/configure/windows/includes/sssdw-md.md)].  
  
## Remarks  
 The database master key is a symmetric key used to protect the private keys of certificates and asymmetric keys that are present in the database. When it is created, the master key is encrypted by using the AES_256 algorithm and a user-supplied password. In [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] and [!INCLUDE[ssKilimanjaro](../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)], the Triple DES algorithm is used. To enable the automatic decryption of the master key, a copy of the key is encrypted by using the service master key and stored in both the database and in master. Typically, the copy stored in master is silently updated whenever the master key is changed. This default can be changed by using the DROP ENCRYPTION BY SERVICE MASTER KEY option of [ALTER MASTER KEY](../../t-sql/statements/alter-master-key-transact-sql.md). A master key that is not encrypted by the service master key must be opened by using the [OPEN MASTER KEY](../../t-sql/statements/open-master-key-transact-sql.md) statement and a password.  
  
 The is_master_key_encrypted_by_server column of the sys.databases catalog view in master indicates whether the database master key is encrypted by the service master key.  
  
 Information about the database master key is visible in the sys.symmetric_keys catalog view.  

For SQL Server and Parallel Data Warehouse, the Master Key is typically protected by the Service Master Key and at least one password. In case of the database being physically moved to a different server (log shipping, restoring backup, etc.), the database will contain a copy of the master Key encrypted by the original server Service Master Key (unless this encryption was explicitly removed using ALTER MASTER KEY DDL), and a copy of it encrypted by each password specified during either CREATE MASTER KEY or subsequent ALTER MASTER KEY DDL operations. In order to recover the Master Key, and all the data encrypted using the Master Key as the root in the key hierarchy after the database has been moved, the user will have either use OPEN MASTER KEY statement using one of the password used to protect the Master Key, restore a backup of the Master Key, or restore a backup of the original Service Master Key on the new server. 

For [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] and [!INCLUDE[ssSDW_md](../../database-engine/configure/windows/includes/sssdw-md.md)], the password protection is not considered to be a safety mechanism to prevent a data loss scenario in situations where the database may be moved from one server to another, as the Service Master Key protection on the Master Key is managed by Microsoft Azure platform. Therefore, the Maser Key password is optional in [!INCLUDE[ssSDS](../../analysis-services/multidimensional-models/includes/sssds-md.md)] and [!INCLUDE[ssSDW_md](../../database-engine/configure/windows/includes/sssdw-md.md)].
  
> [!IMPORTANT]  
>  You should back up the master key by using [BACKUP MASTER KEY](../../t-sql/statements/backup-master-key-transact-sql.md) and store the backup in a secure, off-site location.  
  
 The service master key and database master keys are protected by using the AES-256 algorithm.  
  
## Permissions  
 Requires CONTROL permission on the database.  
  
## Examples  
 The following example creates a database master key for the [!INCLUDE[ssSampleDBnormal](../../analysis-services/data-mining/includes/sssampledbnormal-md.md)] database. The key is encrypted using the password `23987hxJ#KL95234nl0zBe`.  
  
```  
-- Uses AdventureWorks  
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '23987hxJ#KL95234nl0zBe';  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/reference/system-catalog-views/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
 The following example creates a master key. The key is encrypted using the password `23987hxJ#KL95234nl0zBe`.  
  
```  
USE master;  
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '23987hxJ#KL95234nl0zBe';  
GO  
```  
  
## See Also  
 [sys.symmetric_keys &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.symmetric-keys-transact-sql.md)   
 [sys.databases &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.databases-transact-sql.md)   
 [OPEN MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/open-master-key-transact-sql.md)   
 [ALTER MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-master-key-transact-sql.md)   
 [DROP MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-master-key-transact-sql.md)   
 [CLOSE MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/close-master-key-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)  
  
  

