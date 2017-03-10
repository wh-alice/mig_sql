---
title: "Integration Services Service (SSIS Service) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Integration Services service, about Integration Services service"
  - "SQL Server Integration Services service"
  - "service [Integration Services],about Integration Services service"
  - "service [Integration Services]"
  - "SQL Server Integration Services, service"
ms.assetid: 2c785b3b-4a0c-4df7-b5cd-23756dc87842
caps.latest.revision: 61
ms.author: "douglasl"
manager: "jhubbard"
---
# Integration Services Service (SSIS Service)
  The topics in this section discuss the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service, a Windows service for managing [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] packages. This service is not required to create, save, and run Integration Services packages. [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] supports the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service for backward compatibility with earlier releases of [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)].  
  
 Starting in [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)], [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] stores objects, settings, and operational data in the **SSISDB** database for projects that you’ve deployed to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server using the project deployment model. The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server, which is an instance of the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Database Engine, hosts the database. For more information about the database, see [SSIS Catalog](../../integration-services/service/ssis-catalog.md). For more information about deploying projects to the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] server, see [Deploy Projects to Integration Services Server](../../integration-services/packages/deploy-projects-to-integration-services-server.md).  
  
## Management Capabilities  
 The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is a Windows service for managing [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] packages. The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is available only in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
 Running the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service provides the following management capabilities:  
  
-   Starting remote and locally stored packages  
  
-   Stopping remote and locally running packages  
  
-   Monitoring remote and locally running packages  
  
-   Importing and exporting packages  
  
-   Managing package storage  
  
-   Customizing storage folders  
  
-   Stopping running packages when the service is stopped  
  
-   Viewing the Windows Event log  
  
-   Connecting to multiple [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] servers  
  
## Startup Type for Integration Services Service  
 The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is installed when you install the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] component of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. By default, the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is started and the startup type of the service is set to automatic. The service must be running to monitor the packages that are stored in the [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Package Store. The [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Package Store can be either the msdb database in an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or the designated folders in the file system.  
  
 The [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] service is not required if you only want to design and execute [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] packages. However, the service is required to list and monitor packages using [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
## Related Tasks  
  
-   [Set the Properties of the Integration Services Service](../../integration-services/service/set-the-properties-of-the-integration-services-service.md)  
  
-   [View Events for the Integration Services Service](../../integration-services/service/view-events-for-the-integration-services-service.md)  
  
  