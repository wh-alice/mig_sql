---
title: "sp_msx_enlist (Transact-SQL) | Microsoft Docs"
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
  - "sp_msx_enlist_TSQL"
  - "sp_msx_enlist"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_msx_enlist"
ms.assetid: ceb3b2bc-0cc4-48d8-9bdc-6a809556e35f
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_msx_enlist (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Adds the current server to the list of available servers on the master server.  
  
> [!CAUTION]  
>  The **sp_msx_enlist** stored procedure edits the registry. Manual editing of the registry is not recommended because inappropriate or incorrect changes can cause serious configuration problems for your system. Therefore, only experienced users should use the Registry Editor program to edit the registry. For more information, see the Microsoft Windows documentation.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_msx_enlist [@msx_server_name =] 'msx_server'   
     [, [@location =] 'location']  
```  
  
## Arguments  
 [ **@msx_server_name =**] **'***msx_server***'**  
 The name of the multiserver administration (master) server. *msx_server* is **sysname**, with no default.  
  
 [ **@location =**] **'***location***'**  
 The location of the target server to add. *location* is **nvarchar(100)**, with a default of NULL.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Permissions  
 Permissions to execute this procedure default to members of the **sysadmin** fixed server role.  
  
## Examples  
 The following example enlists the current server into the `AdventureWorks1` master server. The location for the current server is `Building 21, Room 309, Rack 5`.  
  
```  
USE msdb ;  
GO  
  
EXEC dbo.sp_msx_enlist N'AdventureWorks1',   
    N'Building 21, Room 309, Rack 5' ;  
GO  
```  
  
## See Also  
 [sp_msx_defect &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-msx-defect-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)   
 [xp_cmdshell &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/xp-cmdshell-transact-sql.md)  
  
  