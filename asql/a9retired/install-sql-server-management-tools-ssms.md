---
title: "Install SQL Server Management Tools (SSMS) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-14"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "SQL Server Management Tools"
  - "SQL Server Management Studio"
ms.assetid: af68d59a-a04d-4f23-9967-ad4ee2e63381
caps.latest.revision: 30
ms.author: "sstein"
manager: "jhubbard"
robots: noindex,nofollow
---
# Install SQL Server Management Tools (SSMS)
  Install the latest version of   
      [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Management tools online, or install from the installation media.  
  
 [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Management Tools can run side-by-side on the same computer with earlier versions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Management Tools.  
  
 **[Download SQL Server Management Studio July 2016 Hotfix update](http://go.microsoft.com/fwlink/?LinkID=822301)**  
  
Click the link above to visit the download page where you can install the latest version of the tools. Note that after downloading the file you do not need to be online to perform the install.  
  
 ## Install from the installation media
  
1.  Insert the SQL Server installation media. From the root folder, double-click **Setup.exe**. To install from a network share, locate the root folder on the share, and then double-click Setup.exe.  
  
2.  Click **Installation** in the left-hand navigation area, and then click **Install SQL Server Management Tools**.  

## Install from the command line

To install, repair, or uninstall SSMS: 
**/install** | **/repair** | **/uninstall** | **/layout** - Install is the default.


To perform a silent install with no UI and no prompts:
**/quiet** - UI and all prompts are displayed by default.


To prevent the installation from restarting:
**/norestart** -  By default the UI will prompt before restart.


To output the log to a specific file:
**/log log.txt** - By default a log file is created in *%TEMP%*.




 ## Install SQL Server Data Tools (SSDT)  
  
 [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] is a separate free web download. [Download SQL Server Data Tools](https://msdn.microsoft.com/library/mt204009.aspx) for more information. 
 
 ## Previous SSMS versions
 [This page](https://msdn.microsoft.com/library/mt238290.aspx) lists the SSMS build log and links to previous versions. 
  
## See Also  
 [SQL Server Management Studio (SSMS)](https://msdn.microsoft.com/library/hh213248.aspx)   
 [Install SQL Server 2016 from the Installation Wizard &#40;Setup&#41;](../database-engine/install/windows/install-sql-server-from-the-installation-wizard-setup.md)  
  
  