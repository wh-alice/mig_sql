---
title: "sp_dropextendedproc (Transact-SQL) | Microsoft Docs"
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
  - "sp_dropextendedproc"
  - "sp_dropextendedproc_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_dropextendedproc"
ms.assetid: dd93af2c-1b7d-4e39-af23-2d21d270a381
caps.latest.revision: 36
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_dropextendedproc (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Drops an extended stored procedure.  
  
> [!NOTE]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)] Use [CLR Integration](../Topic/Common%20Language%20Runtime%20\(CLR\)%20Integration%20Overview.md) instead.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_dropextendedproc [ @functname = ] 'procedure'   
```  
  
## Arguments  
 [ **@functname =**] **'***procedure***'**  
 Is the name of the extended stored procedure to drop. *procedure* is **nvarchar(517)**, with no default.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 Executing **sp_dropextendedproc** drops the user-defined extended stored procedure name from the [sys.objects](../../relational-databases/system-catalog-views/sys.objects-transact-sql.md) catalog view and removes the entry from the [sys.extended_procedures](../../relational-databases/system-catalog-views/sys.extended-procedures-transact-sql.md) catalog view. This stored procedure can be run only in the **master** database.  
  
 In [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]**sp_dropextendedproc** does not drop system extended stored procedures. Instead, the system administrator should deny EXECUTE permission on the extended stored procedure to the **public** role.  
  
 **sp_dropextendedproc** cannot be executed inside a transaction.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_dropextendedproc**.  
  
## Examples  
 The following example drops the `xp_hello` extended stored procedure.  
  
> [!NOTE]  
>  This extended stored procedure must already exist, or the example will return an error message.  
  
```  
USE master;  
GO  
EXEC sp_dropextendedproc 'xp_hello';  
```  
  
## See Also  
 [sp_addextendedproc &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-addextendedproc-transact-sql.md)   
 [sp_helpextendedproc &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helpextendedproc-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  