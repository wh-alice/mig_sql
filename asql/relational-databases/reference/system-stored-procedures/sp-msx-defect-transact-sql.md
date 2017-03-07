---
title: "sp_msx_defect (Transact-SQL) | Microsoft Docs"
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
  - "sp_msx_defect"
  - "sp_msx_defect_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_msx_defect"
ms.assetid: 0dfd963a-3bc5-4b58-94f7-aec976da2883
caps.latest.revision: 24
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_msx_defect (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes the current server from multiserver operations.  
  
> [!CAUTION]  
>  **sp_msx_defect** edits the registry. Manual editing of the registry is not recommended because inappropriate or incorrect changes can cause serious configuration problems for your system. Therefore, only experienced users should use the Registry Editor program to edit the registry. For more information, see the documentation for Microsoft Windows.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_msx_defect [@forced_defection =] forced_defection  
```  
  
## Arguments  
 [ **@forced_defection =**] *forced_defection*  
 Specifies whether or not to force the defection to occur if the Master SQLServerAgent has been permanently lost due to an irreversibly corrupt **msdb** database, or no **msdb** database backup. *forced_defection*is **bit**, with a default of **0**, which indicates that no forced defection should occur. A value of **1** forces defection.  
  
 After forcing a defection by executing **sp_msx_defect**, a member of the **sysadmin** fixed server role at the Master SQLServerAgent must run the following command to complete the defection:  
  
```  
EXECUTE msdb.dbo.sp_delete_targetserver @server_name = 'tsx-server', @post_defection =  0;  
```  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 When **sp_msx_defect** properly completes, a message is returned.  
  
## Permissions  
 To execute this stored procedure, a user must be a member of the **sysadmin** fixed server role.  
  
## See Also  
 [sp_msx_enlist &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-msx-enlist-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  