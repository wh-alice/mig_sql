---
title: "SQL Server Configuration Manager Help | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Configuration Manager, help"
ms.assetid: 6e909911-39a6-469b-b22a-3afdfd08a30b
caps.latest.revision: 28
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Server Configuration Manager Help
  Use [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager to configure [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services and configure network connectivity. To create or manage database objects, configure security, and write [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] queries, use [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]. For more information about [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], see [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Books Online.  
  
 This section contains the F1 Help topics for the dialogs in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager.  
  
> [!NOTE]  
>  [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager cannot configure versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] earlier than [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)].  
  
## Services  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager manages services that are related to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. Although many of these tasks can be accomplished using the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Windows Services dialog, is important to note that [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager performs additional operations on the services it manages, such as applying the correct permissions when the service account is changed. Using the normal Windows Services dialog to configure any of the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services might cause the service to malfunction.  
  
 Use [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager for the following tasks for services:  
  
-   Start, stop, and pause services  
  
-   Configure services to start automatically or manually, disable the services, or change other service settings  
  
-   Change the passwords for the accounts used by the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services  
  
-   Start [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] using trace flags (command line parameters)  
  
-   View the properties of services  
  
## SQL Server Network Configuration  
 Use [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager for the following tasks related to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] services on this computer:  
  
-   Enable or disable a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] network protocol  
  
-   Configure a [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] network protocol  
  
> [!NOTE]  
>  For a short tutorial about how to configure protocols and connect to the [!INCLUDE[ssDEnoversion](../../a9notintoc/includes/ssdenoversion-md.md)], see [Tutorial: Getting Started with the Database Engine](../../relational-databases/tutorials/tutorial-getting-started-with-the-database-engine.md).  
  
## SQL Server Native Client Configuration  
 [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] clients connect to [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] by using the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client network library. Use [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager for the following tasks related to client applications on this computer:  
  
-   For [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] client applications on this computer, specify the protocol order, when connecting to instances of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)].  
  
-   Configure client connection protocols.  
  
-   For [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] client applications, create aliases for instances of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], so that clients can connect using a custom connection string.  
  
 For more information about each of these tasks, see F1 help for each task.  
  
#### To open SQL Server Configuration Manager  
  
-   On the **Start** menu, point to **All Programs**, point to **Microsoft SQL Server** (version), point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.  
  
## See Also  
 [SQL Server Services](../../tools/configuration-manager/sql-server-services.md)   
 [SQL Server Network Configuration](../../tools/configuration-manager/sql-server-network-configuration.md)   
 [SQL Native Client 11.0 Configuration](../../tools/configuration-manager/sql-native-client-11.0-configuration.md)   
 [Choosing a Network Protocol](../Topic/Choosing%20a%20Network%20Protocol.md)  
  
  