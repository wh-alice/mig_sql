---
title: "Supported Version and Edition Upgrades | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-24"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "components [SQL Server], adding to existing installations"
  - "versions [SQL Server], upgrading"
  - "upgrading SQL Server, upgrades supported"
  - "cross-language support"
ms.assetid: 702359c4-6ca9-42a8-860c-a95a802898a1
caps.latest.revision: 148
ms.author: "mikeray"
manager: "jhubbard"
---
# Supported Version and Edition Upgrades
  You can upgrade from [!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)], [!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)], [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)], and [!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)]. This topic lists the supported upgrade paths from these [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] versions, and the supported edition upgrades for [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
## Pre upgrade Checklist  
  
-   Before upgrading from one edition of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] to another, verify that the functionality you are currently using is supported in the edition to which you are moving.  
  
-   Before upgrading [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], enable Windows Authentication for [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent and verify the default configuration: that the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent service account is a member of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] sysadmin group.  
  
-   To upgrade to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], you must be running a supported operating system. For more information, see [Hardware and Software Requirements for Installing SQL Server 2016](../../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md).  
  
-   Upgrade will be blocked if there is a pending restart.  
  
-   Upgrade will be blocked if the Windows Installer service is not running.  
  
## Unsupported Scenarios  
  
-   Cross-version instances of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] are not supported. Version numbers of the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)], [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)], and [!INCLUDE[ssRSnoversion](../../../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] components must be the same in an instance of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
-   SQL Server 2016 is only available for 64-bit platforms. Cross-platform upgrade is not supported. You cannot upgrade a 32-bit instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to native 64-bit using [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup. However, you can back up or detach databases from a 32-bit instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], and then restore or attach them to a new instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (64-bit) if the databases are not published in replication. You must re-create any logins and other user objects in master, msdb, and model system databases.  
  
-   You cannot add new features during the upgrade of your existing instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. After you upgrade an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], you can add features by using the [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Setup. For more information, see [Add Features to an Instance of SQL Server 2016 &#40;Setup&#41;](../../../database-engine/install/windows/add-features-to-an-instance-of-sql-server-2016-setup.md).  
 
-   Failover Clusters are not supported in WOW mode.  
  
-   Upgrade from an Evaluation edition of a previous [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] version is not supported.

-   When upgrading from RC1 or previous versions of SQL Server 2016 to RC3 or later versions, PolyBase must be uninstalled before the upgrade and reinstalled after the upgrade.
  
## Upgrades from Earlier Versions to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]  
 
SQL Server 2016 supports upgrade from the following versions of SQL Server:
 
- SQL Server 2008 SP3 or later
- SQL Server 2008 R2 SP2 or later
- SQL Server 2012 SP2 or later
- SQL Server 2014 or later 
 

  
> [!NOTE]  
>  To upgrade databases on [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] see [Support for 2005](#SupportFor2005).  
  
 The table below lists the supported upgrade scenarios from earlier versions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
|Upgrade from|Supported upgrade path|  
|------------------|----------------------------|  
|[!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] SP3 Enterprise|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] SP3 Developer|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer|  
|[!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] SP3 Standard|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] SP3 Small Business|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] SP3 Web|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web|  
|[!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] SP3 Workgroup|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] SP3 Express |[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Express|  
|[!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP2 Datacenter|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP2 Enterprise|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP2 Developer|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer|  
|[!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP2 Small Business|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP2 Standard|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP2 Web|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web|  
|[!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP2 Workgroup|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssKilimanjaro](../../../analysis-services/instances/install/windows/includes/sskilimanjaro-md.md)] SP2 Express |[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Express|  
|[!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] SP2 Enterprise|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] SP2 Developer|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] SP2 Standard|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] SP1 Web|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web|  
|[!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] SP2 Express |[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Express <br/> <br/> |  
|[!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] SP2 Business Intelligence|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] SP2 Evaluation|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Evaluation <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer|  
|[!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] Enterprise|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] Developer|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] Standard|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] Web|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web|  
|[!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] Express |[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Express <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer|  
|[!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] Business Intelligence|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/> |  
|[!INCLUDE[ssSQL14](../../../analysis-services/includes/sssql14-md.md)] Evaluation|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Evaluation <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer|  
|[!INCLUDE[ssSQL15_md](../../../analysis-services/powershell/includes/sssql15-md.md)] release candidate* |[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise |  
|[!INCLUDE[ssSQL15_md](../../../analysis-services/powershell/includes/sssql15-md.md)] Developer |[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise | 

 \* Microsoft support to upgrade from release candidate software is specifically for customers who participated in the Technology Adoption Program (TAP). 

   
###  <a name="SupportFor2005"></a> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Support for [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)]  
 This section discusses [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] support for [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)]. In [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], you will be able to do the following:  
  
-   Attach a [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] database (mdf/ldf files) to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] instance of database engine.  
  
-   Restore a [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] database to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] instance of database engine from a backup.  
  
-   Back up a [!INCLUDE[ssASversion2005](../../../database-engine/install/windows/includes/ssasversion2005-md.md)] cube and restoring on [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
 When a [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] database is upgraded to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], the database compatibility level will be changed from 90 to 100. (In [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], valid values for the database compatibility level are 100, 110, 120, and 130.) [ALTER DATABASE Compatibility Level &#40;Transact-SQL&#41;](../../../t-sql/statements/alter-database-transact-sql-compatibility-level.md) discusses how the compatibility level change could affect [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] applications.  
  
 Any scenarios not specified in the list above are not supported, including but not limited to the following:  
  
-   Installing [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] and [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] on same computer (side by side).  
  
-   Using a [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] instance as a member of the replication topology that involves a [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] instance.  
  
-   Configuring database mirroring between [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] and [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] instances.  
  
-   Backing up the transaction log with log shipping between [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] and [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] instances.  
  
-   Configuring linked servers between [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] and [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] instances.  
  
-   Managing a [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] instance from a [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Management Studio.  
  
-   Attaching a [!INCLUDE[ssASversion2005](../../../database-engine/install/windows/includes/ssasversion2005-md.md)] cube in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Management Studio.  
  
-   Connecting to [!INCLUDE[ssISversion2005](../../../database-engine/install/windows/includes/ssisversion2005-md.md)] from [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Management Studio.  
  
-   Managing a [!INCLUDE[ssISversion2005](../../../database-engine/install/windows/includes/ssisversion2005-md.md)] service from [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Management Studio.  
  
-   Support for [!INCLUDE[ssVersion2005](../../../analysis-services/data-mining/includes/ssversion2005-md.md)] third party custom Integration Services components, such as execute and upgrade.  
  
## [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Edition Upgrade  
 The following table lists the supported edition upgrade scenarios in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)].  
  
 For step-by-step instructions on how to perform an edition upgrade, see [Upgrade to a Different Edition of SQL Server 2016 &#40;Setup&#41;](../../../database-engine/install/windows/upgrade-to-a-different-edition-of-sql-server-setup.md).  
  
|Upgrade From|Upgrade To|  
|------------------|----------------|  
|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL and Core)**|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise |  
|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Evaluation Enterprise**|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL or Core License) <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> Upgrading from Evaluation (a free edition) to any of the paid editions is supported for stand-alone installations, but is not supported for clustered installations.|  
|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard**|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL or Core License)|  
|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer**|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL or Core License) <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL or Core License) <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard|  
|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Express*|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL or Core License) <br/><br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard <br/> <br/> [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Web|  
  
 Additionally you can also perform an edition upgrade between [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL license) and [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Core License):  
  
|Edition Upgrade From|Edition Upgrade To|  
|--------------------------|------------------------|  
|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL License)**|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Core License)|  
|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Core License)|[!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise (Server+CAL License)|  
  
 \* Also applies to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Express with Tools and [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Express with Advanced Services.  
  
 ** Changing the edition of a [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] failover cluster is limited. The following scenarios are not supported for [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] failover clusters:  
  
-   [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Enterprise to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer, Standard, or Evaluation.  
  
-   [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Developer to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard or Evaluation.  
  
-   [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Evaluation.  
  
-   [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Evaluation to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] Standard.  
  
## See Also  

 [Editions and Supported Features for SQL Server 2016](../../../sql-server/editions-and-supported-features-for-sql-server-2016.md)
 
 [Hardware and Software Requirements for Installing SQL Server 2016](../../../sql-server/install/hardware-and-software-requirements-for-installing-sql-server.md)   
 
 [Upgrade to SQL Server 2016](../../../database-engine/install/windows/upgrade-sql-server.md)  
  
  