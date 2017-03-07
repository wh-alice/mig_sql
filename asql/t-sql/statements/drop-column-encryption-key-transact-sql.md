---
title: "DROP COLUMN ENCRYPTION KEY (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-02"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DROP COLUMN ENCRYPTION"
  - "DROP COLUMN ENCRYPTION KEY"
  - "DROP_COLUMN_ENCRYPTION_TSQL"
  - "DROP_COLUMN_ENCRYPTION_KEY_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "DROP COLUMN ENCRYPTION KEY statement"
  - "column encryption key, drop"
ms.assetid: 86415302-1383-4d36-9fc7-f780831a2d37
caps.latest.revision: 10
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP COLUMN ENCRYPTION KEY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Drops a column encryption key from a database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DROP COLUMN ENCRYPTION KEY key_name [;]  
```  
  
## Arguments  
 *key_name*  
 Is the name by which the column encryption key to be dropped from the database.  
  
## Remarks  
 A column encryption key cannot be dropped if it is used to encrypt any column in the database. All columns using the column encryption key must first be dropped.  
  
## Permissions  
 Requires **ALTER ANY COLUMN ENCRYPTION KEY** permission on the database.  
  
## Examples  
  
### A. Dropping a column encryption key  
 The following example drops a column encryption key called `MyCEK`.  
  
```  
DROP COLUMN ENCRYPTION KEY MyCEK;  
GO  
```  
  
## See Also  
 [Always Encrypted &#40;Database Engine&#41;](../../relational-databases/security/encryption/always-encrypted-database-engine.md)   
 [CREATE COLUMN ENCRYPTION KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-column-encryption-key-transact-sql.md)   
 [ALTER COLUMN ENCRYPTION KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-column-encryption-key-transact-sql.md)   
 [CREATE COLUMN MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-column-master-key-transact-sql.md)  
  
  