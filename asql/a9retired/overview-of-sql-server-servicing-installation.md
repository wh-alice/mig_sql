---
title: "Overview of SQL Server Servicing Installation | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6a9fd19b-2367-4908-b638-363b1e929e1e
caps.latest.revision: 34
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# Overview of SQL Server Servicing Installation
  You can apply an update to any installed [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] component with a [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] servicing update. If the version level of an existing [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] component is later than the update version level, the Setup program will exclude it from the update. For more information on applying a servicing update, see [Install SQL Server 2016 Servicing Updates](../database-engine/install/windows/install-sql-server-servicing-updates.md).  
  
 The following considerations apply when you install [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] updates:  
  
-   All features that belong to an instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] must be updated at the same time. For example, when you update the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)], you must also update [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] and [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] components if they are installed as part of the same instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. Shared features, such as Management Tools, [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], and [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)][!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)], must always be updated to the most recent update. If a component or instance in the feature tree is not selected, the component or instance will not be updated.  
  
-   By default, [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] update log files are saved to **%Program Files%\\[!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]\130\Setup Bootstrap\LOG\\**.  
  
-   [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] setup can now integrate an update with the original media to run the original media and the update at the same time.  
  
-   Before you apply a [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] servicing update, we recommend that you consider backing up your data.  
  
-   [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] updates are available through [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Update. We recommend that you scan for updates regularly to keep your instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] updated and secure. [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] SP1 is being provided as a complete [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Installation. Rather than providing the Service Pack in the standard Patch executable package to be applied to [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] RTM instances, for this release, an installation package (consisting of 2 files) is provided. When executed, this will install a new instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] with SP1 pre-installed.  
  
## Requirements and Known Issues  
 The recommended disk space requirements are approximately 2.5 times the size of the package to install, download, and extract the package. After installing a service pack, you can remove the downloaded package. Any temporary files are removed automatically.  
  
 **Review the known issues:** For more information about the known issues for the current release, see the corresponding release notes topic here: [SQL Server Release Notes](http://msdn.microsoft.com/en-us/f617a0af-92dd-47aa-82c3-f51b1346bcd8).  
  
## Installation Overview  
 This section discusses the [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] installation for cumulative updates and service packs, including how to do the following:  
  
-   Prepare for a [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] update installation  
  
-   Install [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] updates  
  
-   Restart services and applications  
  
### Prepare for a [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Update Installation  
 We strongly recommend that you do the following before you install [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] updates:  
  
-   **Back up your [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] system databases** — Before you install [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] updates, back up the **master**, **msdb**, and **model** databases. Installing a [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] update changes these databases, making them incompatible with earlier versions of [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)]. Backups of these databases are required if you decide to reinstall [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] without these updates.  
  
     It is also prudent to back up your user databases.  
  
    > [!IMPORTANT]  
    >  When you apply updates to instances of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] that participate in a replication topology, you must back up your replicated databases together with your system databases before you apply the update.  
  
-   **Back up your [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] databases, configuration file, and repository** — Before you update an instance of [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)], you should back up the following:  
  
    -   [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] databases. By default, these are installed to C:\Program Files\\[!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]\MSAS13.\<InstanceID>\OLAP\Data\\. For WOW installation, the default path is C:\ProgramFiles (x86)\ [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]\MSAS13.\<InstanceID>\OLAP\Data\\.  
  
    -   [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] configuration setting in the msmdsrv.ini configuration file. By default, this is located in the C:\Program Files\\[!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]\MSAS13.\<InstanceID>\OLAP\Config\ directory.  
  
    -   (Optional) The database that contains the [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] repository. This step is required only if [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] was configured to work with the Decision Support Objects (DSO) library.  
  
    > [!NOTE]  
    >  Failure to back up your [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] databases, configuration file, and repository will prevent you from reverting an updated instance of [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] to the earlier version.  
  
-   **Verify that the system databases have sufficient free space** — If the autogrow option is not selected for the **master** and **msdb** system databases, these databases each must have at least 500 KB of free space. To verify that the databases have sufficient space, run the **sp_spaceused** system stored procedure on the **master** and **msdb** databases. If the unallocated space in either database is less than 500 KB, increase the size of the database.  
  
-   **Stop Services and Applications** — To avoid a possible restart of the system, stop all applications and services that make connections to the instances of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] that are being upgraded, before installing [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] updates. These include [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)], [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)]. For more information, see [Start, Stop, Pause, Resume, Restart the Database Engine, SQL Server Agent, or SQL Server Browser Service](../database-engine/configure/windows/start-stop-pause-resume-restart-sql-server-services.md).  
  
    > [!NOTE]  
    >  You cannot stop services in a failover cluster environment. For more information, see the failover cluster installation section later in this topic.  
  
-   To eliminate the requirement to restart your computer after update installation, Setup will show a list of processes that are locking files. If the update Setup program must end a service during installation, it will restart the service after the installation finishes.  
  
-   If Setup determines that files are locked during installation, you might have to restart your computer after the installation finishes. If it is required, Setup prompts you to restart your computer.  
  
### Install [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Updates  
 This section describes the installation process.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] updates must be installed under an account that has administrative privileges on the computer where they will be installed. For local installations, you must run Setup as an administrator. If you install [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] from a remote share, you must use a domain account that has read and execute permissions on the remote share.  
  
#### Starting a [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Update  
 To install a [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] update, run the self-extracting package file.  
  
 Cumulative update package (CU): \<SQLServer2014>-KBxxxxxx-*PPP*.exe  
  
 Service pack package (PCU): \<SQLServer2014>\<SPx> -KBxxxxxx-PPP-LLL.exe  
  
-   x indicated service pack number  
  
-   PPP indicates the specific platform.  
  
-   LLL indicates the character abbreviation for the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] language, for example: LLL for English is ENU.  
  
 To apply updates to [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] components that are part of a failover cluster, see the section for failover cluster installation. For more information about how to run an update installation in unattended mode, see [Install SQL Server 2016 from the Command Prompt](../database-engine/install/windows/install-sql-server-2016-from-the-command-prompt.md).  
  
####  <a name="Slipstream"></a> Product Updates in [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Installation  
 Product Update is a feature in [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Setup. It integrates the latest product updates with the main product installation so that the main product and its applicable updates are installed at the same time. Product Update can search [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Update, Windows Server Update Services (WSUS), a local folder, or a network share for applicable updates.  After Setup finds the latest versions of the applicable updates, it downloads and integrates them with the current [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] setup process. Product Update can pull in a cumulative update, service pack, or service pack plus cumulative update. Product Update functionality is an extension of the Slipstream functionally that was available in [!INCLUDE[ssKatmai](../a9notintoc/includes/sskatmai-md.md)] PCU1.  
  
## Updating a Prepared Image of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
 You can apply an update to an unconfigured prepared instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] without completing the configuration of the prepared instance. Different ways of applying an update to a prepared instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] are explained below:  
  
-   Updating a previously prepared instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
     Updates to a prepared instance can be applied to prior to configuration. The update package detects that the instance is in the prepared state and apply the patch to the prepared instance, without completing the configuration.  
  
-   Updates to a prepared instance using [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Update:  
  
     You can apply updates to a prepared instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] through [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Update. The [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Update package will detect that the instance is in the prepared state and apply the patch to the prepare instance without completing the configuration.  
  
 If you are updating a prepared image of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], you will need to specify the InstanceID parameter. For more information and sample syntax, see [Installing Updates from the Command Prompt](../database-engine/install/windows/installing-updates-from-the-command-prompt.md).  
  
## Updating a Completed Image of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
 Updating a completed and configured instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] follows the same processes as any other installed instances of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].  
  
## Rebuilding a [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Failover Cluster Node  
 If you must rebuild a node in the failover cluster after updates were applied, follow these steps:  
  
1.  Rebuild the node in the failover cluster. For more information about rebuilding a node, see [Recover from Failover Cluster Instance Failure](../sql-server/failover-clusters/windows/recover-from-failover-cluster-instance-failure.md).  
  
2.  Run the original [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] Setup program to install [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] on the failover cluster node.  
  
3.  Run [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] updates Setup on the node that you have added.  
  
## Restart Services and Applications  
 When the Setup program is finished, it might prompt you to restart the computer. After the system restarts, or after the Setup program finishes without requesting a restart, use the **Services** node in Control Panel to restart the services that you stopped before you applied the [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] updates. This includes services such as Distributed Transaction Coordinator and the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Search services, or instance-specific equivalents.  
  
 Restart the applications that you closed before you ran [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] update Setup. You might also want to make another backup of the upgraded **master**, **msdb**, and **model** databases immediately after successful installation.  
  
## Uninstalling Updates from [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)]  
 You can uninstall [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] cumulative updates or service packs from **Programs and Features** in Control Panel. To view the list of updates installed, open Installed Updates by clicking the **Start** button, clicking **Control Panel**, clicking **Programs**, and then, under **Programs and Features**, clicking **View installed updates**. Each cumulative update is listed separately. However, when a service pack is installed that is higher than the cumulative updates, the cumulative update entries are hidden and become available only if you uninstall the service pack.  
  
 To uninstall any service packs and updates, you must start with the latest update or service pack applied to the instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] and work backward. In each of the following examples, [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] ends up with Cumulative Update 1 after uninstall has been completed for the other service packs or updates:  
  
-   For an instance of [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] with Cumulative Update 1 and SP1 installed, uninstall SP1.  
  
-   For an instance of [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] with Cumulative Update 1, SP1, and Cumulative Update 2 installed, uninstall Cumulative Update 2 first and then uninstall SP1.  
  
## See Also  
 [Install SQL Server 2016 from the Command Prompt](../database-engine/install/windows/install-sql-server-2016-from-the-command-prompt.md)   
 [Install SQL Server 2016 Servicing Updates](../database-engine/install/windows/install-sql-server-servicing-updates.md)   
 [Validate a SQL Server Installation](../database-engine/install/windows/validate-a-sql-server-installation.md)   
 [View and Read SQL Server Setup Log Files](../database-engine/install/windows/view-and-read-sql-server-setup-log-files.md)  
  
  