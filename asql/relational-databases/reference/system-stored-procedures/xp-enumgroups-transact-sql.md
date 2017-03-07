---
title: "xp_enumgroups (Transact-SQL) | Microsoft Docs"
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
  - "xp_enumgroups_TSQL"
  - "xp_enumgroups"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "xp_enumgroups"
ms.assetid: 0bd3ed36-e260-469c-a5ff-b033fb9ea59d
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# xp_enumgroups (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Provides a list of local Microsoft Windows groups or a list of global groups that are defined in a specified Windows domain.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
xp_enumgroups [ 'domain_name' ]  
```  
  
## Arguments  
 **'** *domain_name* **'**  
 Is the name of the Windows domain for which to enumerate a list of global groups. *domain_name* is **sysname**, with a default of NULL.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**group**|**sysname**|Name of the Windows group|  
|**comment**|**sysname**|Description of the Windows group provided by Windows|  
  
## Remarks  
 If *domain_name* is the name of the Windows-based computer that an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] is running on, or no domain name is specified, **xp_enumgroups** enumerates the local groups from the computer that is running [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
 **xp_enumgroups** cannot be used when an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] is running on Windows 98.  
  
## Permissions  
 Requires membership in the **db_owner** fixed database role in the **master** database, or membership in the **sysadmin** fixed server role.  
  
## Examples  
 The following example lists the groups in the `sales` domain.  
  
```  
EXEC xp_enumgroups 'sales';  
```  
  
## See Also  
 [sp_grantlogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-grantlogin-transact-sql.md)   
 [sp_revokelogin &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-revokelogin-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [General Extended Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/general-extended-stored-procedures-transact-sql.md)   
 [xp_loginconfig &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/xp-loginconfig-transact-sql.md)   
 [xp_logininfo &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/xp-logininfo-transact-sql.md)  
  
  