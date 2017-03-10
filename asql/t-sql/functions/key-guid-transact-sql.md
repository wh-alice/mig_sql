---
title: "KEY_GUID (Transact-SQL) | Microsoft Docs"
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
  - "Key_GUID_TSQL"
  - "Key_GUID"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "symmetric keys [SQL Server], GUIDs"
  - "KEY_GUID function"
  - "GUIDs [SQL Server]"
ms.assetid: 9246c7b2-7098-42c4-a222-cbf30267c46a
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# KEY_GUID (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the GUID of a symmetric key in the database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
Key_GUID( 'Key_Name' )  
```  
  
## Arguments  
 **'** *Key_Name* **'**  
 The name of a symmetric key in the database.  
  
## Return Types  
 **uniqueidentifier**  
  
## Remarks  
 If an identity value was specified when the key was created, its GUID is an MD5 hash of that identity value. If no identity value was specified, the server generated the GUID.  
  
 If the key is a temporary key, the key name must start with a number sign (#).  
  
## Permissions  
 Because temporary keys are only available in the session in which they are created, no permissions are required to access them. To access a key that is not temporary, the caller requires some permission on the key and must not have been denied VIEW permission on the key.  
  
## Examples  
 The following example returns the GUID of a symmetric key called `ABerglundKey1`.  
  
```  
SELECT Key_GUID('ABerglundKey1');  
```  
  
## See Also  
 [CREATE SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-symmetric-key-transact-sql.md)   
 [sys.symmetric_keys &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.symmetric-keys-transact-sql.md)   
 [sys.key_encryptions &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.key-encryptions-transact-sql.md)  
  
  