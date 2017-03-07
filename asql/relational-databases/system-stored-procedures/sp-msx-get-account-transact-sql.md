---
title: "sp_msx_get_account (Transact-SQL) | Microsoft Docs"
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
  - "sp_msx_get_account_TSQL"
  - "sp_msx_get_account"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_msx_get_account"
ms.assetid: 7b478049-e2d0-4bac-865a-b97fd1d8dfbc
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_msx_get_account (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Lists information on the credential that the target server uses to log in to the master server.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_msx_get_account  
```  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 Returns the following result set:  
  
|Column Name|Type|Description|  
|-----------------|----------|-----------------|  
|msx_connection|**int**|Master server connection number.|  
|msx_credential_id|**int**|ID of the credential used for this master server connection.|  
|msx_credential_name|**sysname**|Name of the credential used for this master server connection.|  
|msx_login_name|**nvarchar(4000)**|Domain name and user name of the Windows user for the credential.|  
  
## Remarks  
 Returns an empty result set if there is no credential specified for this target server. To set the credential, use sp_msx_set_account.  
  
## Permissions  
 Requires membership in the sysadmin fixed server role.  
  
## Examples  
 The following example lists information for the credential that this target server uses to log in to the master server.  
  
```  
USE msdb ;  
GO  
  
EXECUTE dbo.sp_msx_get_account ;  
GO  
```  
  
 Here is a sample result set:  
  
 `msx_connection msx_credential_id msx_credential_name  msx_login_name`  
  
 `-------------- ----------------- -------------------- ------------------------------`  
  
 `1              65538             MsxAccount           AdventureWorks2012\MsxAccount`  
  
## See Also  
 [SQL Server Agent Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sql-server-agent-stored-procedures-transact-sql.md)   
 [CREATE CREDENTIAL &#40;Transact-SQL&#41;](../../t-sql/statements/create-credential-transact-sql.md)   
 [sp_msx_set_account &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-msx-set-account-transact-sql.md)  
  
  