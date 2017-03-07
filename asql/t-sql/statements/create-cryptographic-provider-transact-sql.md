---
title: "CREATE CRYPTOGRAPHIC PROVIDER (Transact-SQL) | Microsoft Docs"
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
  - "CREATE_CRYPTOGRAPHIC_TSQL"
  - "CRYPTOGRAPHIC PROVIDER"
  - "PROVIDER_TSQL"
  - "CREATE CRYPTOGRAPHIC"
  - "CREATE CRYPTOGRAPHIC PROVIDER"
  - "CRYPTOGRAPHIC_PROVIDER_TSQL"
  - "CREATE_CRYPTOGRAPHIC_PROVIDER_TSQL"
  - "PROVIDER"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "33085 (Database Engine error)"
  - "CREATE CRYPTOGRAPHIC PROVIDER statement"
  - "33032 (Database Engine error)"
ms.assetid: 059a39a6-9d32-4d3f-965b-0a1ce75229c7
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# CREATE CRYPTOGRAPHIC PROVIDER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Creates a cryptographic provider within [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] from an Extensible Key Management (EKM) provider.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
CREATE CRYPTOGRAPHIC PROVIDER provider_name   
    FROM FILE = path_of_DLL  
```  
  
## Arguments  
 *provider_name*  
 Is the name of the Extensible Key Management provider.  
  
 *path_of_DLL*  
 Is the path of the .dll file that implements the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Extensible Key Management interface. When using the **SQL Server Connector for Microsoft Azure Key Vault** the default location is **'C:\Program Files\Microsoft SQL Server Connector for Microsoft Azure Key Vault\Microsoft.AzureKeyVaultService.EKM.dll'**.  
  
## Remarks  
 All keys created by a provider will reference the provider by its GUID. The GUID is retained across all versions of the DLL.  
  
 The DLL that implements SQLEKM interface must be digitally signed by using any certificate. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will verify the signature. This includes its certificate chain, which must have its root installed at the **Trusted Root Cert Authorities** location on a Windows system. If the signature is not verified correctly, the CREATE CRYPTOGRAPHIC PROVIDER statement will fail. For more information about certificates and certificate chains, see [SQL Server Certificates and Asymmetric Keys](../../relational-databases/security/sql-server-certificates-and-asymmetric-keys.md).  
  
 When an EKM provider dll does not implement all of the necessary methods, CREATE CRYPTOGRAPHIC PROVIDER can return error 33085:  
  
 `One or more methods cannot be found in cryptographic provider library '%.*ls'.`  
  
 When the header file used to create the EKM provider dll is out of date, CREATE CRYPTOGRAPHIC PROVIDER can return error 33032:  
  
 `SQL Crypto API version '%02d.%02d' implemented by provider is not supported. Supported version is '%02d.%02d'.`  
  
## Permissions  
 Requires CONTROL SERVER permission or membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example creates a cryptographic provider called `SecurityProvider` in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] from a .dll file. The .dll file is named `c:\SecurityProvider\SecurityProvider_v1.dll` and it is installed on the server. The provider's certificate must first be installed on the server.  
  
```  
-- Install the provider  
CREATE CRYPTOGRAPHIC PROVIDER SecurityProvider  
    FROM FILE = 'C:\SecurityProvider\SecurityProvider_v1.dll';  
```  
  
## See Also  
 [Extensible Key Management &#40;EKM&#41;](../../relational-databases/security/encryption/extensible-key-management-ekm.md)   
 [ALTER CRYPTOGRAPHIC PROVIDER &#40;Transact-SQL&#41;](../../t-sql/statements/alter-cryptographic-provider-transact-sql.md)   
 [DROP CRYPTOGRAPHIC PROVIDER &#40;Transact-SQL&#41;](../../t-sql/statements/drop-cryptographic-provider-transact-sql.md)   
 [CREATE SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-symmetric-key-transact-sql.md)   
 [Extensible Key Management Using Azure Key Vault &#40;SQL Server&#41;](../../relational-databases/security/encryption/extensible-key-management-using-azure-key-vault-sql-server.md)  
  
  