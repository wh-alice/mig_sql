---
title: "BACKUP CERTIFICATE (Transact-SQL) | Microsoft Docs"
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
  - "DUMP_CERTIFICATE_TSQL"
  - "BACKUP CERTIFICATE"
  - "sql13.swb.exportcertificate.f1"
  - "DUMP CERTIFICATE"
  - "BACKUP_CERTIFICATE_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "encryption [SQL Server], certificates"
  - "decryption [SQL Server], certificates"
  - "exporting certificates"
  - "certificates [SQL Server], exporting"
  - "BACKUP CERTIFICATE statement"
  - "backing up certificates [SQL Server]"
  - "decryption [SQL Server]"
  - "cryptography [SQL Server], certificates"
ms.assetid: 509b9462-819b-4c45-baae-3d2d90d14a1c
caps.latest.revision: 40
ms.author: "rickbyh"
manager: "jhubbard"
---
# BACKUP CERTIFICATE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-asdw-pdw_md](../../relational-databases/system-catalog-views/includes/tsql-appliesto-ss2008-xxxx-asdw-pdw-md.md)]

  Exports a certificate to a file.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
-- Syntax for SQL Server  
  
BACKUP CERTIFICATE certname TO FILE = 'path_to_file'  
    [ WITH PRIVATE KEY   
      (   
        FILE = 'path_to_private_key_file' ,  
        ENCRYPTION BY PASSWORD = 'encryption_password'   
        [ , DECRYPTION BY PASSWORD = 'decryption_password' ]   
      )   
    ]  
```  
  
```  
-- Syntax for Azure SQL Data Warehouse and Parallel Data Warehouse  
  
BACKUP CERTIFICATE certname TO FILE ='path_to_file'  
      WITH PRIVATE KEY   
      (   
        FILE ='path_to_private_key_file',  
        ENCRYPTION BY PASSWORD ='encryption_password'   
      )   
```  
  
## Arguments  
 *path_to_file*  
 Specifies the complete path, including file name, of the file in which the certificate is to be saved. This can be a local path or a UNC path to a network location. The default is the path of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] DATA folder.  
  
 *path_to_private_key_file*  
 Specifies the complete path, including file name, of the file in which the private key is to be saved. This can be a local path or a UNC path to a network location. The default is the path of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] DATA folder.  
  
 *encryption_password*  
 Is the password that is used to encrypt the private key before writing the key to the backup file. The password is subject to complexity checks.  
  
 *decryption_password*  
 Is the password that is used to decrypt the private key before backing up the key.  
  
## Remarks  
 If the private key is encrypted with a password in the database, the decryption password must be specified.  
  
 When you back up the private key to a file, encryption is required. The password used to protect the backed up certificate is not the same password that is used to encrypt the private key of the certificate.  
  
 To restore a backed up certificate, use the [CREATE CERTIFICATE](../../t-sql/statements/create-certificate-transact-sql.md)statement.  
  
## Permissions  
 Requires CONTROL permission on the certificate and knowledge of the password that is used to encrypt the private key. If only the public part of the certificate is backed up, requires some permission on the certificate and that the caller has not been denied VIEW permission on the certificate.  
  
## Examples  
  
### A. Exporting a certificate to a file  
 The following example exports a certificate to a file.  
  
```  
BACKUP CERTIFICATE sales05 TO FILE = 'c:\storedcerts\sales05cert';  
GO  
```  
  
### B. Exporting a certificate and a private key  
 In the following example, the private key of the certificate that is backed up will be encrypted with the password `997jkhUbhk$w4ez0876hKHJH5gh`.  
  
```  
BACKUP CERTIFICATE sales05 TO FILE = 'c:\storedcerts\sales05cert'  
    WITH PRIVATE KEY ( FILE = 'c:\storedkeys\sales05key' ,   
    ENCRYPTION BY PASSWORD = '997jkhUbhk$w4ez0876hKHJH5gh' );  
GO  
```  
  
### C. Exporting a certificate that has an encrypted private key  
 In the following example, the private key of the certificate is encrypted in the database. The private key must be decrypted with the password `9875t6#6rfid7vble7r`. When the certificate is stored to the backup file, the private key will be encrypted with the password `9n34khUbhk$w4ecJH5gh`.  
  
```  
BACKUP CERTIFICATE sales09 TO FILE = 'c:\storedcerts\sales09cert'   
    WITH PRIVATE KEY ( DECRYPTION BY PASSWORD = '9875t6#6rfid7vble7r' ,  
    FILE = 'c:\storedkeys\sales09key' ,   
    ENCRYPTION BY PASSWORD = '9n34khUbhk$w4ecJH5gh' );  
GO  
```  
  
## Examples: [!INCLUDE[ssSDWfull](../../relational-databases/security/encryption/includes/sssdwfull-md.md)] and [!INCLUDE[ssPDW](../../database-engine/configure/windows/includes/sspdw-md.md)]  
  
### D. Exporting a certificate and a private key  
 In the following example, the private key of the certificate that is backed up will be encrypted with the password `997jkhUbhk$w4ez0876hKHJH5gh`.  
  
```  
BACKUP CERTIFICATE sales05 TO FILE = '\\ServerA7\storedcerts\sales05cert'  
    WITH PRIVATE KEY ( FILE = '\\ServerA7\storedkeys\sales05key' ,   
    ENCRYPTION BY PASSWORD = '997jkhUbhk$w4ez0876hKHJH5gh' );  
GO  
```  
  
## See Also  
 [CREATE CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/create-certificate-transact-sql.md)   
 [ALTER CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-certificate-transact-sql.md)   
 [DROP CERTIFICATE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-certificate-transact-sql.md)  
  
  

