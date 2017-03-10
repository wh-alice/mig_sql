---
title: "High Availability (Reporting Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "high availability [SQL Server], Reporting Services"
  - "high availability [Reporting Services]"
  - "Reporting Services, high availability"
ms.assetid: 50e0813f-f591-4688-9cd1-e6389a3808e5
caps.latest.revision: 16
ms.author: "asaxton"
manager: "erikre"
---
# High Availability (Reporting Services)
  A [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] report server is a stateless server that stores application data, content, properties, and session information in two [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] relational databases. As such, the best way to ensure the availability of [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] functionality is to do the following:  
  
-   Use the high availability features of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] to maximize the uptime of the report server databases. If you configure a [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] instance to run in a failover cluster, you can select that instance when you create a report server database.  
  
-   Use [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] with the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] databases and for data sources, as possible. For more information, see [Reporting Services with Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/reporting-services-with-always-on-availability-groups-sql-server.md).  
  
-   Configure multiple report servers to run in a scale-out deployment, where all the servers share a single report server database. Deploying multiple report server instances, preferably on different servers, in a scale-out deployment can help provide uninterrupted service in the event one of the report server instances goes down.  
  
 A scale-out deployment provides a way to share a database. If one report server goes down, other servers in the same deployment will continue to work.  
  
 [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] is not cluster-aware. By itself, a scale-out deployment does not provide load balancing; it does not detect the processing loads on a report server and route new processing requests to the least busy server. It does not re-route processing requests that failed before completion. To get load balancing features, you must configure load balancing for the Web servers that host the report servers, and then configure the report servers in a scale-out deployment so that they share the same report server database.  
  
 The Report Server Web service and Windows service are tightly integrated and run together as a single report server instance. You cannot configure availability for one service separately from the other.  
  
## See Also  
 [High Availability Solutions &#40;SQL Server&#41;](../../../sql-server/failover-clusters/high-availability-solutions-sql-server.md)   
 [Scale-out Deployment  - Reporting Services Native mode &#40;Configuration Manager&#41;](http://msdn.microsoft.com/en-US/library/ms181357(SQL.130).aspx)  
  
  