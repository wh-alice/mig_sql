---
title: "Querying Extended Stored Procedures Installed in SQL Server | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "extended stored procedures [SQL Server], querying"
ms.assetid: e02348e6-dba6-438a-98b6-684244bb034d
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# Querying Extended Stored Procedures Installed in SQL Server
    
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureDontUse](../../database-engine/availability-groups/windows/includes/ssnotedepfuturedontuse-md.md)] Use CLR integration instead.  
  
 A [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] authenticated user can display the currently defined extended stored procedures and the name of the DLL to which each belongs by running the **sp_helpextendedproc** system procedure. For example, the following example returns the DLL to which **xp_hello** belongs:  
  
```  
sp_helpextendedproc 'xp_hello'  
```  
  
 If **sp_helpextendedproc** is executed without specifying an extended stored procedure, all the extended stored procedures and their DLLs are displayed.  
  
> [!IMPORTANT]  
>  Information will be returned for only those extended stored procedures that the logged in user owns or has permissions to. Only members of the **sysadmin** fixed server role and the **db_owner**, **db_securityadmin**, and the **db_ddladmin** fixed database roles can view information for all extended stored procedures.  
  
## See Also  
 [sp_helpextendedproc &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-helpextendedproc-transact-sql.md)   
 [sp_addextendedproc &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-addextendedproc-transact-sql.md)   
 [sp_dropextendedproc &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-dropextendedproc-transact-sql.md)  
  
  