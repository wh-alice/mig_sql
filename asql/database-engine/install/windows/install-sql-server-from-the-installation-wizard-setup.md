---
title: "Install SQL Server 2016 from the Installation Wizard (Setup) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "installing SQL Server, steps"
  - "Setup [SQL Server], steps"
  - "SQL Server, installing"
ms.assetid: 6ad23de1-2bab-4933-9122-c09f5565028d
caps.latest.revision: 91
ms.author: "mikeray"
manager: "jhubbard"
---
# Install SQL Server from the Installation Wizard (Setup)
  This topic provides a step-by-step procedure for installing a new instance of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] using the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] setup installation wizard. The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Wizard provides a single feature tree for installation of all [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] components so that you do not have to install them individually. For more information on various components that can be installed, see [Installation for SQL Server 2016](../../../database-engine/install/windows/installation-for-sql-server-2016.md).  For more information about how to install the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] components individually, see [Install SQL Server 2016](../../../database-engine/install/windows/install-sql-server.md).  

 These additional topics document other ways to install [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:  

-   [Install SQL Server 2016 from the Command Prompt](../../../database-engine/install/windows/install-sql-server-2016-from-the-command-prompt.md)  
  
-   [Install SQL Server 2016 Using a Configuration File](../../../database-engine/install/windows/install-sql-server-2016-using-a-configuration-file.md)  
  
-   [Install SQL Server 2016 Using SysPrep](../../../database-engine/install/windows/install-sql-server-using-sysprep.md)  
  
-   [Create a New SQL Server Failover Cluster &#40;Setup&#41;](../../../sql-server/failover-clusters/install/create-a-new-sql-server-failover-cluster-setup.md)  
  
-   [Upgrade to SQL Server 2016 Using the Installation Wizard &#40;Setup&#41;](../../../database-engine/install/windows/upgrade-sql-server-using-the-installation-wizard-setup.md) 

-   [Install Free Editions of SQL Server 2016 Directly from the Internet](../../../database-engine/install/windows/install-sql-server.md) 
  
## Prerequisites  
 Before you install [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], review topics in [Planning a SQL Server Installation](../../../sql-server/install/planning-a-sql-server-installation.md).  
  
> [!NOTE]  
>  For local installations, you must run Setup as an administrator. If you install [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] from a remote share, you must use a domain account that has read and execute permissions on the remote share.  
 
 ###  <a name="bkmk_ga_instalpatch"></a> Install Patch Requirement 

Microsoft has identified a problem with the specific version of Microsoft VC++ 2013 Runtime binaries that are installed as a prerequisite by SQL Server 2016. If this update to the VC runtime binaries is not installed, SQL Server 2016 may experience stability issues in certain scenarios. Before you install SQL Server 2016 follow the instructions at [SQL Server 2016 Release Notes](../../../sql-server/sql-server-2016-release-notes.md#bkmk_ga_instalpatch) to see if your computer requires a patch for the VC runtime binaries. 
  
## To install [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]  
  
1.  Insert the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation media. From the root folder, double-click Setup.exe. To install from a network share, locate the root folder on the share, and then double-click Setup.exe.  
  
2.  The Installation Wizard runs the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Installation Center. To create a new installation of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], click **Installation** in the left-hand navigation area, and then click **New [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] stand-alone installation or add features to an existing installation**.  
  
3.  On the Product Key page, select an option to indicate whether you are installing a free edition of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], or a production version of the product that has a PID key. For more information, see [Editions and Components of SQL Server 2016](../../../sql-server/editions-and-components-of-sql-server-2016.md).  
  
     To continue, click **Next**.  
  
4.  On the License Terms page, review the license agreement and, if you agree, select the **I accept the license terms** check box, and then click **Next**. To help improve [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], you can also enable the feature usage option and send reports to [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)].  
  
5.  In the Global Rules window, the setup procedure will automatically advance to the Product Updates window if there are no rule errors.  
  
6.  The [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Update page will appear next if the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Update check box in Control Panel\All Control Panel Items\Windows Update\Change settings is not checked. Putting a check in the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Update page will change the computer settings to include the latest updates when you scan for Windows Update.  
  
7.  On the Product Updates page, the latest available [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] product updates are displayed. If no product updates are discovered, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup does not display this page and auto advances to the **Install Setup Files** page.  
  
8.  On the Install Setup files page, Setup provides the progress of downloading, extracting, and installing the Setup files. If an update for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup is found, and is specified to be included, that update will also be installed.  
  
9. On the Setup Role page, select **[!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Feature Installation**, and then click **Next** to continue to the Feature Selection page.  
  
10. On the Feature Selection page, select the components for your installation. A description for each component group appears in the **Feature description** pane after you select the feature name. You can select any combination of check boxes. For more information, see [Editions and Components of SQL Server 2016](../../../sql-server/editions-and-components-of-sql-server-2016.md) and [Editions and Supported Features for SQL Server 2016](../../../sql-server/editions-and-supported-features-for-sql-server-2016.md).  
  
     The prerequisites for the selected features are displayed in the **Prerequisites for selected features** pane. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup will install the prerequisite that are not already installed during the installation step described later in this procedure.  
  
     You can also specify a custom directory for shared components by using the field at the bottom of the Feature Selection page. To change the installation path for shared components, either update the path in the field at the bottom of the dialog box, or click **Browse** to move to an installation directory. The default installation path is [!INCLUDE[ssInstallPath](../../../database-engine/configure/windows/includes/ssinstallpath-md.md)].  
  
     The path specified for the shared components must be an absolute path. The folder must not be compressed or encrypted. Mapped drives are not supported.  
  
     If you are installing [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] on a 64-bit operating system, you will see the following options:  
  
    1.  Shared feature directory  
  
    2.  Shared feature directory (x86)  
  
     The path specified for each of the above options must be different.  
  
11. The Feature Rules window will automatically advance if all rules pass.  
  
12. On the Instance Configuration page, specify whether to install a default instance or a named instance. For more information, see [Instance Configuration](http://msdn.microsoft.com/library/5bf822fc-6dec-4806-a153-e200af28e9a5).  
  
     **Instance ID** — By default, the instance name is used as the Instance ID. This is used to identify installation directories and registry keys for your instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. This is the case for default instances and named instances. For a default instance, the instance name and instance ID would be MSSQLSERVER. To use a non-default instance ID, specify a different value for **Instance ID** text box.  
  
    > [!NOTE]  
    >  Typical stand-alone instances of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], whether default or named instances, do not use a non-default value for the **Instance ID**.  
  
     All [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service packs and upgrades will apply to every component of an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
     **Installed instances** — The grid shows instances of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that are on the computer where Setup is running. If a default instance is already installed on the computer, you must install a named instance of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
     The Work flow for the rest of the installation depends on the features that you have specified for your installation. You might not see all the pages, depending on your selections.  
  
13. Use the Server Configuration — Service Accounts page to specify login accounts for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] services. The actual services that are configured on this page depend on the features that you selected to install.  
  
     You can assign the same login account to all [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] services, or you can configure each service account individually. You can also specify whether services start automatically, are started manually, or are disabled. [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] recommends that you configure service accounts individually to provide least privileges for each service, where [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] services are granted the minimum permissions they have to have to complete their tasks. For more information, see [Server Configuration - Service Accounts](http://msdn.microsoft.com/library/c283702d-ab20-4bfa-9272-f0c53c31cb9f) and [Configure Windows Service Accounts and Permissions](../../../database-engine/configure/windows/configure-windows-service-accounts-and-permissions.md).  
  
     To specify the same logon account for all service accounts in this instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], provide credentials in the fields at the bottom of the page.  
  
    > [!IMPORTANT]  
    >  [!INCLUDE[ssNoteStrongPass](../../../database-engine/install/windows/includes/ssnotestrongpass-md.md)]  
  
     Use the Server Configuration — Collation page to specify non-default collations for the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] and [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)]. For more information, see [Server Configuration - Collation](http://msdn.microsoft.com/library/e3986870-5be4-458b-b671-5ff12a27b022).  
  
14. Use the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Configuration - Server Configuration page to specify the following:  
  
    -   Security Mode — Select Windows Authentication or Mixed Mode Authentication for your instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. If you select Mixed Mode Authentication, you must provide a strong password for the built-in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] system administrator account.  
  
         After a device establishes a successful connection to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the security mechanism is the same for both Windows Authentication and Mixed Mode. For more information, see [Database Engine Configuration - Server Configuration](http://msdn.microsoft.com/library/834b26bc-49de-4033-88d5-6aa7b1609720).  
  
    -   [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Administrators — You must specify at least one system administrator for the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. To add the account under which [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup is running, click **Add Current User**. To add or remove accounts from the list of system administrators, click **Add** or **Remove**, and then edit the list of users, groups, or computers that will have administrator privileges for the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
     Use the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Configuration - Data Directories page to specify non-default installation directories. To install to default directories, click **Next**.  
  
    > [!IMPORTANT]  
    >  If you specify non-default installation directories, ensure that the installation folders are unique to this instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. None of the directories in this dialog box should be shared with directories from other instances of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
     For more information, see [Database Engine Configuration - Data Directories](http://msdn.microsoft.com/library/9b1fa0fc-623b-479a-afc3-4f13bd850487).  
  
     Use the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Configuration - FILESTREAM page to enable FILESTREAM for your instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For more information, see [Database Engine Configuration - Filestream](http://msdn.microsoft.com/library/641a10a1-ae52-4d26-8f1c-a032a4aeff02).  
  
     Use the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Configuration - TempDB page to configure file size, number of files, non-default installation directories, and file-growth settings for TempDB. For more information see [Database Engine Configuration - TempDB](http://msdn.microsoft.com/library/7aabd304-f3c9-4c2d-bf9d-5479ee2498da).  
  
15. Use the [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] Configuration — Account Provisioning page to specify the server mode and the users or accounts that will have administrator permissions for [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)]. Server mode determines which memory and storage subsystems are used on the server. Different solution types run in different server modes. If you plan to run multidimensional cube databases on the server, choose the default option, Multidimensional and Data Mining server mode. Regarding administrator permissions, you must specify at least one system administrator for [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)]. To add the account under which SQL Server Setup is running, click **Add Current User**. To add or remove accounts from the list of system administrators, click **Add** or **Remove**, and then edit the list of users, groups, or computers that will have administrator privileges for [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)]. For more information about server mode and administrator permissions, see [Analysis Services Configuration - Account Provisioning](http://msdn.microsoft.com/library/169b1af2-6fe2-467f-8ca4-919f24c620ce).  
  
     When you are finished editing the list, click **OK**. Verify the list of administrators in the configuration dialog box. When the list is complete, click **Next**.  
  
     Use the [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)] Configuration — Data Directories page to specify non-default installation directories. To install to default directories, click **Next**.  
  
    > [!IMPORTANT]  
    >  -   When installing [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)],  if you specify the same directory path for INSTANCEDIR and SQLUSERDBDIR, SQL Server Agent and Full Text Search do not start due to missing permissions.  
    > -   If you specify non-default installation directories, ensure that the installation folders are unique to this instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. None of the directories in this dialog box should be shared with directories from other instances of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
     For more information, see [Analysis Services Configuration - Data Directories](http://msdn.microsoft.com/library/ef732855-b7af-4f40-a619-5573c1c354bb).  
  
16. Use the [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] Configuration page to specify the kind of [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] installation to create. For more information about [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] configuration modes and the options we have, see [Reporting Services Configuration Options &#40;SSRS&#41;](http://msdn.microsoft.com/library/e4561f6c-bc7f-467e-821a-cde8e5cd7391).  
  
     After you choose an option, click **Next** to continue.  
  
17. Use the Distributed Replay Controller Configuration page to specify the users you want to grant administrative permissions to for the Distributed Replay controller service. Users that have administrative permissions will have unlimited access to the Distributed Replay controller service.  
  
     Click the **Add Current User** button to add the users to whom you want to grant access permissions for the Distributed Replay controller service. Click the **Add** button to add access permissions for the Distributed Replay controller service. Click the **Remove** button to remove access permissions from the Distributed Replay controller service.  
  
     To continue, click **Next**.  
  
18. Use the Distributed Replay Client Configuration page to specify the users you want to grant administrative permissions to for the Distributed Replay client service. Users that have administrative permissions will have unlimited access to the Distributed Replay client service.  
  
     **Controller Name** is an optional parameter, and the default value is \<*blank*>. Enter the name of the controller that the client computer will communicate with for the Distributed Replay client service. Note the following:  
  
    -   If you have already set up a controller, enter the name of the controller while configuring each client.  
  
    -   If you have not yet set up a controller, you can leave the controller name blank. However, you must manually enter the controller name in the **client configuration** file.  
  
     Specify the **Working Directory** for the Distributed Replay client service. The default working directory is \<*drive letter*>:\Program Files\\[!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]\DReplayClient\WorkingDir\\.  
  
     Specify the **Result Directory** for the Distributed Replay client service. The default result directory is \<*drive letter*>:\Program Files\\[!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]\DReplayClient\ResultDir\\.  
  
     To continue, click **Next**.  
  
19. The Ready to Install page shows a tree view of installation options that were specified during Setup. On this page, Setup indicates whether the Product Update feature is enabled or disabled and the final update version.  
  
     To continue, click **Install**. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup will first install the required prerequisites for the selected features followed by the feature installation.  
  
20. During installation, the Installation Progress page provides status so that you can monitor installation progress as Setup continues.  
  
21. After installation, the Complete page provides a link to the summary log file for the installation and other important notes. To complete the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation process, click **Close**.  
  
22. If you are instructed to restart the computer, do so now. It is important to read the message from the Installation Wizard when you have finished with Setup. For more information, see [View and Read SQL Server Setup Log Files](../../../database-engine/install/windows/view-and-read-sql-server-setup-log-files.md).  
  
## Next Steps  
 Configure your new [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation.  
  
 To reduce the attackable surface area of a system, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] selectively installs and enables key services and features. For more information, see [Surface Area Configuration](../../../relational-databases/security/surface-area-configuration.md).  
  
## See Also  
 [Validate a SQL Server Installation](../../../database-engine/install/windows/validate-a-sql-server-installation.md)   
 [Repair a Failed SQL Server 2016 Installation](../../../database-engine/install/windows/repair-a-failed-sql-server-installation.md)   
 [View and Read SQL Server Setup Log Files](../../../database-engine/install/windows/view-and-read-sql-server-setup-log-files.md)   
 [Upgrade to SQL Server 2016 Using the Installation Wizard &#40;Setup&#41;](../../../database-engine/install/windows/upgrade-sql-server-using-the-installation-wizard-setup.md)   
 [Install SQL Server 2016 from the Command Prompt](../../../database-engine/install/windows/install-sql-server-2016-from-the-command-prompt.md)  
  
  