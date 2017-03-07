---
title: "sp_dbfixedrolepermission (Transact-SQL) | Microsoft Docs"
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
  - "sp_dbfixedrolepermission"
  - "sp_dbfixedrolepermission_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_dbfixedrolepermission"
ms.assetid: b8c30191-f532-49cd-83f3-c271f63ce572
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_dbfixedrolepermission (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Displays the permissions of a fixed database role. **sp_dbfixedrolepermission** returns correct information in [!INCLUDE[ssVersion2000](../../../a9notintoc/includes/ssversion2000-md.md)]. The output does not reflect the changes to the permissions hierarchy that were implemented in [!INCLUDE[ssVersion2005](../../../a9notintoc/includes/ssversion2005-md.md)]. For more information, see[Permissions &#40;Database Engine&#41;](../../../relational-databases/security/permissions-database-engine.md).  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_dbfixedrolepermission [ [ @rolename = ] 'role' ]  
```  
  
## Arguments  
 [ **@rolename =** ] **'***role***'**  
 Is the name of a valid [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] fixed database role. *role* is **sysname**, with a default of NULL. If *role* is not specified, the permissions for all fixed database roles are displayed.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**DbFixedRole**|**sysname**|Name of the fixed database role|  
|**Permission**|**nvarchar(70)**|Permissions associated with **DbFixedRole**|  
  
## Remarks  
 To display a list of the fixed database roles, execute **sp_helpdbfixedrole**. The following table shows the fixed database roles.  
  
|Fixed database role|Description|  
|-------------------------|-----------------|  
|**db_owner**|Database owners|  
|**db_accessadmin**|Database access administrators|  
|**db_securityadmin**|Database security administrators|  
|**db_ddladmin**|Database data definition language (DDL) administrators|  
|**db_backupoperator**|Database backup operators|  
|**db_datareader**|Database data readers|  
|**db_datawriter**|Database data writers|  
|**db_denydatareader**|Database deny data readers|  
|**db_denydatawriter**|Database deny data writers|  
  
 Members of the **db_owner** fixed database role have the permissions of all the other fixed database roles. To display the permissions for fixed server roles, execute **sp_srvrolepermission**.  
  
 The result set includes the [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] statements that can be executed, and other special activities that can be performed, by members of the database role.  
  
## Permissions  
 Requires membership in the **public** role.  
  
## Examples  
 The following query returns the permissions for all fixed database roles because it does not specify a fixed database role.  
  
```  
EXEC sp_dbfixedrolepermission;  
GO  
```  
  
## See Also  
 [Security Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/security-stored-procedures-transact-sql.md)   
 [sp_addrolemember &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addrolemember-transact-sql.md)   
 [sp_droprolemember &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-droprolemember-transact-sql.md)   
 [sp_helpdbfixedrole &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helpdbfixedrole-transact-sql.md)   
 [sp_srvrolepermission &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-srvrolepermission-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  