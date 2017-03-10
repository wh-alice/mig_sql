---
title: "Install SQL Server 2016 Servicing Updates | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-08-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7d6c962b-c8d0-49f7-a2ac-00ad8dca930a
caps.latest.revision: 13
ms.author: "mikeray"
manager: "jhubbard"
---
# Install SQL Server Servicing Updates
  This topic provides information about installing updates for [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]. This section provides information about the following:  
  
-   Installing updates for [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] during a new installation  
  
-   Installing updates for [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] after it has already been installed.  
  
 We recommend that customers evaluate and install latest [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] updates in a timely manner to make sure that systems are up-to-date with the most recent security updates.  
  
## Installing Updates for [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] During a New Installation  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] setup integrates the latest product updates with the main product installation so that the main product and its applicable updates are installed at the same time. Product Update can search for the applicable updates from:  
  
-   [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Update  
  
-   Windows Server Update Services (WSUS)  
  
-   A local folder  
  
-   A network share  
  
 After Setup finds the latest versions of the applicable updates, it downloads and integrates them with the current [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] setup process. Product Update can include a cumulative update, service pack, or service pack plus cumulative update.  
  
## Installing Updates for [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] after it has already been installed  
 On an installed instance of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], we recommend that you apply the latest security updates and critical updates including general distribution releases (GDRs), service packs (SPs), and cumulative updates (CUs). For additional information, see the [March, 2016 announcement to the SQL Server Incremental Servicing Model (ISM)](http://blogs.msdn.microsoft.com/sqlreleaseservices/announcing-updates-to-the-sql-server-incremental-servicing-model-ism/). 
  
 The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] updates are available through [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Update (MU), Windows Server Update Services (WSUS) and the Microsoft Download Center. Security and Critical updates for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] are available through [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Update, and to be able to see these updates you need to opt-into MU through the Windows Update applet in Control panel.  
  
 When you receive an update through [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Update, it will update all [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features to the latest version in an unattended mode. If you need more flexibility or don’t have internet or WSUS access you will need to obtain the updates from the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Download Center.  
  
## See Also  
 [Install SQL Server 2016 from the Installation Wizard &#40;Setup&#41;](../../../database-engine/install/windows/install-sql-server-from-the-installation-wizard-setup.md)   
 [Add Features to an Instance of SQL Server 2016 &#40;Setup&#41;](../../../database-engine/install/windows/add-features-to-an-instance-of-sql-server-2016-setup.md)   
 [Repair a Failed SQL Server 2016 Installation](../../../database-engine/install/windows/repair-a-failed-sql-server-installation.md)  
  
  