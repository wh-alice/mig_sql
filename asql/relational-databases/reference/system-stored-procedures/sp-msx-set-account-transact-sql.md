---
title: "sp_msx_set_account (Transact-SQL) | Microsoft Docs"
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
  - "sp_msx_set_account"
  - "sp_msx_set_account_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_msx_set_account"
ms.assetid: 314ec720-3a37-48f7-bb6b-8d5b894bf843
caps.latest.revision: 26
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_msx_set_account (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Sets the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent master server account name and password on the target server.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_msx_set_account [ @credential_name = ] 'credential_name'  | [ @credential_id = ] credential_id  
```  
  
## Arguments  
 [ **@credential_name=** ] **'***credential_name***'**  
 The name of the credential to use to log in to the master server. The name provided must be the name of an existing credential. Either *credential_name* or *credential_id* must be specified.  
  
 [ **@credential_id=** ] *credential_id*  
 The identifier for the credential to use to log in to the master server. The identifier must be an identifier for an existing credential. Either *credential_name* or *credential_id* must be specified.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None.  
  
## Remarks  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] uses credentials to store the user name and password information that a target server uses to log in to a master server. This procedure sets the credential that [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Agent for this target server uses to log in to the master server.  
  
 The credential specified must be an existing credential. For more information about creating a credential, see [CREATE CREDENTIAL &#40;Transact-SQL&#41;](../../../t-sql/statements/create-credential-transact-sql.md).  
  
## Permissions  
 Execute permissions for **sp_msx_set_account** default to members of the **sysadmin** fixed server role.  
  
## Examples  
 The following example sets this server to use the credential `MsxAccount` to log in to the master server.  
  
```  
USE msdb ;  
GO  
  
EXECUTE dbo.sp_msx_set_account @credential_name = MsxAccount ;  
GO  
```  
  
## See Also  
 [SQL Server Agent Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sql-server-agent-stored-procedures-transact-sql.md)   
 [CREATE CREDENTIAL &#40;Transact-SQL&#41;](../../../t-sql/statements/create-credential-transact-sql.md)   
 [sp_msx_get_account &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-msx-get-account-transact-sql.md)  
  
  