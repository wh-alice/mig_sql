---
title: "Topologies for Web Synchronization | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Web synchronization, topologies"
  - "IIS server configuration [SQL Server replication]"
ms.assetid: 59444faf-bcb6-4421-a3df-8715753e453b
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# Topologies for Web Synchronization
  You can choose from a variety of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Web synchronization replication topologies. Common ways to configure Web synchronization include:  
  
-   Single server  
  
-   Two servers  
  
-   Multiple [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Internet Information Services (IIS) systems and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] republishing  
  
 For information about configuring Web synchronization, see [Configure Web Synchronization](../../relational-databases/replication/configure-web-synchronization.md).  
  
## Single Server  
 In the simplest topology, IIS, the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher, and the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributor all reside on a single server. Subscribers synchronize by connecting to IIS on the Publisher. The Publisher can be located behind a firewall.  
  
> [!NOTE]  
>  This configuration is recommended only for intranet scenarios. For other scenarios, it is recommended that the IIS server and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher/Distributor be on separate computers.  
  
 ![Web synchronization with a single server](../../relational-databases/replication/media/web-sync02.gif "Web synchronization with a single server")  
  
## Two Servers  
 You can place IIS on one server and configure the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher and Distributor on another server. The server running IIS can be isolated from the Internet by a firewall. Subscribers synchronize by connecting to IIS.  
  
 ![Web synchronization with two servers](../../relational-databases/replication/media/web-sync03.gif "Web synchronization with two servers")  
  
## Multiple IIS Systems and SQL Server Republishing  
 If you need to support very large numbers of Subscribers that synchronize at the same time, you can partition the work across multiple computers running IIS.  
  
 ![Web synchronization with multiple IIS servers](../../relational-databases/replication/media/web-sync04.gif "Web synchronization with multiple IIS servers")  
  
 If further load balancing is required on the computer running [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], you can create a republishing hierarchy on multiple computers. The top-level Publisher publishes data to Subscribers, which in turn republish the data, load balancing requests from the Subscribers.  
  
> [!NOTE]  
>  Subscribers can only synchronize with a specific Publisher. For example, a Subscriber to republisher A cannot synchronize with republisher B when A is not available.  
  
 ![Web synchronization with republishing](../../relational-databases/replication/media/web-sync05.gif "Web synchronization with republishing")  
  
## See Also  
 [Configure Web Synchronization](../../relational-databases/replication/configure-web-synchronization.md)   
 [Web Synchronization for Merge Replication](../../relational-databases/replication/web-synchronization-for-merge-replication.md)  
  
  