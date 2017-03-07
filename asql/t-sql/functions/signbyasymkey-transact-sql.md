---
title: "SIGNBYASYMKEY (Transact-SQL) | Microsoft Docs"
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
  - "SIGNBYASYMKEY_TSQL"
  - "SIGNBYASYMKEY"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "text signing [SQL Server]"
  - "encryption [SQL Server], asymmetric keys"
  - "signing text [SQL Server]"
  - "SIGNBYASYMKEY function"
  - "asymmetric keys [SQL Server], SIGNBYASYMKEY function"
  - "cryptography [SQL Server], asymmetric keys"
  - "clear text signing"
ms.assetid: b1c46159-cc76-4205-a841-8f4a71742f80
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# SIGNBYASYMKEY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Signs plaintext with an asymmetric key  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
SignByAsymKey( Asym_Key_ID , @plaintext [ , 'password' ] )  
```  
  
## Arguments  
 *Asym_Key_ID*  
 Is the ID of an asymmetric key in the current database. *Asym_Key_ID* is**int**.  
  
 **@plaintext**  
 Is a variable of type **nvarchar**, **char**, **varchar**, or **nchar** containing data that will be signed with the asymmetric key.  
  
 *password*  
 Is the password with which the private key is protected. *password* is **nvarchar(128)**.  
  
## Return Types  
 **varbinary** with a maximum size of 8,000 bytes.  
  
## Remarks  
 Requires CONTROL permission on the asymmetric key.  
  
## Examples  
 The following example creates a table, `SignedData04`, in which to store plaintext and its signature. It next inserts a record in the table, signed with asymmetric key `PrimeKey`, which is first decrypted with password `'pGFD4bb925DGvbd2439587y'`.  
  
```  
-- Create a table in which to store the data  
CREATE TABLE [SignedData04](Description nvarchar(max), Data nvarchar(max), DataSignature varbinary(8000));  
GO  
-- Store data together with its signature  
DECLARE @clear_text_data nvarchar(max);  
set @clear_text_data = N'Important numbers 2, 3, 5, 7, 11, 13, 17,   
      19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79,  
      83, 89, 97';  
INSERT INTO [SignedData04]   
    VALUES( N'data encrypted by asymmetric key ''PrimeKey''',  
    @clear_text_data, SignByAsymKey( AsymKey_Id( 'PrimeKey' ),  
    @clear_text_data, N'pGFD4bb925DGvbd2439587y' ));  
GO  
```  
  
## See Also  
 [ASYMKEY_ID &#40;Transact-SQL&#41;](../../t-sql/functions/asymkey-id-transact-sql.md)   
 [VERIFYSIGNEDBYASYMKEY &#40;Transact-SQL&#41;](../../t-sql/functions/verifysignedbyasymkey-transact-sql.md)   
 [CREATE ASYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-asymmetric-key-transact-sql.md)   
 [ALTER ASYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-asymmetric-key-transact-sql.md)   
 [DROP ASYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-asymmetric-key-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)  
  
  