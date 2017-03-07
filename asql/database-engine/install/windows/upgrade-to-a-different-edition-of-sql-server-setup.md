---
title: "Upgrade to a Different Edition of SQL Server 2016 (Setup) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 31d16820-d126-4c57-82cc-27701e4091bc
caps.latest.revision: 27
ms.author: "mikeray"
manager: "jhubbard"
---
# Upgrade to a Different Edition of SQL Server (Setup)
  [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup supports edition upgrade among various editions of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]. For information about supported edition upgrade paths, see [Supported Version and Edition Upgrades](../../../database-engine/install/windows/supported-version-and-edition-upgrades.md). Before you initiate the edition upgrade of an instance of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], review the following topics:  
  
-   [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md)  
  
-   [Editions and Components of SQL Server 2016](../../../sql-server/editions-and-components-of-sql-server-2016.md)  
  
-   [Compute Capacity Limits by Edition of SQL Server](../../../sql-server/compute-capacity-limits-by-edition-of-sql-server.md)  
  
-   [Hardware and Software Requirements for Installing SQL Server 2016](../Topic/Hardware%20and%20Software%20Requirements%20for%20Installing%20SQL%20Server%202016.md)  
  
> [!NOTE]  
>  **[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] in a clustered environment:** Running edition upgrade on one of the nodes of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cluster is sufficient. This node can be either active or passive, and the engine does not bring the resources offline during the Edition Upgrade. After the edition upgrade it is required to either restart the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance or failover to a different node.  
  
## Prerequisites  
 For local installations, you must run Setup as an administrator. If you install [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] from a remote share, you must use a domain account that has read permissions on the remote share.  
  
> [!IMPORTANT]  
>  For the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] edition change to be activated, you must restart [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] services. This will result in application down time while services are offline.  
  
## Procedure  
  
#### To upgrade to a different edition of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]  
  
1.  Insert the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation media. From the root folder, double-click setup.exe or launch the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Center from Configuration Tools. To install from a network share, locate the root folder on the share, and then double-click Setup.exe.  
  
2.  To upgrade an existing instance of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] to a different edition, from the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Center click **Maintenance**, and then select **Edition Upgrade**.  
  
3.  If Setup support files are required, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup installs them. If you are instructed to restart your computer, restart before you continue.  
  
4.  The System Configuration Checker runs a discovery operation on your computer. To continue, click **OK**.  
  
5.  On the Product Key page, select a radio button to indicate whether you are upgrading to a free edition of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], or whether you have a PID key for a production version of the product. For more information, see [Editions and Components of SQL Server 2016](../../../sql-server/editions-and-components-of-sql-server-2016.md) and [Supported Version and Edition Upgrades](../../../database-engine/install/windows/supported-version-and-edition-upgrades.md).  
  
6.  On the License Terms page, read the license agreement, and then select the check box to accept the licensing terms and conditions. To continue, click **Next**. To end Setup, click **Cancel**.  
  
7.  On the Select Instance page, specify the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to upgrade.  
  
8.  The Edition Upgrade Rules page validates your computer configuration before the edition upgrade operation begins.  
  
9. The Ready to Upgrade Edition page shows a tree view of installation options that were specified during Setup. To continue, click **Upgrade**.  
  
10. During the edition upgrade process, the services need to be restarted to pick up the new setting. After edition upgrade, the Complete page provides a link to the summary log file for the edition upgrade. To close the wizard, click **Close**.  
  
11. The Complete page provides a link to the summary log file for the installation and other important notes.  
  
12. If you are instructed to restart the computer, do so now. It is important to read the message from the Installation Wizard when you are done with Setup. For information about Setup log files, see [View and Read SQL Server Setup Log Files](../../../database-engine/install/windows/view-and-read-sql-server-setup-log-files.md).  
  
13. If you upgraded from [!INCLUDE[ssExpress](../../../database-engine/configure/windows/includes/ssexpress-md.md)], you must perform additional steps before you can use your upgraded instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  
  
    -   Enable the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent service in Windows SCM.  
  
    -   Provision the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent service account by using [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager.  
  
 In addition to the steps above, you may need to do the following if you upgraded from [!INCLUDE[ssExpress](../../../database-engine/configure/windows/includes/ssexpress-md.md)]:  
  
-   Users that were provisioned in [!INCLUDE[ssExpress](../../../database-engine/configure/windows/includes/ssexpress-md.md)] remain provisioned after the upgrade. Specifically, the BUILTIN\Users group remains provisioned. Disable, remove, or reprovision these accounts as needed. For more information, see [Configure Windows Service Accounts and Permissions](../../../database-engine/configure/windows/configure-windows-service-accounts-and-permissions.md).  
  
-   Sizes and recovery mode for the tempdb and model system databases remain unchanged after the upgrade. Reconfigure these settings as needed. For more information, see [Back Up and Restore of System Databases &#40;SQL Server&#41;](../../../relational-databases/backup-restore/back-up-and-restore-of-system-databases-sql-server.md).  
  
-   Template databases remain on the computer after the upgrade.  
  
## See Also  
 [Upgrade to SQL Server 2016](../Topic/Upgrade%20to%20SQL%20Server%202016.md)   
 [Backward Compatibility_deleted](../Topic/Backward%20Compatibility_deleted.md)  
  
  