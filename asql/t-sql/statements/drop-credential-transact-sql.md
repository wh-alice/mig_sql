---
title: "DROP CREDENTIAL (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2015-08-19"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DROP CREDENTIAL"
  - "DROP_CREDENTIAL_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "removing credentials"
  - "DROP CREDENTIAL statement"
  - "credentials [SQL Server], DROP CREDENTIAL statement"
  - "authentication [SQL Server], credentials"
  - "deleting credentials"
  - "dropping credentials"
ms.assetid: df22c826-317d-45a6-b078-186acb65f71e
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# DROP CREDENTIAL (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes a credential from the server.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
DROP CREDENTIAL credential_name  
```  
  
## Arguments  
 *credential_name*  
 Is the name of the credential to remove from the server.  
  
## Remarks  
 To drop the secret associated with a credential without dropping the credential itself, use [ALTER CREDENTIAL](../../t-sql/statements/alter-credential-transact-sql.md).  
  
 Information about credentials is visible in the **sys.credentials** catalog view.  
  
> [!WARNING]  
>  Proxies are associated with a credential. Deleting a credential that is used by a proxy leaves the associated proxy in an unusable state. When dropping a credential used by a proxy, delete the proxy (by using [sp_delete_proxy &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-delete-proxy-transact-sql.md) and recreate the associated proxy by using [sp_add_proxy &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-proxy-transact-sql.md).  
  
## Permissions  
 Requires ALTER ANY CREDENTIAL permission. If dropping a system credential, requires CONTROL SERVER permission.  
  
## Examples  
 The following example removes the credential called `Saddles`.  
  
```  
DROP CREDENTIAL Saddles;  
GO  
```  
  
## See Also  
 [Credentials &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/credentials-database-engine.md)   
 [CREATE CREDENTIAL &#40;Transact-SQL&#41;](../../t-sql/statements/create-credential-transact-sql.md)   
 [ALTER CREDENTIAL &#40;Transact-SQL&#41;](../../t-sql/statements/alter-credential-transact-sql.md)   
 [DROP DATABASE SCOPED CREDENTIAL &#40;Transact-SQL&#41;](../../t-sql/statements/drop-database-scoped-credential-transact-sql.md)   
 [sys.credentials &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.credentials-transact-sql.md)  
  
  