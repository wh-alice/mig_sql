---
title: "ALTER CERTIFICATE (Transact-SQL) | Microsoft Docs"
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
  - "ALTER_CERTIFICATE_TSQL"
  - "ALTER CERTIFICATE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ENCRYPTION BY PASSWORD option"
  - "encryption [SQL Server], certificates"
  - "modifying certificates"
  - "private keys [SQL Server]"
  - "ALTER CERTIFICATE statement"
  - "certificates [SQL Server], modifying"
ms.assetid: da4dc25e-72e0-4036-87ce-22de83160836
caps.latest.revision: 46
ms.author: "rickbyh"
manager: "jhubbard"
---
# ALTER CERTIFICATE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Changes the private key used to encrypt a certificate, or adds one if none is present. Changes the availability of a certificate to [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)].  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server and Azure SQL Database  
  
ALTER CERTIFICATE certificate_name   
    REMOVE PRIVATE KEY  
    |  
    WITH PRIVATE KEY ( <private_key_spec> [ ,... ] )  
    |  
    WITH ACTIVE FOR BEGIN_DIALOG = [ ON | OFF ]  
  
<private_key_spec> ::=   
    FILE = 'path_to_private_key'   
    |  
    DECRYPTION BY PASSWORD = 'key_password'   
    |  
    ENCRYPTION BY PASSWORD = 'password'   
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
ALTER CERTIFICATE certificate_name   
{  
    REMOVE PRIVATE KEY  
    |  
    WITH PRIVATE KEY (   
        FILE = '<path_to_private_key>',  
        DECRYPTION BY PASSWORD = '<key password>'  
    )}  
  
```  
  
## Arguments  
 *certificate_name*  
 Is the unique name by which the certificate is known in database.  
  
 FILE **='***path_to_private_key***'**  
 Specifies the complete path, including file name, to the private key. This parameter can be a local path or a UNC path to a network location. This file will be accessed within the security context of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service account. When you use this option, you must make sure that the service account has access to the specified file.  
  
 DECRYPTION BY PASSWORD **='***key_password***'**  
 Specifies the password that is required to decrypt the private key.  
  
 ENCRYPTION BY PASSWORD **='***password***'**  
 Specifies the password used to encrypt the private key of the certificate in the database. *password* must meet the Windows password policy requirements of the computer that is running the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For more information, see [Password Policy](../../relational-databases/security/password-policy.md).  
  
 REMOVE PRIVATE KEY  
 Specifies that the private key should no longer be maintained inside the database.  
  
 ACTIVE FOR BEGIN_DIALOG **=** { ON | OFF }  
 Makes the certificate available to the initiator of a [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] dialog conversation.  
  
## Remarks  
 The private key must correspond to the public key specified by *certificate_name*.  
  
 The DECRYPTION BY PASSWORD clause can be omitted if the password in the file is protected with a null password.  
  
 When the private key of a certificate that already exists in the database is imported from a file, the private key will be automatically protected by the database master key. To protect the private key with a password, use the ENCRYPTION BY PASSWORD phrase.  
  
 The REMOVE PRIVATE KEY option will delete the private key of the certificate from the database. You can do this when the certificate will be used to verify signatures or in [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] scenarios that do not require a private key. Do not remove the private key of a certificate that protects a symmetric key.  
  
 You do not have to specify a decryption password when the private key is encrypted by using the database master key.  
  
> [!IMPORTANT]  
>  Always make an archival copy of a private key before removing it from a database. For more information, see [BACKUP CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/backup-certificate-transact-sql.md).  
  
 The WITH PRIVATE KEY option is not available in a contained database.  
  
## Permissions  
 Requires ALTER permission on the certificate.  
  
## Examples  
  
### A. Changing the password of a certificate  
  
```  
ALTER CERTIFICATE Shipping04   
    WITH PRIVATE KEY (DECRYPTION BY PASSWORD = 'pGF$5DGvbd2439587y',  
    ENCRYPTION BY PASSWORD = '4-329578thlkajdshglXCSgf');  
GO  
```  
  
### B. Changing the password that is used to encrypt the private key  
  
```  
ALTER CERTIFICATE Shipping11   
    WITH PRIVATE KEY (ENCRYPTION BY PASSWORD = '34958tosdgfkh##38',  
    DECRYPTION BY PASSWORD = '95hkjdskghFDGGG4%');  
GO  
```  
  
### C. Importing a private key for a certificate that is already present in the database  
  
```  
ALTER CERTIFICATE Shipping13   
    WITH PRIVATE KEY (FILE = 'c:\\importedkeys\Shipping13',  
    DECRYPTION BY PASSWORD = 'GDFLKl8^^GGG4000%');  
GO  
```  
  
### D. Changing the protection of the private key from a password to the database master key  
  
```  
ALTER CERTIFICATE Shipping15   
    WITH PRIVATE KEY (DECRYPTION BY PASSWORD = '95hk000eEnvjkjy#F%');  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### E. Importing a private key for a certificate that is already present in the database  
  
```  
ALTER CERTIFICATE Shipping13   
    WITH PRIVATE KEY (FILE = '\\ServerA7\importedkeys\Shipping13',  
    DECRYPTION BY PASSWORD = 'GDFLKl8^^GGG4000%');  
GO  
```  
  
## See Also  
 [CREATE CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/create-certificate-transact-sql.md)   
 [DROP CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-certificate-transact-sql.md)   
 [BACKUP CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/backup-certificate-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)  
  
  

