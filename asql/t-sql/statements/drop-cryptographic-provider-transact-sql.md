---
title: "DROP CRYPTOGRAPHIC PROVIDER (Transact-SQL) | Microsoft Docs"
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
  - "DROP CRYPTOGRAPHIC PROVIDER"
  - "DROP_CRYPTOGRAPHIC_PROVIDER_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "DROP CRYPTOGRAPHIC PROVIDER statement"
ms.assetid: 71c55c20-439e-4897-aef5-f20e556d668f
caps.latest.revision: 12
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP CRYPTOGRAPHIC PROVIDER (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Drops a cryptographic provider within [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DROP CRYPTOGRAPHIC PROVIDER provider_name   
```  
  
## Arguments  
 *provider_name*  
 Is the name of the Extensible Key Management provider.  
  
## Remarks  
 To delete an Extensible Key Management (EKM) provider, all sessions that use the provider must be stopped.  
  
 An EKM provider can only be dropped if there are no credentials mapped to it.  
  
 If there are keys mapped to an EKM provider when it is dropped the GUIDs for the keys remain stored in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. If a provider is created later with the same key GUIDs, the keys will be reused.  
  
## Permissions  
 Requires CONTROL permission on the symmetric key.  
  
## Examples  
 The following example drops a cryptographic provider called `SecurityProvider`.  
  
```  
/* First, disable provider to perform the upgrade.  
This will terminate all open cryptographic sessions. */  
ALTER CRYPTOGRAPHIC PROVIDER SecurityProvider   
SET ENABLED = OFF;  
GO  
/* Drop the provider. */  
DROP CRYPTOGRAPHIC PROVIDER SecurityProvider;  
GO  
```  
  
## See Also  
 [Extensible Key Management &#40;EKM&#41;](../../relational-databases/security/encryption/extensible-key-management-ekm.md)   
 [CREATE CRYPTOGRAPHIC PROVIDER &#40;Transact-SQL&#41;](../../t-sql/statements/create-cryptographic-provider-transact-sql.md)   
 [ALTER CRYPTOGRAPHIC PROVIDER &#40;Transact-SQL&#41;](../../t-sql/statements/alter-cryptographic-provider-transact-sql.md)   
 [CREATE SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-symmetric-key-transact-sql.md)  
  
  