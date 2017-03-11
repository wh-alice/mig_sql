---
title: "Installation for SQL Server 2016 | Microsoft Docs"
ms.custom: ""
ms.date: "2016-04-13"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.portal.Installation.f1"
helpviewer_keywords: 
  - "installing SQL Server, initial installation"
  - "installation [SQL Server]"
  - "initial installation [SQL Server]"
ms.assetid: edd75f68-dc62-4479-a596-57ce8ad632e5
caps.latest.revision: 34
ms.author: "mikeray"
manager: "jhubbard"
---
# Installation for SQL Server 2016
  The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Wizard provides a single feature tree to install all [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] components:  
  
-   [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)]  
  
-   [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)]  
  
-   [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)]  
  
-   [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]  
  
-   [!INCLUDE[ssMDSshort](../../../analysis-services/includes/ssmdsshort-md.md)]  
  
-   [!INCLUDE[ssDQSnoversion](../../../data-quality-services/includes/ssdqsnoversion-md.md)]  
  
-   Connectivity components  
  
 Starting with SQL Server 2016, SQL Server Management Tools is no longer installed from  the main feature tree; for details see [Install SQL Server Management Tools with SSMS](http://msdn.microsoft.com/library/af68d59a-a04d-4f23-9967-ad4ee2e63381)  
  
 You can install each component individually or select a combination of the components listed above. To make the best choice among the editions and components available in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Editions and Components of SQL Server 2016](../../../sql-server/editions-and-components-of-sql-server-2016.md) and [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
## In This Section  
 Regardless of whether you use the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Wizard or the command prompt to install [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], Setup involves the following steps:  
  
 [Planning a SQL Server Installation](../../../sql-server/install/planning-a-sql-server-installation.md)  
 Describes how to prepare your computer for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
-   Hardware and software requirements.  
  
-   System Configuration Checker requirements and blocking issues.  
  
-   Security considerations.  
  
 [Install SQL Server 2016](../../../database-engine/install/windows/install-sql-server.md)  
 Describes installation options for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 [SQL Server Setup User Interface Reference](http://msdn.microsoft.com/library/183b5cdd-962e-41ca-8064-ea44f622c77d)  
 Describes the installation options presented by the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Wizard.  
  
 [Upgrade to SQL Server 2016](../../../database-engine/install/windows/upgrade-sql-server.md)  
 Describes options for upgrading to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 [Uninstall SQL Server 2016](../../../sql-server/install/uninstall-sql-server.md)  
 Describes procedures to uninstall [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and [!INCLUDE[ssMDSshort](../../../analysis-services/includes/ssmdsshort-md.md)].  
  
 [SQL Server Failover Cluster Installation](../../../sql-server/failover-clusters/install/sql-server-failover-cluster-installation.md)  
 This section of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup documentation explains how to install, and configure [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster.  
  
 [Install SQL Server 2016 Business Intelligence Features](../../../sql-server/install/install-sql-server-business-intelligence-features.md)  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features that are part of the Microsoft BI platform include [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)], [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)], [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)], and several client applications used for creating or working with analytical data. This section of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup documentation explains how to install [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] and [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)].  
  
## More Informaiton  
 [Install SQL Server BI Features with SharePoint &#40;Power Pivot and Reporting Services&#41;](http://msdn.microsoft.com/library/3166107c-30c2-468e-bb1b-bb42b79b37c3)  
 This section explains how to install [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features in a SharePoint environment. It identifies which [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features are available given a specific version and edition of SharePoint. It also includes installation procedures for [!INCLUDE[ssGemini](../../../analysis-services/includes/ssgemini-md.md)] for SharePoint and Reporting Services in SharePoint mode.  
  
 ![ssrs_fyi_note](../../../analysis-services/instances/install/windows/media/ssrs-fyi-note.png) Install the new sample database, [Wide World Importers](https://msdn.microsoft.com/library/mt734199(v=sql.1).aspx). 
  
 [Additional SQL Server Samples and Sample Databases](http://sqlserversamples.codeplex.com/)  
 Describes how to install and configure [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] samples and sample databases.  
  
See the [SQL Server Update Center](https://msdn.microsoft.com/library/ff803383.aspx) for links and information for all supported versions of [!INCLUDE[ssNoVersion_md](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
## See Also  
 [What's New in SQL Server Installation](../../../sql-server/install/what-s-new-in-sql-server-installation.md)   
 [Hardware and Software Requirements for Installing SQL Server 2016](../../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md)  
  
  