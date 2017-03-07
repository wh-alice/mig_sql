---
title: "Integration Services (SSIS) Development and Management Tools | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "studio environments [Integration Services]"
  - "tools [Integration Services], Business Intelligence Development Studio"
  - "Business Intelligence Development Studio, Integration Services in"
  - "SQL Server Management Studio [Integration Services]"
  - "SSIS, studio environments"
  - "SQL Server Integration Services, studio environments"
  - "tools [Integration Services], SQL Server Management Studio"
ms.assetid: 4eb73e65-d9f3-4ac6-a408-abfa85afc537
caps.latest.revision: 52
ms.author: "douglasl"
manager: "jhubbard"
---
# Integration Services (SSIS) Development and Management Tools
  [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] includes two studios for working with [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)]:  
  
-   [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] for developing the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] packages that a business solution requires. [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] provides the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] project in which you create packages.  
  
-   [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] for managing packages in a production environment.  
  
## SQL Server Data Tools  
 Working in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], you can perform the following tasks:  
  
-   Run the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Import and Export Wizard to create basic packages that copy data from a source to a destination.  
  
-   Create packages that include complex control flow, data flow, event-driven logic, and logging.  
  
-   Test and debug packages by using the troubleshooting and monitoring features in [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Designer, and the debugging features in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
-   Create configurations that update the properties of packages and package objects at run time.  
  
-   Create a deployment utility that can install packages and their dependencies on other computers.  
  
-   Save copies of packages to the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] msdb database, the [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Package Store, and the file system.  
  
 For more information about [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], see [SQL Server Data Tools](https://msdn.microsoft.com/library/hh272686.aspx).  
  
## SQL Server Management Studio  
 [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] provides the [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] service that you use to manage packages, monitor running packages, and determine impact and data lineage for [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] and [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] objects.  
  
 Working in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], you can perform the following tasks:  
  
-   Create folders to organize packages in a way that is meaningful to your organization.  
  
-   Run packages that are stored on the local computer by using the Execute Package utility.  
  
-   Run the Execute Package utility to generate a command line to use when you run the **dtexec** command prompt utility (dtexec.exe).  
  
-   Import and export packages to and from the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] msdb database, the [!INCLUDE[ssIS](../a9retired/includes/ssis-md.md)] Package Store, and the file system.  
