---
title: "Validate a SQL Server Installation | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "validating installations [SQL Server]"
ms.assetid: 1689af50-d2b8-4aa6-8f27-cc7127157fc8
caps.latest.revision: 31
ms.author: "mikeray"
manager: "jhubbard"
---
# Validate a SQL Server Installation
  The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] discovery report can be used to verify the version of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features installed on the computer. The **Installed [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features discovery report** displays a report of all [!INCLUDE[ssVersion2000](../../../analysis-services/multidimensional-models/includes/ssversion2000-md.md)], [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)], [!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)], [!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)], [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)], [!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)], and [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)] products and features that are installed on the local server. The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features discovery report is available on the **Tools** page on the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation center.  
  
 **To run [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features discovery report:**  
  
 Launch the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation center, using the **Start** menu, point to **All Programs**, point to **[!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] \<Version Name>**, point to **Configuration Tools**, and click **[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Center**. To run the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features discovery report, click **Tools** in the left-hand navigation area of **[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Center**, and then click **Installed [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] features discovery report**.  
  
 The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] discovery report is saved to %ProgramFiles%\\[!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]\130\Setup Bootstrap\Log\\<last Setup Session\>.  
  
 You can also generate the discovery report through the command line. Run “Setup.exe /Action=RunDiscovery” from a command prompt If you add “/q” to the command line above no UI will be shown, but the report will still be created in %ProgramFiles%\\[!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]\130\Setup Bootstrap\Log\\<last Setup Session\>.  
  
## See Also  
 [View and Read SQL Server Setup Log Files](../../../database-engine/install/windows/view-and-read-sql-server-setup-log-files.md)  
  
  