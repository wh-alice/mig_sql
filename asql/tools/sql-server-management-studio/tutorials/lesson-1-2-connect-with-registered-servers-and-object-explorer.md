---
title: "Connect with Registered Servers and Object Explorer | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: d6b3911f-68b4-4483-831b-df89d6400add
caps.latest.revision: 50
ms.author: "rickbyh"
manager: "jhubbard"
---
# Lesson 1-2 - Connect with Registered Servers and Object Explorer
This tutorial demonstrates the use of Registered Servers and Object Explorer.  
  
This tutorial uses the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database. To help enhance security, by default, the sample databases are not installed. For more information, see [Installing SQL Server Samples and Sample Databases](http://sqlserversamples.codeplex.com).  
  
## Connecting to Servers  
The toolbar of the Registered Servers component has buttons for the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)], [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)], [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], and [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]. You can register one or more of these server types for convenient management. Try the following exercise to register the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database.  
  
#### To register the database  
  
1.  On the Registered Servers toolbar, click **Database Engine** if you have to. (It may already be selected.)  
  
2.  Expand **Database Engine**.  
  
3.  Right-click **Local Server Groups**, and then click **New Server Registration**.  
  
4.  In the **New Server Registration** dialog box, in the **Server name** text box, type the name of your instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
5.  In the **Registered server name** box, type [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)].  
  
6.  On the **Connection Properties** tab, in the **Connect to database** list, select **\<Browse server…>**.  
  
7.  In the **Browse for Databases** dialog box, click **Yes**.  
  
8.  In the **Browse Server for Database** dialog box, select [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)], and then click **OK**.  
  
9. To verify that the server has been registered correctly, click **Test**.  
  
10. In the **New Server Registration** dialog box, click **Save**.  
  
## Connecting with Object Explorer  
Like Registered Servers, Object Explorer can connect to the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)], [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)], [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)], and [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
#### To connect with Object Explorer  
  
1.  On the toolbar of Object Explorer, click **Connect** for a list of possible connection types, and then select **Database Engine**.  
  
2.  In the **Connect to Server** dialog box, in the **Server name** text box, type the name of your instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
3.  Click **Options** and explore the choices.  
  
4.  To connect to the server, click **Connect**. If you are already connected, this action just returns you to Object Explorer and sets the focus on that server.  
  
    With Object Explorer you can administer [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Security, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent, Replication, and Database Mail. Object Explorer can only manage some of the features of [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)], [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], and [!INCLUDE[ssIS](../../../analysis-services/instances/includes/ssis-md.md)]. Each of those components has additional specialized tools.  
  
5.  In Object Explorer, expand the **Databases** folder and select [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)].  
  
    Notice that [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] presents the system databases in a separate folder.  
  
## Next Task in Lesson  
[Change the Environment Layout](../Topic/Change%20the%20Environment%20Layout.md)  
  
  
  
