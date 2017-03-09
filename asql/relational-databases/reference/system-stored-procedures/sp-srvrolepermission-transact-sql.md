---
title: "sp_srvrolepermission (Transact-SQL) | Microsoft Docs"
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
  - "sp_srvrolepermission_TSQL"
  - "sp_srvrolepermission"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_srvrolepermission"
ms.assetid: 5709667f-e3e4-48a2-93ec-af5e22a2ac58
caps.latest.revision: 32
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_srvrolepermission (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Displays the permissions of a fixed server role.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_srvrolepermission [ [ @srvrolename = ] 'role']  
```  
  
## Arguments  
 [ **@srvrolename =** ] **'***role***'**  
 Is the name of the fixed server role for which permissions are returned. *role* is **sysname**, with a default of NULL. If no role is specified, the permissions for all fixed server roles are returned. *role* can have one of the following values.  
  
|Value|Description|  
|-----------|-----------------|  
|**sysadmin**|System administrators|  
|**securityadmin**|Security administrators|  
|**serveradmin**|Server administrators|  
|**setupadmin**|Setup administrators|  
|**processadmin**|Process administrators|  
|**diskadmin**|Disk administrators|  
|**dbcreator**|Database creators|  
|**bulkadmin**|Can execute BULK INSERT statements|  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**ServerRole**|**sysname**|Name of a fixed server role|  
|**Permission**|**sysname**|Permission associated with **ServerRole**|  
  
## Remarks  
 The permissions listed include the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] statements that can be executed, and other special activities that can be performed by members of the fixed server role. To display a list of the fixed server roles, execute **sp_helpsrvrole**.  
  
 The **sysadmin** fixed server role has the permissions of all the other fixed server roles.  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
 The following query returns the permissions associated with the `sysadmin` fixed server role.  
  
```  
EXEC sp_srvrolepermission 'sysadmin';  
GO  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [sp_addsrvrolemember &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addsrvrolemember-transact-sql.md)   
 [sp_dropsrvrolemember &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-dropsrvrolemember-transact-sql.md)   
 [sp_helpsrvrole &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpsrvrole-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  