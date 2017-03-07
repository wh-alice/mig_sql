---
title: "ENCRYPTBYCERT (Transact-SQL) | Microsoft Docs"
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
  - "ENCRYPTBYCERT"
  - "ENCRYPTBYCERT_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "certificates [SQL Server], encryption"
  - "encryption [SQL Server], certificates"
  - "ENCRYPTBYCERT function"
ms.assetid: ab66441f-e2d2-4e3a-bcae-bcc09e12f3c1
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# ENCRYPTBYCERT (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Encrypts data with the public key of a certificate.  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
EncryptByCert ( certificate_ID , { 'cleartext' | @cleartext } )  
```  
  
## Arguments  
 *certificate_ID*  
 The ID of a certificate in the database. **int**.  
  
 *cleartext*  
 A string of data that will be encrypted with the certificate.  
  
 **@cleartext**  
 A variable of type **nvarchar**, **char**, **varchar**, **binary**, **varbinary**, or **nchar** containing data that will be encrypted with the public key of the certificate.  
  
## Return Types  
 **varbinary** with a maximum size of 8,000 bytes.  
  
## Remarks  
 This function encrypts data with the public key of a certificate. The ciphertext can only be decrypted with the corresponding private key. Such asymmetric transformations are very costly compared to encryption and decryption using a symmetric key. Asymmetric encryption is therefore not recommended when working with large datasets such as user data in tables.  
  
## Examples  
 This example encrypts the plaintext stored in `@cleartext` with the certificate called `JanainaCert02`. The encrypted data is inserted into table `ProtectedData04`.  
  
```  
INSERT INTO [AdventureWorks2012].[ProtectedData04]   
    VALUES ( N'Data encrypted by certificate ''Shipping04''',  
    EncryptByCert(Cert_ID('JanainaCert02'), @cleartext) );  
GO  
```  
  
## See Also  
 [DECRYPTBYCERT &#40;Transact-SQL&#41;](../../t-sql/functions/decryptbycert-transact-sql.md)   
 [CREATE CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/create-certificate-transact-sql.md)   
 [ALTER CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-certificate-transact-sql.md)   
 [DROP CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-certificate-transact-sql.md)   
 [BACKUP CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/backup-certificate-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)  
  
  