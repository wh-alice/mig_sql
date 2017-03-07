---
title: "Removing an Extended Stored Procedure from SQL Server | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "deleting extended stored procedures"
  - "removing extended stored procedures"
  - "extended stored procedures [SQL Server], removing"
  - "dropping extended stored procedures"
ms.assetid: 7827e574-3f59-4279-9a9b-532582e041cb
caps.latest.revision: 37
ms.author: "jhubbard"
manager: "jhubbard"
---
# Removing an Extended Stored Procedure from SQL Server
    
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureDontUse](../../database-engine/availability-groups/windows/includes/ssnotedepfuturedontuse-md.md)] Use CLR Integration instead.  
  
 To drop each extended stored procedure function in a user-defined extended stored procedure DLL, a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] system administrator must run the **sp_dropextendedproc** system stored procedure, specifying the name of the function and the name of the DLL in which that function resides. For example, this command removes the function **xp_hello**, located in a DLL named xp_hello.dll, from [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
```  
sp_dropextendedproc 'xp_hello'  
```  
  
 Beginning with [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)], **sp_dropextendedproc** does not drop system extended stored procedures. Instead, the system administrator should deny EXECUTE permission on the extended stored procedure to the **public** role.  
  
## See Also  
 [sp_dropextendedproc &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dropextendedproc-transact-sql.md)  
  
  