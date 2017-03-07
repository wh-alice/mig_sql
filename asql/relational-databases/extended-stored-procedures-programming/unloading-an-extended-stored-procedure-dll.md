---
title: "Unloading an Extended Stored Procedure DLL | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "extended stored procedures [SQL Server], unloading"
  - "unloading extended stored procedures"
ms.assetid: 4c75ab14-af54-4965-b376-8d75d385c941
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# Unloading an Extended Stored Procedure DLL
    
> [!IMPORTANT]  
>  [!INCLUDE[ssNoteDepFutureDontUse](../../database-engine/availability-groups/windows/includes/ssnotedepfuturedontuse-md.md)] Use CLR Integration instead.  
  
 [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] loads an extended stored procedure DLL as soon as a call is made to one of the functions of the DLL. The DLL remains loaded until the server is shut down or until the system administrator uses the DBCC statement to unload it. For example, this command unloads the **xp_hello.dll**, allowing the system administrator to copy a newer version of this file to the directory without shutting down the server:  
  
```  
DBCC xp_hello(FREE)  
```  
  
## See Also  
 [DBCC dllname &#40;FREE&#41; &#40;Transact-SQL&#41;](../../t-sql/database-console-commands/dbcc-dllname-free-transact-sql.md)  
  
  