---
title: "ALTER CREDENTIAL (Transact-SQL) | Microsoft Docs"
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
  - "ALTER CREDENTIAL"
  - "ALTER_CREDENTIAL_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "passwords [SQL Server], credentials"
  - "credentials [SQL Server], ALTER CREDENTIAL statement"
  - "modifying credentials"
  - "authentication [SQL Server], credentials"
  - "ALTER CREDENTIAL statement"
ms.assetid: b08899a6-c09e-4af4-91aa-a978ada79264
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# ALTER CREDENTIAL (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Changes the properties of a credential.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
ALTER CREDENTIAL credential_name WITH IDENTITY = 'identity_name'  
    [ , SECRET = 'secret' ]  
```  
  
## Arguments  
 *credential_name*  
 Specifies the name of the credential that is being altered.  
  
 IDENTITY **='***identity_name***'**  
 Specifies the name of the account to be used when connecting outside the server.  
  
 SECRET **='***secret***'**  
 Specifies the secret required for outgoing authentication. *secret* is optional.  
  
## Remarks  
 When a credential is changed, the values of both *identity_name* and *secret* are reset. If the optional SECRET argument is not specified, the value of the stored secret will be set to NULL.  
  
 The secret is encrypted by using the service master key. If the service master key is regenerated, the secret is reencrypted by using the new service master key.  
  
 Information about credentials is visible in the **sys.credentials** catalog view.  
  
## Permissions  
 Requires ALTER ANY CREDENTIAL permission. If the credential is a system credential, requires CONTROL SERVER permission.  
  
## Examples  
  
### A. Changing the password of a credential  
 The following example changes the secret stored in a credential called `Saddles`. The credential contains the Windows login `RettigB` and its password. The new password is added to the credential using the SECRET clause.  
  
```  
ALTER CREDENTIAL Saddles WITH IDENTITY = 'RettigB',   
    SECRET = 'sdrlk8$40-dksli87nNN8';  
GO  
```  
  
### B. Removing the password from a credential  
 The following example removes the password from a credential named `Frames`. The credential contains Windows login `Aboulrus8` and a password. After the statement is executed, the credential will have a NULL password because the SECRET option is not specified.  
  
```  
ALTER CREDENTIAL Frames WITH IDENTITY = 'Aboulrus8';  
GO  
```  
  
## See Also  
 [Credentials &#40;Database Engine&#41;](../../relational-databases/security/authentication-access/credentials-database-engine.md)   
 [CREATE CREDENTIAL &#40;Transact-SQL&#41;](../../t-sql/statements/create-credential-transact-sql.md)   
 [DROP CREDENTIAL &#40;Transact-SQL&#41;](../../t-sql/statements/drop-credential-transact-sql.md)   
 [ALTER DATABASE SCOPED CREDENTIAL &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-scoped-credential-transact-sql.md)   
 [CREATE LOGIN &#40;Transact-SQL&#41;](../../t-sql/statements/create-login-transact-sql.md)   
 [sys.credentials &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.credentials-transact-sql.md)  
  
  