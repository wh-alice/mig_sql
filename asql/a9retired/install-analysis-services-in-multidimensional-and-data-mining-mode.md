---
title: "Install Analysis Services in Multidimensional and Data Mining Mode | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "installing Analysis Services, about installing Analysis Services"
  - "installing Analysis Services"
  - "SSAS, installing"
  - "Analysis Services, installing"
  - "SQL Server Analysis Services, installing"
ms.assetid: 8a1f33e8-2bd6-4fb8-bd46-c86f2a067f60
caps.latest.revision: 49
ms.author: "heidist"
manager: "erikre"
robots: noindex,nofollow
---
# Install Analysis Services in Multidimensional and Data Mining Mode
  [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] provides online analytical processing (OLAP) and data mining functionality for business intelligence applications. In this release, support for OLAP databases and data mining models is available when you install [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] in *Multidimensional mode*. Multidimensional mode is one of three server modes that [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] runs in. It is the default mode. If you install [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] using default values, you will get an instance that runs multidimensional databases and data mining models.  
  
 [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] is a multi-instance feature, which means that you can install more than one instance [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] on a single computer, or run a new instance of [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] side-by-side an earlier version. Server mode is specific to an instance. Using other modes requires that you install additional instances of the server.  
  
 You can install [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] by itself or with other components. If you install just [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)], the following features are installed when you select **Analysis Services** on the Feature Selection page of the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Installation Wizard:  
  
-   [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] server for running [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] databases and data mining models  
  
-   Data providers used for [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] data access to source databases  
  
-   SQL Server Configuration Manager  
  
## Choosing additional features  
 Analysis Services OLAP and data warehouse solutions will require the installation of additional [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] components to enable the development, deployment, and administration of [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] databases. The following additional features are options for many typical user scenarios:  
  
-   [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], used to create and view Analysis Services data structures and data mining models.  
  
-   Client tools connectivity components, used for communication between clients and servers, including network libraries for DB-Library, ODBC, and OLE DB.  
  
-   [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)], a set of graphical and programmable objects for moving, copying, and transforming data.  
  
-   Management tools, including [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Configuration Manager, [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], [!INCLUDE[ssSqlProfiler](../a9retired/includes/sssqlprofiler-md.md)], and Replication Monitor.  
  
## Installation Tasks  
 Installation tasks include the following:  
  
|Links|Tasks|  
|-----------|-----------|  
|[Hardware and Software Requirements for Installing SQL Server 2016](../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md) and [Configure Windows Service Accounts and Permissions](../database-engine/configure/windows/configure-windows-service-accounts-and-permissions.md).|Before you run Setup, check prerequisites for installing [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] and determine which account you will use to provision the server.|  
|[Install SQL Server 2016 from the Installation Wizard &#40;Setup&#41;](../database-engine/install/windows/install-sql-server-from-the-installation-wizard-setup.md).|Run SQL Server Setup to install the software.|  
|[Configure the Windows Firewall to Allow Analysis Services Access](../analysis-services/instances/configure-the-windows-firewall-to-allow-analysis-services-access.md)|After Setup is finished, you must configure firewall settings to allow remote connections to the server.|  
|[Authorizing access to objects and operations &#40;Analysis Services&#41;](../analysis-services/multidimensional-models/authorizing-access-to-objects-and-operations-analysis-services.md)|Users who access Analysis Services databases must have Read permission on at least one database on the server.|  
  
## Related Content  
 Additional setup content can be found in the following topics:  
  
 [Install Analysis Services](../analysis-services/instances/install/windows/install-analysis-services.md)  
  
 [Power Pivot for SharePoint 2010 Installation](http://msdn.microsoft.com/en-us/8d47dde7-c941-4280-a934-e2fe3f9a938f)  
  
 [Determine the Server Mode of an Analysis Services Instance](../analysis-services/instances/determine-the-server-mode-of-an-analysis-services-instance.md)  
  
 [SQL Server Data Mining Add-ins](http://go.microsoft.com/fwlink/?LinkId=197091)  
  
 By default, sample databases, sample code, and client application add-ins are not installed as part of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup. To install sample databases and sample code, see the [CodePlex Web site](http://go.microsoft.com/fwlink/?LinkId=87843).  
  
## See Also  
 [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md)   
 [Languages and Collations &#40;Analysis Services&#41;](../analysis-services/languages-and-collations-analysis-services.md)   
 [Upgrade Analysis Services](../database-engine/install/windows/upgrade-analysis-services.md)  
  
  