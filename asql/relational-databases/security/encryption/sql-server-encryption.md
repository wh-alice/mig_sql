---
title: "SQL Server Encryption | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-05-03"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "encryption [SQL Server], about encryption"
  - "security [SQL Server], encryption"
  - "cryptography [SQL Server], about cryptography"
ms.assetid: ead0150e-4943-4ad5-84c8-36f85c7278f4
caps.latest.revision: 21
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Server Encryption
  Encryption is the process of obfuscating data by the use of a key or password. This can make the data useless without the corresponding decryption key or password. Encryption does not solve access control problems. However, it enhances security by limiting data loss even if access controls are bypassed. For example, if the database host computer is misconfigured and a hacker obtains sensitive data, that stolen information might be useless if it is encrypted.  
  
 You can use encryption in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] for connections, data, and stored procedures. The following table contains more information about encryption in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
> [!IMPORTANT]  
>  Although encryption is a valuable tool to help ensure security, it should not be considered for all data or connections. When you are deciding whether to implement encryption, consider how users will access data. If users access data over a public network, data encryption might be required to increase security. However, if all access involves a secure intranet configuration, encryption might not be required. Any use of encryption should also include a maintenance strategy for passwords, keys, and certificates.  
  
> [!NOTE]  
>  The latest information about Transport Level Security (TSL1.2) is available at [TLS 1.2 support for Microsoft SQL Server](https://support.microsoft.com/kb/3135244).  
  
## In This Section  
 [Encryption Hierarchy](../../../relational-databases/security/encryption/encryption-hierarchy.md)  
 Information about the encryption hierarchy in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 [Choose an Encryption Algorithm](../../../relational-databases/security/encryption/choose-an-encryption-algorithm.md)  
 Information about how to select an effective encrypting algorithm.  
  
 [Transparent Data Encryption &#40;TDE&#41;](../../../relational-databases/security/encryption/transparent-data-encryption-tde.md)  
 General information about how to encrypt data transparently.  
  
 [SQL Server and Database Encryption Keys &#40;Database Engine&#41;](../../../relational-databases/security/encryption/sql-server-and-database-encryption-keys-database-engine.md)  
 In [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], encryption keys include a combination of public, private, and symmetric keys that are used to protect sensitive data. This section explains how to implement and manage encryption keys.  
  
 [Always Encrypted &#40;Database Engine&#41;](../../../relational-databases/security/encryption/always-encrypted-database-engine.md)  
 Ensuring on-premises database administrators, cloud database operators, or other high-privileged, but unauthorized users, cannot access the encrypted data.  
  
 [Dynamic Data Masking](../../../relational-databases/security/dynamic-data-masking.md)  
 Limiting sensitive data exposure by masking it to non-privileged users.  
  
 [SQL Server Certificates and Asymmetric Keys](../../../relational-databases/security/sql-server-certificates-and-asymmetric-keys.md)  
 Information about using Public Key Cryptography.  
  
## Related Content  
 [Securing SQL Server](../../../relational-databases/security/securing-sql-server.md)  
 Overview of how to help secure the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] platform, and how to work with users and securable objects.  
  
 [Cryptographic Functions &#40;Transact-SQL&#41;](../../../t-sql/functions/cryptographic-functions-transact-sql.md)  
 Information about how to implement cryptographic functions.  
  
 [ENCRYPTBYPASSPHRASE &#40;Transact-SQL&#41;](../../../t-sql/functions/encryptbypassphrase-transact-sql.md)  
 Information about how to use a password to encrypt data.  
  
 [ENCRYPTBYKEY &#40;Transact-SQL&#41;](../../../t-sql/functions/encryptbykey-transact-sql.md)  
 Information about how to use a symmetric key to encrypt data.  
  
 [ENCRYPTBYASYMKEY &#40;Transact-SQL&#41;](../../../t-sql/functions/encryptbyasymkey-transact-sql.md)  
 Information about how to use an asymmetric key to encrypt data.  
  
 [ENCRYPTBYCERT &#40;Transact-SQL&#41;](../../../t-sql/functions/encryptbycert-transact-sql.md)  
 Information about how to use a certificate to encrypt data.  
  
## External Resources  
 [Microsoft TechNet: SQL Server TechCenter: SQL Server 2005 Security and Protection](https://msdn.microsoft.com/sqlserver/bb895847.aspx)  
 Current information about [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] security.  
  
## See Also  
 [sys.key_encryptions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.key-encryptions-transact-sql.md)   
 [SQL Server and Database Encryption Keys &#40;Database Engine&#41;](../../../relational-databases/security/encryption/sql-server-and-database-encryption-keys-database-engine.md)   
 [Back Up and Restore Reporting Services Encryption Keys](../../../reporting-services/install/windows/ssrs-encryption-keys-back-up-and-restore-encryption-keys.md)  
  
  