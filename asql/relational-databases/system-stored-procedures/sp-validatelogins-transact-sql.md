---
title: "sp_validatelogins (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_validatelogins"
  - "sp_validatelogins_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_validatelogins"
ms.assetid: 6ac52e21-e20d-469b-ad40-5aa091e06b61
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_validatelogins (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Reports information about Windows users and groups that are mapped to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] principals but no longer exist in the Windows environment.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_validatelogins  
```  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**SID**|**varbinary(85)**|Windows security identifier (SID) of the Windows user or group.|  
|**NT Login**|**sysname**|Name of the Windows user or group.|  
  
## Remarks  
 If the orphaned server-level principal owns a database user, the database user must be removed before the orphaned server principal can be removed. To remove a database user, use [DROP USER](../../t-sql/statements/drop-user-transact-sql.md). If the server-level principal owns securables in the database, ownership of the securables must be transferred or they must be dropped. To transfer ownership of database securables, use [ALTER AUTHORIZATION](../../t-sql/statements/alter-authorization-transact-sql.md).  
  
 To remove mappings to Windows users and groups that no longer exist, use [DROP LOGIN](../../t-sql/statements/drop-login-transact-sql.md).  
  
## Permissions  
 Requires membership in the **sysadmin** or **securityadmin** fixed server role.  
  
## Examples  
 The following example displays the Windows users and groups that no longer exist but are still granted access to an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
```  
EXEC sp_validatelogins;  
GO  
```  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [DROP USER &#40;Transact-SQL&#41;](../../t-sql/statements/drop-user-transact-sql.md)   
 [DROP LOGIN &#40;Transact-SQL&#41;](../../t-sql/statements/drop-login-transact-sql.md)   
 [ALTER AUTHORIZATION &#40;Transact-SQL&#41;](../../t-sql/statements/alter-authorization-transact-sql.md)  
  
  