---
title: "SYMKEYPROPERTY (Transact-SQL) | Microsoft Docs"
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
  - "SYMKEYPROPERTY_TSQL"
  - "SYMKEYPROPERTY"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "SYMKEYPROPERTY"
ms.assetid: 3d1f7075-3a3c-4660-8cd0-ed938b86fecd
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# SYMKEYPROPERTY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the algorithm of a symmetric key created from an EKM module.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
SYMKEYPROPERTY ( Key_ID , 'algorithm_desc' | 'string_sid' | 'sid' )  
```  
  
## Arguments  
 *Key_ID*  
 Is the Key_ID of a symmetric key in the database. To find the Key_ID when you only know the key name, use SYMKEY_ID. *Key_ID* is data type **int**.  
  
 **'**algorithm_desc**'**  
 Specifies that the output returns the algorithm description of the symmetric key. Only available for symmetric keys created from an EKM module.  
  
## Return Types  
 **sql_variant**  
  
## Permissions  
 Requires some permission on the symmetric key and that the caller has not been denied VIEW permission on the symmetric key.  
  
## Examples  
 The following example returns the algorithm of the symmetric key with Key_ID 256.  
  
```  
SELECT SYMKEYPROPERTY(256, 'algorithm_desc') AS Algorithm ;  
GO  
```  
  
## See Also  
 [ASYMKEY_ID &#40;Transact-SQL&#41;](../../t-sql/functions/asymkey-id-transact-sql.md)   
 [ALTER SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-symmetric-key-transact-sql.md)   
 [DROP SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-symmetric-key-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)   
 [sys.symmetric_keys &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.symmetric-keys-transact-sql.md)   
 [Security Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/security-catalog-views-transact-sql.md)   
 [KEY_ID &#40;Transact-SQL&#41;](../../t-sql/functions/key-id-transact-sql.md)   
 [ASYMKEYPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/asymkeyproperty-transact-sql.md)  
  
  