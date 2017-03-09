---
title: "Start Database Mirroring Monitor (SQL Server Management Studio) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "monitoring database mirroring [SQL Server]"
  - "Database Mirroring Monitor [SQL Server], starting"
  - "database mirroring [SQL Server], monitoring"
ms.assetid: 53165335-97ca-4f88-8e78-22f1839dee98
caps.latest.revision: 20
ms.author: "mikeray"
manager: "jhubbard"
---
# Start Database Mirroring Monitor (SQL Server Management Studio)
  The Database Mirroring Monitor is part of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Monitor, which is launched from [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
> [!NOTE]  
>  Database Mirroring Monitor is not available in every edition of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
### To launch the Database Mirroring Monitor  
  
1.  After connecting to the principal server instance, in Object Explorer, click the server name to expand the server tree.  
  
2.  Expand **Databases**, and select the database to be monitored.  
  
3.  Right-click the database, select **Tasks**, and then click **Launch Database Mirroring Monitor**.  
  
4.  In the **Database Mirroring Monitor** dialog box, click **Register Mirrored Database** to register one or more mirrored database.  
  
    > [!NOTE]  
    >  When you register a database at one partner, the database is automatically registered at the other partner. If the monitor already has connection credentials for the other partner instance, those are used to connect. Otherwise the monitor attempts to connect using Windows Authentication. If you want to change the credentials used to connect to either server instance, click **Show the Manage Server Connections dialog box when I click OK**.  
  
 For more information about Database Mirroring Monitor, see [Database Mirroring Monitor Overview](../../database-engine/database-mirroring/database-mirroring-monitor-overview.md).  
  
## See Also  
 [Database Mirroring &#40;SQL Server&#41;](../../database-engine/database-mirroring/database-mirroring-sql-server.md)   
 [Establish a Database Mirroring Session Using Windows Authentication &#40;SQL Server Management Studio&#41;](../../database-engine/database-mirroring/establish-database-mirroring-session-windows-authentication.md)  
  
  