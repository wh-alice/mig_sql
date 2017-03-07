---
title: "Column Master Key Rotation and Cleanup with Always Encrypted | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2015-11-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "column master key rotation"
  - "Always Encrypted, master key rotation"
  - "rotating column master keys"
  - "Always Encrypted, master key cleanup"
ms.assetid: 82821b7a-dbb7-4b13-b97c-1f7a2984ab3c
caps.latest.revision: 9
ms.author: "rickbyh"
manager: "jhubbard"
---
# Column Master Key Rotation and Cleanup with Always Encrypted
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  The rotation of a column master key is a process of replacing an existing column master key with the new column master key. After rotation, clean up your system by removing the values of column encryption keys, encrypted with the old column master key, from the database.  
  
 **Permissions:** Requires the `ALTER ANY COLUMN MASTER KEY` and `ALTER ANY COLUMN ENCRYPTION KEY` permissions. For more information about permissions, see [Always Encrypted &#40;Database Engine&#41;](../relational-databases/security/encryption/always-encrypted-database-engine.md).  
  
## Step 1: Provision a new column master key  
 Create a new column master key in your key store, such Windows Certificate Store, Azure Key Vault, or a hardware security module (HSM), and then define the key in the database.  
  
### Using [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)]  
 See [CREATE COLUMN MASTER KEY &#40;Transact-SQL&#41;](../t-sql/statements/create-column-master-key-transact-sql.md) for how to provision a new column master key programmatically or from command line, and for how to define it in the database by using [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)].  
  
### Using [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)]  
 You can provision and define a new column master key using [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)] using the New Column Master Key dialog. To open the dialog, in Object Explorer, navigate to the Security/Always Encrypted Keys folder under your database, right-click on Column Master Keys and select New Column Master Key.  
  
## Step 2: Encrypt column encryption keys with the new column master key  
 A column master key typically protects one or more column encryption keys - each column encryption key has an encrypted value, stored in the database, which is the product of encrypting the column encryption key with the column master key.  
  
 In this step, you need to encrypt each of the column encryption keys, protected with the column master key, you are rotating, with the new column master key and store the new encrypted value in the database. As a result, each column encryption key, affected by the rotation, will have two encrypted values: one value, encrypted with the existing column master key and a new value, encrypted with the new column master key.  
  
 You must make sure each of the column encryption keys, encrypted with the column master key, being rotated, is not encrypted with any other column master key. In other words, each column encryption key, impacted by the rotation, must have exactly one encrypted value in the database.  If any of the affected column encryption key has more than one encrypted value, you need to remove the value before you can proceed with the rotation (see Step 4 on how to remove an encrypted value of a column encryption key).  
  
### Using APIs  
 See [Always Encrypted Key Rotation – Column Master Key Rotation](http://blogs.msdn.com/b/sqlsecurity/archive/2015/08/13/always-encrypted-key-rotation-column-master-key-rotation.aspx).  
  
### Using [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)]  
  
1.  Using Object Explorer, navigate to the Security/Always Encrypted Keys/Column Master Keys folder and locate the column master key, you are rotating.  
  
2.  Right-click on the column master key and select Rotate.  
  
3.  In the Column Master Key Rotation dialog, select the name of your new column master key in the Target field.  
  
4.  Review the list of column encryption keys, protected by the existing column master keys. These keys will be affected by the rotation.  
  
5.  Click OK.  
  
## Step 3: Configure your applications with the new column master key  
 In this step, you need to make sure that all your client applications that query database columns protected with the column master key, you are rotating (i.e. database columns encrypted with a column encryption key that is encrypted with the column master key, being rotated) can access the new column master key. This step depends on the type of a key store you use to store the new column master key. For example:  
  
-   If the new column master key is a certificate, stored in Windows Certificate Store, you need to deploy the certificate to the same certificate store location (Current User or Local Machine) as the location specified in the key path of your column master key in the database. The application needs to be able to access the certificate:  
  
    -   If the certificate is stored in the Current User certificate store location, the certificate needs to be imported into the Current User store of application’s Windows identity (user).  
  
    -   If the certificate is stored in the Local Machine certificate store location, application’s Windows identity must have a permission to access the certificate.  
  
-   If the new column master key is stored in Microsoft Azure Key Vault, the application must be implemented so that it can authenticate to Azure and it has a permission to access the key.  
  
> [!NOTE]  
>  While the rotation is in this step, both the old column master key and the new column master key are valid and can be used to access the data.  
  
## Step 4: Clean up column encryption key values encrypted with the old column master key  
 Once you have configured all your applications to use the new column master key, remove the values of column encryption keys, encrypted with the old column master key, from the database. Removing old values will ensure you are ready for the next rotation (remember, each column encryption key, protected with a column master key to be rotated, must have exactly on encrypted value).  
  
 Another reason to clean up the old value, before archiving/removing the old column master key, is performance-related: when querying an encrypted column, an Always Encrypted-enabled client driver might need to attempt to decrypt two values: the old value and the new one. The driver does not know which of the two column master keys is valid in the application’s environment. Therefore, the driver will retrieve both encrypted values from the server. If decrypting one of the values fails, because it is protected with the column master key is that not available (e.g. it is the old column master key that has been removed from the store), the driver will attempt to decrypt another value using the new column master key.  
  
> [!WARNING]  
>  If you remove a value of a column encryption key before its corresponding column master key has been made available to an application, the application will not be able to the database column, encrypted with the column encryption key.  
  
### Using API's  
 See [Always Encrypted Key Rotation – Column Master Key Rotation](http://blogs.msdn.com/b/sqlsecurity/archive/2015/08/13/always-encrypted-key-rotation-column-master-key-rotation.aspx).  
  
### Using [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)]  
  
1.  Using Object Explorer, navigate to the Security/Always Encrypted Keys folder and locate your existing column master key, you are rotating.  
  
2.  Right-click on your existing column master key and select Cleanup.  
  
3.  In the Column Master Key Rotation dialog, select the name of your new column master key in the Target field.  
  
4.  Review the list of column encryption key values to be removed.  
  
5.  Click OK.  
  
## Step 5: Archive you old column master key  
 This steps depends on key archival policies in your organization.   
If you choose to remove the definition of the old column master key from the database, you can do that one of the two ways, described below.  
  
### Using [!INCLUDE[tsql](../a9notintoc/includes/tsql-md.md)]  
 Use the [DROP COLUMN MASTER KEY &#40;Transact-SQL&#41;](../t-sql/statements/drop-column-master-key-transact-sql.md) statement to remove the old column master key.  
  
### Using [!INCLUDE[ssManStudio](../a9notintoc/includes/ssmanstudio-md.md)]  
  
1.  Using Object Explorer, navigate to the Security/Always Encrypted Keys/Column Master Keys folder and locate your the column master key, to be removed from the database.  
  
2.  Right-click on the existing column master key and select Delete.  
  
3.  Click OK.  
  
## See Also  
 [Always Encrypted &#40;Database Engine&#41;](../relational-databases/security/encryption/always-encrypted-database-engine.md)   
 [Always Encrypted Wizard](../relational-databases/security/encryption/always-encrypted-wizard.md)   
 [Always Encrypted &#40;client development&#41;](../relational-databases/security/encryption/always-encrypted-client-development.md)   
 [CREATE COLUMN MASTER KEY &#40;Transact-SQL&#41;](../t-sql/statements/create-column-master-key-transact-sql.md)   
 [CREATE COLUMN ENCRYPTION KEY &#40;Transact-SQL&#41;](../t-sql/statements/create-column-encryption-key-transact-sql.md)   
 [sys.column_master_keys &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.column-master-keys-transact-sql.md)   
 [sys.column_encryption_keys  &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.column-encryption-keys-transact-sql.md)  
  
  