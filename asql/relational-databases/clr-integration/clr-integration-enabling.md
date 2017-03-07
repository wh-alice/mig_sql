---
title: "Enabling CLR Integration | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "clr enabled option"
  - "common language runtime [SQL Server], enabling"
ms.assetid: eb3e9c64-7486-42e7-baf6-c956fb311a2c
caps.latest.revision: 19
ms.author: "jhubbard"
manager: "jhubbard"
---
# CLR Integration - Enabling
  The common language runtime (CLR) integration feature is off by default, and must be enabled in order to use objects that are implemented using CLR integration. To enable CLR integration, use the **clr enabled** option of the **sp_configure** stored procedure in [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]:  
  
```tsql  
  
sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
sp_configure 'clr enabled', 1;  
GO  
RECONFIGURE;  
GO  
```  
  
 You can disable CLR integration by setting the **clr enabled** option to 0. When you disable CLR integration, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] stops executing all CLR routines and unloads all application domains.  
  
> [!NOTE]  
>  To enable CLR integration, you must have ALTER SETTINGS server level permission, which is implicitly held by members of the **sysadmin** and **serveradmin** fixed server roles.  
  
> [!NOTE]  
>  Computers configured with large amounts of memory and a large number of processors may fail to load the CLR integration feature of SQL Server when starting the server. To address this issue, start the server by using the **-gmemory_to_reserve**[!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] service startup option, and specify a memory value large enough. For more information, see [Database Engine Service Startup Options](../../database-engine/configure/windows/database-engine-service-startup-options.md).  
  
> [!NOTE]  
>  Common language runtime (CLR) execution is not supported under lightweight pooling. Before enabling CLR integration, you must disable lightweight pooling. For more information, see [lightweight pooling Server Configuration Option](../../database-engine/configure/windows/lightweight-pooling-server-configuration-option.md).  
  
## See Also  
 [sp_configure &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)   
 [clr enabled Server Configuration Option](../../database-engine/configure/windows/clr-enabled-server-configuration-option.md)   
 [RECONFIGURE &#40;Transact-SQL&#41;](../../t-sql/language-elements/reconfigure-transact-sql.md)   
 [GRANT &#40;Transact-SQL&#41;](../../t-sql/statements/grant-transact-sql.md)   
 [Server-Level Roles](../../relational-databases/security/authentication-access/server-level-roles.md)  
  
  