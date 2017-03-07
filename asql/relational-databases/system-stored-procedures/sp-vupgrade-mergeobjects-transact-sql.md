---
title: "sp_vupgrade_mergeobjects (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "sp_vupgrade_mergeobjects"
  - "sp_vupgrade_mergeobjects_TSQL"
helpviewer_keywords: 
  - "sp_vupgrade_mergeobjects"
ms.assetid: 73257c2e-cc4c-48e7-9d66-7ef045bdd4f5
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_vupgrade_mergeobjects (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Regenerates the article-specific triggers, stored procedures, and views that are used to track and apply data changes for merge replication. Execute this procedure in the following situations:  
  
-   If an object required by replication is accidentally dropped.  
  
-   If you apply an update, such as a hotfix, that requires modification to one or more replication objects. Execute the procedure on each node after applying the update.  
  
 Executing this stored procedure does not require reinitialization of subscriptions. This procedure is not required if you install a service pack or upgrade to a new version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_vupgrade_mergeobjects [ [@login = ] 'login' ]  
    [ , [ @password = ] 'password' ]  
    [ , [ @security_mode = ] security_mode ]  
```  
  
## Arguments  
 [ **@login=**] **'***login***'**  
 Is the system administrator login to use when creating new system objects in the distribution database. *login* is **sysname**, with a default of NULL. This parameter is not required if *security_mode* is set to **1**, which is Windows Authentication.  
  
 [ **@password=**] **'***password***'**  
 Is the system administrator password to use when creating new system objects in the distribution database. *password* is **sysname**, with a default of **''** (empty string). This parameter is not required if *security_mode* is set to **1**, which is Windows Authentication.  
  
 [ **@security_mode=**] **'***security_mode***'**  
 Is the login security mode to use when creating new system objects in the distribution database. *security_mode* is **bit** with a default value of **1**. If **0**, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication will be used. If **1**, Windows Authentication will be used. [!INCLUDE[ssNoteWinAuthentication](../../integration-services/includes/ssnotewinauthentication-md.md)]  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_vupgrade_mergeobjects** is used only for merge replication.  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## See Also  
 [Replication Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/replication-stored-procedures-transact-sql.md)   
 [Upgrade Replicated Databases](../../database-engine/install/windows/upgrade-replicated-databases.md)  
  
  