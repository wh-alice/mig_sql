---
title: "sysmail_update_profile_sp (Transact-SQL) | Microsoft Docs"
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
  - "sysmail_update_profile_sp"
  - "sysmail_update_profile_sp_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysmail_update_profile_sp"
ms.assetid: eaedf7ce-a8d5-4ab9-99e0-d77d5be19e90
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# sysmail_update_profile_sp (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Changes the description or name of a Database Mail profile.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sysmail_update_profile_sp [ [ @profile_id = ] profile_id , ] [ [ @profile_name = ] 'profile_name' , ]  
    [ [ @description = ] 'description' ]  
```  
  
## Arguments  
 [ **@profile_id** = ] *profile_id*  
 The profile id to update. *profile_id* is **int**, with a default of NULL. At least one of *profile_id* or *profile_name* must be specified. If both are specified, the procedure changes the name of the profile.  
  
 [ **@profile_name** = ] **'***profile_name***'**  
 The name of the profile to update or the new name for the profile. *profile_name* is **sysname**, with a default of NULL. At least one of *profile_id* or *profile_name* must be specified. If both are specified, the procedure changes the name of the profile.  
  
 [ **@description** = ] **'***description***'**  
 The new description for the profile. *description* is **nvarchar(256)**, with a default of NULL.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 When both the profile id and the profile name are specified, the procedure changes the name of the profile to the provided name and updates the description for the profile. When only one of these arguments is provided, the procedure updates the description for the profile.  
  
 The stored procedure **sysmail_update_profile_sp** is in the **msdb** database and is owned by the **dbo** schema. The procedure must be executed with a three-part name if the current database is not **msdb**.  
  
## Permissions  
 Execute permissions for this procedure default to members of the **sysadmin** fixed server role.  
  
## Examples  
 **A. Changing the description of a profile**  
  
 The following example changes the description for the profile named `AdventureWorks Administrator` in the **msdb** database.  
  
```  
EXECUTE msdb.dbo.sysmail_update_profile_sp  
    @profile_name = 'AdventureWorks Administrator'  
    ,@description = 'Administrative mail profile.';  
```  
  
 **B. Changing the name and description of a profile**  
  
 The following example changes the name and description of the profile with the profile id `750`.  
  
```  
EXECUTE msdb.dbo.sysmail_update_profile_sp  
    @profile_id = 750  
    ,@profile_name = 'Operator'  
    ,@description = 'Profile to send alert e-mail to operators.';  
```  
  
## See Also  
 [Database Mail](../../../relational-databases/database-mail/database-mail.md)   
 [Database Mail Configuration Objects](../../../relational-databases/database-mail/database-mail-configuration-objects.md)   
 [Create a Database Mail Account](../../../relational-databases/database-mail/create-a-database-mail-account.md)   
 [Database Mail Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/database-mail-stored-procedures-transact-sql.md)  
  
  