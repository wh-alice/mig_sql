---
title: "Choose a Database Engine Upgrade Method | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "server-general"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5e57a427-2e88-4ef6-b142-4ccad97bcecc
caps.latest.revision: 23
ms.author: "mikeray"
manager: "jhubbard"
---
# Choose a Database Engine Upgrade Method
  There are several approaches to consider when you are planning to upgrade the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)] from a prior release of SQL Server to [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] in order to minimize downtime and risk. You can perform an upgrade in-place, migrate to a new installation, or perform a rolling upgrade. The following diagram will help you to choose amongst these approaches. Each of the approaches in the diagram are also discussed below. To assist you with the decision points in the diagram, please also review [Plan and Test the Database Engine Upgrade Plan](../../../database-engine/install/windows/plan-and-test-the-database-engine-upgrade-plan.md).  
  
 ![Database Engine Upgrade Method Decision Tree](../../../database-engine/install/windows/media/database-engine-upgrade-method-decision-tree.png "Database Engine Upgrade Method Decision Tree")  
  
 **Download**  
  
-   To download [!INCLUDE[ssSQL15](../../../a9notintoc/includes/sssql15-md.md)], go to  **[Evaluation Center](https://www.microsoft.com/en-us/evalcenter/evaluate-sql-server-2016)**.  
  
-   Have an Azure account?  Then go **[Here](https://azure.microsoft.com/en-us/marketplace/partners/microsoft/sqlserver2016ctp2evaluationwindowsserver2012r2/?wt.mc_id=sqL16_vm)** to spin up a Virtual Machine with [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] already installed.  
  
> [!NOTE]  
>  You may also consider upgrading the Azure SQL Database or virtualizing your SQL Server environment as part of your upgrade plan. These topics are out of scope for this topic, but here are some links: [Introduction to SQL Server 2016 Hybrid Cloud](../../../a9retired/introduction-to-sql-server-2016-hybrid-cloud.md), [SQL Server on Azure Virtual Machines overview](https://azure.microsoft.com/documentation/articles/virtual-machines-sql-server-infrastructure-services/), [Azure SQL Database](https://azure.microsoft.com/en-us/services/sql-database/) and [Selecting a SQL Server option in Azure](https://azure.microsoft.com/documentation/articles/data-management-azure-sql-database-and-sql-server-iaas/).  
  
##  <a name="UpgradeInPlace"></a> Upgrade in-place  
 With this approach, the SQL Server setup program upgrades the existing [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] installation by replacing the existing [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] bits with the [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] bits and then upgrades each of the system and user databases.  The upgrade in-place  approach is easiest, requires some amount of downtime, takes longer to fallback if a fallback is necessary, and it is not supported for all scenarios. For more information on supported and unsupported upgrade in-place scenarios, see [Supported Version and Edition Upgrades](../../../database-engine/install/windows/supported-version-and-edition-upgrades.md).  
  
 This approach is frequently used in the following scenarios:  
  
-   A development environment without a high-availability (HA) configuration.  
  
-   A non-mission critical production environment that can tolerate downtime and that is running on a recent hardware and software. The amount of downtime is dependent upon the size of your database and the speed of your I/O subsystem. Upgrading SQL Server 2014 when memory-optimized tables are in use will take some extra time. For more information, see [Plan and Test the Database Engine Upgrade Plan](../../../database-engine/install/windows/plan-and-test-the-database-engine-upgrade-plan.md).  
  
> [!WARNING]  
>  When running the [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] setup program, the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] instance is stopped and restarted as part of running the pre-upgrade checks.  
  
> [!CAUTION]  
>  When you upgrade [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], the previous [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] instance will be overwritten and will no longer exist on your computer. Before upgrading, back up [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] databases and other objects associated with the previous [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] instance.  
  
 The following diagram provides a high-level overview of the steps required for an in-place upgrade of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)].  
  
 ![Database Engine Upgrade Non-HA In-Place Upgrade](../../../database-engine/install/windows/media/database-engine-upgrade-non-ha-in-place-upgrade.png "Database Engine Upgrade Non-HA In-Place Upgrade")  
  
 For detailed steps, see [Upgrade to SQL Server 2016 Using the Installation Wizard &#40;Setup&#41;](../../../database-engine/install/windows/upgrade-sql-server-using-the-installation-wizard-setup.md).  
  
##  <a name="NewInstallationUpgrade"></a> Migrate to a new installation  
 With this approach, you maintain the current environment while you build a new [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] environment, frequently on new hardware and with a new version of the operating system. After installing [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] in the new environment, you perform a number of steps to prepare the new environment so that you can migrate the existing user databases from the existing environment to the new environment and minimize downtime. These steps include migrating the following:  
  
-   **System objects:** Some applications depend on information, entities, and/or objects that are outside of the scope of a single user database. Typically, an application has dependencies on the master and msdb databases, and also on the user database. Anything stored outside of a user database that is required for the correct functioning of that database must be made available on the destination server instance. For example, the logins for an application are stored as metadata in the master database, and they must be re-created on the destination server. If an application or database maintenance plan depends on SQL Server Agent jobs, whose metadata is stored in the msdb database, you must re-create those jobs on the destination server instance. Similarly, the metadata for a server-level trigger is stored in master.  
    When you move the database for an application to another server instance, you must re-create all the metadata of the dependant entities and objects in master and msdb on the destination server instance. For example, if a database application uses server-level triggers, just attaching or restoring the database on the new system is not enough. The database will not work as expected unless you manually re-create the metadata for those triggers in the master database. For detailed information, see [Manage Metadata When Making a Database Available on Another Server Instance &#40;SQL Server&#41;](../../../relational-databases/databases/manage-metadata-when-making-a-database-available-on-another-server.md)  
  
-   **Integration Services packages stored in MSDB:** If you are storing packages in MSDB, you will need to either script out those packages using the [dtutil Utility](../../../integration-services/dtutil-utility.md) or redeploy them to the new server. Before using the packages on the new server, you will need to upgrade the packages to [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)]. For more information, see [Upgrade Integration Services Packages](../../../integration-services/install/windows/upgrade-integration-services-packages.md).  
  
-   **Reporting Services encryption keys:** An important part of report server configuration is creating a backup copy of the symmetric key used for encrypting sensitive information. A backup copy of the key is required for many routine operations, and enables you to reuse an existing report server database in a new installation. For more information, see [Back Up and Restore Reporting Services Encryption Keys](../../../reporting-services/install/windows/ssrs-encryption-keys-back-up-and-restore-encryption-keys.md) and [Upgrade and Migrate Reporting Services](../../../reporting-services/install/windows/upgrade-and-migrate-reporting-services.md)  
  
 Once the new   [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] environment has the same system objects as the existing environment, you then migrate the user databases from the existing system to the [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] instance in a manner that will minimize downtime on the existing system. You accomplish the database migration either using backup and restore, or by repointing LUNs if you are in a SAN environment. The steps for both methods are delineated in the diagrams below.  
  
> [!CAUTION]  
>  The amount of downtime is dependent upon the size of your database and the speed of your I/O subsystem. Upgrading SQL Server 2014 when memory-optimized tables are in use will take some extra time. For more information, see [Plan and Test the Database Engine Upgrade Plan](../../../database-engine/install/windows/plan-and-test-the-database-engine-upgrade-plan.md).  
  
 After migrating the user database(s), you point new users to the new [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] instance using one of a variety of methods (e.g. renaming the  server, using a DNS entry, modifying connection strings).  The new installation  approach reduces risk and downtime as compared to an in-place upgrade , and facilitates hardware and operating system upgrades in conjunction with the upgrade to [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)].  
  
> [!NOTE]  
>  If you already have a high availability (HA) solution in place or some other multiple [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]instance environment, go [Rolling upgrade](#RollingUpgrade). If you do not have a high availability solution in place, you can consider either temporarily configuring [Database Mirroring](http://msdn.microsoft.com/library/ms190941.aspx) to further minimize downtime to facilitate this upgrade or taking this opportunity to configure an [Always On Availability Group](http://msdn.microsoft.com/library/hh510260.aspx) as a   permanent HA solution.  
  
 For example, you may use this approach to upgrade:  
  
-   An installation of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] on an unsupported operating system.  
  
-   An x86 installation of SQL Server as [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] does not support x86 installations.  
  
-   [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to new hardware and/or a new version of the operating system.  
  
-   [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] in conjunction with server consolidation.  
  
-   SQL Server 2005 as [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] does not support the in-place upgrade of SQL Server 2005 to [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)]. For more information, see [Are you upgrading from SQL Server 2005?](../../../database-engine/install/windows/are-you-upgrading-from-sql-server-2005.md).  
  
 The steps required for a new installation upgrade vary slightly depending upon whether you are using attached storage or SAN storage.  
  
-   **Attached storage environment:** If you have a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] environment using attached storage, the following diagram and the links within the diagram to guide you through the steps required for an new installation upgrade of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)].  
  
     ![New installation upgrade method using backup and restore for attached storage](../../../database-engine/install/windows/media/new-installation-upgrade-method-using-backup-and-restore-for-attached-storage.png "New installation upgrade method using backup and restore for attached storage")  
  
-   **SAN storage environment:**  If you have a [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] environment using SAN storage, the following diagram and the links within the diagram to guide you through the steps required for an new installation upgrade of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)].  
  
     ![New installation upgrade method using detach and attach for SAN storage](../../../database-engine/install/windows/media/new-installation-upgrade-method-using-detach-and-attach-for-san-storage.png "New installation upgrade method using detach and attach for SAN storage")  
  
##  <a name="RollingUpgrade"></a> Rolling upgrade  
 A rolling upgrade is required in SQL Server solution environments involving multiple [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] instances that must be upgraded in a certain order to maximize uptime, minimize risk, and preserve functionality. A rolling upgrade is essentially the upgrade of multiple [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] instances in a particular order, either performing an upgrade in-place on each existing [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]instance or performing a new installation upgrade to facilitate upgrading hardware and/or the operating system as part of the upgrade project. There are   a number of scenarios in which you need to use the rolling upgrade approach. These are documented in the following topics:  
  
-   Always-On Availability Groups: For detailed steps for performing a rolling upgrade in this environment, see [Upgrading Always On Availability Group Replica Instances](../../../database-engine/availability-groups/windows/upgrading-always-on-availability-group-replica-instances.md).  
  
-   Failover clustering instances: For detailed steps for performing a rolling upgrade in this environment, see [Upgrade a SQL Server Failover Cluster Instance](../../../sql-server/failover-clusters/windows/upgrade-a-sql-server-failover-cluster-instance.md)  
  
-   Mirrored instances: For detailed steps for performing a rolling upgrade in this environment, see [Upgrading Mirrored Instances](../../../database-engine/database-mirroring/upgrading-mirrored-instances.md).  
  
-   Log shipping instances: For detailed steps for performing a rolling upgrade in this environment, see [Upgrading Log Shipping to SQL Server 2016 &#40;Transact-SQL&#41;](../../../database-engine/log-shipping/upgrading-log-shipping-to-sql-server-2016-transact-sql.md)  
  
-   A replication environment: For detailed steps for performing a rolling upgrade in this environment, see [Upgrade Replicated Databases](../../../database-engine/install/windows/upgrade-replicated-databases.md)  
  
-   A SQL Server Reporting Services scale-out environment: For detailed steps for performing a rolling upgrade in this environment, see [Upgrade and Migrate Reporting Services](../../../reporting-services/install/windows/upgrade-and-migrate-reporting-services.md).  
  
## Did this Article Help You? We’re Listening  
 What information are you looking for, and did you find it? We’re listening to your feedback to improve the content. Please submit your comments to [sqlfeedback@microsoft.com](mailto:sqlfeedback@microsoft.com?subject=Your%20feedback%20about%20the%20Choose%20a%20Database%20Engine%20Upgrade%20Method%20page)  
  
## See Also  
 [Plan and Test the Database Engine Upgrade Plan](../../../database-engine/install/windows/plan-and-test-the-database-engine-upgrade-plan.md)   
 [Complete the Database Engine Upgrade](../../../database-engine/install/windows/complete-the-database-engine-upgrade.md)  
  
  