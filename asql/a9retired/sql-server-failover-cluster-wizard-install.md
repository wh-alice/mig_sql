---
title: "SQL Server Failover Cluster Wizard - Install | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 65a447f9-80f4-4cd5-94e4-1d2c918a8bd6
caps.latest.revision: 17
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# SQL Server Failover Cluster Wizard - Install
  [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup validates your computer configuration before the Setup operation completes. During [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Setup, the System Configuration Checker (SCC) scans the computer where [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] will be installed. The SCC checks for conditions that prevent a successful [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] setup operation. Before Setup starts the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Installation Wizard, the SCC retrieves the status of each item. It then compares the result with required conditions and provides guidance for removal of blocking issues.  
  
 The system configuration check generates a report which contains a short description for each executed rule, and the execution status. The system configuration check report is located at %programfiles%\\[!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]\130\Setup Bootstrap\Log\\<YYYYMMDD_HHMM>\\.  
  
 Before you run the setup operation, review the following topics:  
  
1.  [Hardware and Software Requirements for Installing SQL Server 2016](../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md)  
  
2.  [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md)  
  
3.  [Security Considerations for a SQL Server Installation](../sql-server/install/security-considerations-for-a-sql-server-installation.md)  
  
4.  [Local Language Versions in SQL Server](../sql-server/install/local-language-versions-in-sql-server.md)  
  
 Other references:  
  
1.  [Supported Version and Edition Upgrades](../database-engine/install/windows/supported-version-and-edition-upgrades.md)  
  
2.  [Before Installing Failover Clustering](../sql-server/failover-clusters/install/before-installing-failover-clustering.md)  
  
## See Also  
 [Install Rules](../a9retired/install-rules.md)  
  
  