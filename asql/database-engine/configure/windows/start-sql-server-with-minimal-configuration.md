---
title: "Start SQL Server with Minimal Configuration | Microsoft Docs"
ms.custom: ""
ms.date: "2017-01-20"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "minimal configuration [SQL Server]"
  - "starting SQL Server, minimal configuration"
ms.assetid: 4d733c99-28b3-42d8-b7f6-7b943b548173
caps.latest.revision: 27
ms.author: "rickbyh"
manager: "jhubbard"
---
# Start SQL Server with Minimal Configuration
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  If you have configuration problems that prevent the server from starting, you can start an instance of [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] by using the minimal configuration startup option. This is the startup option **-f**. Starting an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] with minimal configuration automatically puts the server in single-user mode.  
  
 When you start an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] in minimal configuration mode, note the following:  
  
-   Only a single user can connect, and the `CHECKPOINT` process is not executed.  
  
-   Remote access and read-ahead are disabled.  
  
-   Startup stored procedures do not run.  

-   `tempdb` is configured at the smallest possible size.
  
 After the server has been started with minimal configuration, you should change the appropriate server option value or values, stop, and then restart the server.  
  
> [!IMPORTANT]  
>  Use the **sqlcmd** utility and the dedicated administrator connection (DAC) to connect to [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. If you use a typical connection, stop the SQL Server Agent service before connecting to an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] in minimal configuration mode. Otherwise, the SQL Server Agent service uses the connection, thereby blocking it.  
  
## See Also  
 [Start, Stop, or Pause the SQL Server Agent Service](../Topic/Start,%20Stop,%20or%20Pause%20the%20SQL%20Server%20Agent%20Service.md)   
 [Diagnostic Connection for Database Administrators](../../../database-engine/configure/windows/diagnostic-connection-for-database-administrators.md)   
 [sqlcmd Utility](../../../tools/sqlcmd-utility.md)   
 [Server Configuration Options &#40;SQL Server&#41;](../../../database-engine/configure/windows/server-configuration-options-sql-server.md)   
 [sp_configure &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md)   
 [Database Engine Service Startup Options](../../../database-engine/configure/windows/database-engine-service-startup-options.md)  
  
  