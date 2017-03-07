---
title: "Check Parameters for the System Configuration Checker | Microsoft Docs"
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
  - "installing SQL Server, system configuration checks"
  - "failed system configuration checks [SQL Server]"
  - "verifying configuration before installation"
  - "SCC [SQL Server]"
  - "system configuration checker"
  - "scanning computer before installation [SQL Server]"
  - "checking configuration before installation"
  - "status information [SQL Server], system configuration checker"
  - "parameters [SQL Server], system configuration checker"
  - "configuration checkers [SQL Server]"
  - "Setup [SQL Server], system configuration checker"
ms.assetid: 8e712c15-6bfa-4d71-b303-9526101e5594
caps.latest.revision: 46
ms.author: "mikeray"
manager: "jhubbard"
---
# Check Parameters for the System Configuration Checker
  During [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup, the System Configuration Checker (SCC) scans the computer where [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will be installed. The SCC checks for conditions that prevent a successful [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation. Before Setup starts the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Wizard, the SCC retrieves the status of each item. It then compares the result with required conditions and provides guidance for removal of blocking issues.  
  
 The system configuration checker generates a report which contains a short description for each executed rule, and the execution status. The system configuration check report is located at %programfiles%\\[!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]\130\Setup Bootstrap\Log\\<YYYYMMDD_HHMM>\\.  
  
## See Also  
 [Hardware and Software Requirements for Installing SQL Server 2016](../Topic/Hardware%20and%20Software%20Requirements%20for%20Installing%20SQL%20Server%202016.md)   
 [Security Considerations for a SQL Server Installation](../../../sql-server/install/security-considerations-for-a-sql-server-installation.md)   
 [Supported Version and Edition Upgrades](../../../database-engine/install/windows/supported-version-and-edition-upgrades.md)  
  
  