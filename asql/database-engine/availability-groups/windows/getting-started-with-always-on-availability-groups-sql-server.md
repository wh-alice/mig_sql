---
title: "Getting Started with Always On Availability Groups (SQL Server) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-05-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], deploying"
  - "Availability Groups [SQL Server], about"
ms.assetid: 33f2f2d0-79e0-4107-9902-d67019b826aa
caps.latest.revision: 53
ms.author: "mikeray"
manager: "jhubbard"
---
# Getting Started with Always On Availability Groups (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

    This topic introduces the steps for configuring instances of [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] to support [!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] and for creating, managing, and monitoring an availability group.  
  
-   **Before You Begin:**  
  
     [Recommended Reading](#RecommendedReading)  
  
-   **Getting started with:**  
  
     [Configuring an instance of SQL Server to support Always On Availability Groups](#ConfigSI)  
  
     [Creating and configuring a new availability group](#ConfigAG)  
  
     [Managing availability groups, replicas, and databases](#ManageAGsEtc)  
  
     [Monitoring availability groups](#MonitorAGsEtc)  
  
-   [Related Content](#RelatedContent)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="RecommendedReading"></a> Recommended Reading  
 Before you create your first availability group, we recommend that you read the following topics:  
  
-   [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)  
  
-   [Prerequisites, Restrictions, and Recommendations for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/prereqs-restrictions-recommendations-always-on-availability.md)  
  
##  <a name="ConfigSI"></a> Configuring an Instance of SQL Server to Support Always On Availability Groups  
  
||Step|Links|  
|------|----------|-----------|  
|![Checkbox](../../../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|**Enable [!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)].** The [!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] feature must be enabled on every instance of [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] that is to participate in an availability group.<br /><br /> **Prerequisites:**  The host computer must be a Windows Server Failover Clustering (WSFC) node.<br /><br /> For information about the other prerequisites, see "SQL Server Instance Prerequisites and Restrictions" in [Prerequisites, Restrictions, and Recommendations for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/prereqs-restrictions-recommendations-always-on-availability.md).|[Enable and disable Always On Availability Groups](../../../database-engine/availability-groups/windows/enable-and-disable-always-on-availability-groups-sql-server.md)|  
|![Checkbox](../../../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|**Create database mirroring endpoint (if none).** Ensure that each server instance possesses a [database mirroring endpoint](../../../database-engine/database-mirroring/the-database-mirroring-endpoint-sql-server.md). The server instance uses this endpoint to receive [!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] connections from other server instances.|To determine whether database mirroring endpoint exists: <br />                    [sys.database_mirroring_endpoints](../../../relational-databases/reference/system-catalog-views/sys.database-mirroring-endpoints-transact-sql.md)<br /><br /> **For Windows Authentication**.  To create a database mirroring endpoint, using:<br /><br /> [New Availability Group Wizard](../../../database-engine/availability-groups/windows/use-the-availability-group-wizard-sql-server-management-studio.md)<br /><br /> [Transact-SQL](../../../database-engine/database-mirroring/create-a-database-mirroring-endpoint-for-windows-authentication-transact-sql.md)<br /><br /> [SQL Server PowerShell](../../../database-engine/availability-groups/windows/database-mirroring-always-on-availability-groups-powershell.md)<br /><br /> **For certificate authentication**. To create a database mirroring endpoint, using:[Transact-SQL](../../../database-engine/database-mirroring/use-certificates-for-a-database-mirroring-endpoint-transact-sql.md)|  
  
##  <a name="ConfigAG"></a> Creating and Configuring a New Availability Group  
  
||Step|Links|  
|------|----------|-----------|  
|![Checkbox](../../../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|**Create the availability group.** Create the availability group on the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] that hosts the databases to be added to the availability group.<br /><br /> Minimally, create the initial primary replica on the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] where you create the availability group. You can specify from one to four secondary replicas. For information about availability group and replica properties, see [CREATE AVAILABILITY GROUP &#40;Transact-SQL&#41;](../../../t-sql/statements/create-availability-group-transact-sql.md).<br /><br /> We strongly recommend that you create an [availability group listener](../../../database-engine/availability-groups/windows/listeners-client-connectivity-application-failover.md).<br /><br /> **Prerequisites:**  The instances of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] that host availability replicas for a given availability group must reside on separate nodes of a single WSFC cluster. The only exception is that while being migrated to another WSFC cluster, an availability group can temporarily straddle two clusters.<br /><br /> For information about the other prerequisites, see "Availability Group Prerequisites and Restrictions", "Availability Database Prerequisites and Restrictions", and "SQL Server Instance Prerequisites and Restrictions" in [Prerequisites, Restrictions, and Recommendations for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/prereqs-restrictions-recommendations-always-on-availability.md).|To create an availability group you can use any of the following tools:<br /><br /> [New Availability Group Wizard](../../../database-engine/availability-groups/windows/use-the-availability-group-wizard-sql-server-management-studio.md)<br /><br /> [Transact-SQL](../../../database-engine/availability-groups/windows/create-an-availability-group-transact-sql.md)<br /><br /> [SQL Server PowerShell](../../../database-engine/availability-groups/windows/create-an-availability-group-transact-sql.md)|  
|![Checkbox](../../../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|**Join secondary replicas to the availability group.** Connect to each instance of [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] that is hosting a secondary replica, and join the local secondary replica to the availability group.|[Join a secondary replica to an availability group](../../../database-engine/availability-groups/windows/join-a-secondary-replica-to-an-availability-group-sql-server.md)<br /><br /> Tip: If you use the New Availability Group Wizard, this step is automated.|  
|![Checkbox](../../../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|**Prepare secondary databases.** On every server instance that is hosting a secondary replica, restore backups of the primary databases using RESTORE WITH NORECOVERY.|[Manually prepare a secondary database](../../../database-engine/availability-groups/windows/manually-prepare-a-secondary-database-for-an-availability-group-sql-server.md)<br /><br /> Tip: The New Availability Group Wizard can prepare the secondary databases for you. For more information, see "Prerequisites for using full initial data synchronization" in [Select Initial Data Synchronization Page &#40;Always On Availability Group Wizards&#41;](../../../database-engine/availability-groups/windows/select-initial-data-synchronization-page-always-on-availability-group-wizards.md).|  
|![Checkbox](../../../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|**Join secondary databases to the availability group.** On every server instance that is hosting a secondary replica, join each local secondary database to the availability group. On joining the availability group, a given secondary database initiates data synchronization with the corresponding primary database.|[Join a secondary database to an availability group](../../../database-engine/availability-groups/windows/join-a-secondary-database-to-an-availability-group-sql-server.md)<br /><br /> Tip: The New Availability Group Wizard can perform this step if every secondary database exists on every secondary replica.|  
||**Create an availability group listener.**  This step is necessary unless you already created the availability group listener while creating the availability group.|[Create or Configure an Availability Group Listener &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/create-or-configure-an-availability-group-listener-sql-server.md)|  
|![Checkbox](../../../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|**Give the listener's DNS host name to application developers.**  Developers needs to specify this DNS name in the connection strings to direct connection requests to the availability group listener. For more information, see [Availability Group Listeners, Client Connectivity, and Application Failover &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/listeners-client-connectivity-application-failover.md).|"Follow Up: After Creating an Availability Group Listener" in [Create or Configure an Availability Group Listener &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/create-or-configure-an-availability-group-listener-sql-server.md)|  
|![Checkbox](../../../a9notintoc/media/checkboxemptycenterxtraspacetopandright.gif "Checkbox")|**Configure Where Backup Jobs.**  If you want to perform backups on secondary databases, you must create a backup job script that takes the automated backup preference into account. Create a script for each database in the availability group on every server instance that hosts an availability replica for the availability group.|"Follow Up: After Configuring Backup on Secondary Replicas" in [Configure Backup on Availability Replicas &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configure-backup-on-availability-replicas-sql-server.md)|  
  
##  <a name="ManageAGsEtc"></a> Managing Availability Groups, Replicas, and Databases  
  
> [!NOTE]  
>  For information about availability group and replica properties, see [CREATE AVAILABILITY GROUP &#40;Transact-SQL&#41;](../../../t-sql/statements/create-availability-group-transact-sql.md).  
  
 Managing existing availability groups involves one or more of the following tasks:  
  
|Task|Link|  
|----------|----------|  
|Modify the [flexible failover policy](../../../database-engine/availability-groups/windows/flexible-automatic-failover-policy-availability-group.md) of the availability group to control the conditions that cause an automatic failover. This policy is relevant only when automatic failover is possible.|[Configure the flexible failover policy of an availability group](../../../database-engine/availability-groups/windows/configure-flexible-automatic-failover-policy.md)|  
|Perform a planned manual failover or a forced manual failover (with possible data loss), typically called *forced failover*. For more information, see [Failover and Failover Modes &#40;Always On Availability Groups&#41;](../../../database-engine/availability-groups/windows/failover-and-failover-modes-always-on-availability-groups.md).|[Perform a planned manual failover](../../../database-engine/availability-groups/windows/perform-a-planned-manual-failover-of-an-availability-group-sql-server.md)<br /><br /> [Perform a forced manual failover](../../../database-engine/availability-groups/windows/perform-a-forced-manual-failover-of-an-availability-group-sql-server.md)|  
|Use a set of predefined policies to view the health of an availability group and its replicas and databases.|[Use policy-based management to view the health of availability groups](../../../database-engine/availability-groups/windows/use-always-on-policies-to-view-the-health-of-an-availability-group-sql-server.md)<br /><br /> [Use the Always On Group Dashboard](../../../database-engine/availability-groups/windows/use-the-always-on-dashboard-sql-server-management-studio.md)|  
|Add or remove a secondary replica.|[Add a secondary replica](../../../database-engine/availability-groups/windows/add-a-secondary-replica-to-an-availability-group-sql-server.md)<br /><br /> [Remove a secondary replica](../../../database-engine/availability-groups/windows/remove-a-secondary-replica-from-an-availability-group-sql-server.md)|  
|Suspend or resume an availability database. Suspending a secondary database keeps at its current point in time until you resume it.|[Suspend a database](../../../database-engine/availability-groups/windows/suspend-an-availability-database-sql-server.md)<br /><br /> [Resume a database](../../../database-engine/availability-groups/windows/resume-an-availability-database-sql-server.md)|  
|Add or remove a database.|[Add a database](../../../database-engine/availability-groups/windows/availability-group-add-a-database.md)<br /><br /> [Remove a secondary database](../../../database-engine/availability-groups/windows/remove-a-secondary-database-from-an-availability-group-sql-server.md)<br /><br /> [Remove a primary database](../../../database-engine/availability-groups/windows/remove-a-primary-database-from-an-availability-group-sql-server.md)|  
|Reconfigure or create an availability group listener.|[Create or configure an availability group listener](../../../database-engine/availability-groups/windows/create-or-configure-an-availability-group-listener-sql-server.md)|  
|Delete an availability group.|[Delete an availability group](../../../database-engine/availability-groups/windows/remove-an-availability-group-sql-server.md)|  
|Troubleshoot add file operations. This might be required if the primary database and a secondary database have different file paths.|[Troubleshoot a failed add-file operation](../../../database-engine/availability-groups/windows/troubleshoot-a-failed-add-file-operation-always-on-availability-groups.md)|  
|Alter availability replica properties.|[Change the Availability Mode](../../../database-engine/availability-groups/windows/change-the-availability-mode-of-an-availability-replica-sql-server.md)<br /><br /> [Change the Failover Mode](../../../database-engine/availability-groups/windows/change-the-failover-mode-of-an-availability-replica-sql-server.md)<br /><br /> [Configure Backup Priority (and Automated Backup Preference)](../../../database-engine/availability-groups/windows/configure-backup-on-availability-replicas-sql-server.md)<br /><br /> [Configure Read-Only Access](../../../database-engine/availability-groups/windows/configure-read-only-access-on-an-availability-replica-sql-server.md)<br /><br /> [Configure Read-Only Routing](../../../database-engine/availability-groups/windows/configure-read-only-routing-for-an-availability-group-sql-server.md)<br /><br /> [Change the Session-Timeout Period](../../../database-engine/availability-groups/windows/change-the-session-timeout-period-for-an-availability-replica-sql-server.md)|  
  
##  <a name="MonitorAGsEtc"></a> Monitoring Availability Groups  
 To monitor the properties and state of an Always On availability group you can use the following tools.  
  
|Tool|Brief Description|Links|  
|----------|-----------------------|-----------|  
|System Center Monitoring pack for SQL Server|The Monitoring pack for SQL Server (SQLMP) is the recommended solution for monitoring availability groups, availability replica and availability databases for IT administrators. Monitoring features that are particularly relevance to [!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] include the following:<br /><br /> Automatic discoverability of availability groups, availability replicas, and availability database from among hundreds of computers. This enables you to easily keep track of your [!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] inventory.<br /><br /> Fully capable System Center Operations Manager (SCOM) alerting and ticketing. These features provide detailed knowledge that enables faster resolution to a problem.<br /><br /> A custom extension to Always On Health monitoring using Policy Based management (PBM).<br /><br /> Health roll ups from availability databases to availability replicas.<br /><br /> Custom tasks that manage [!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] from the System Center Operations Manager console.|To download the monitoring pack (SQLServerMP.msi) and *SQL Server Management Pack Guide for System Center Operations Manager* (SQLServerMPGuide.doc), see:<br /><br /> [System Center Monitoring pack for SQL Server](http://www.microsoft.com/download/details.aspx?displaylang=en&id=10631)|  
|[!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)]|[!INCLUDE[ssHADR](../../../a9notintoc/includes/sshadr-md.md)] catalog and dynamic management views provide a wealth of information about your availability groups and their replicas, databases, listeners, and WSFC cluster environment.|[Monitor Availability Groups &#40;Transact-SQL&#41;](../../../database-engine/availability-groups/windows/monitor-availability-groups-transact-sql.md)|  
|[!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)]|The **Object Explorer Details** pane displays basic information about the availability groups hosted on the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] to which you are connected.<br /><br /> Tip: Use this pane to select multiple availability groups, replicas, or databases and to perform routine administrative tasks on the selected objects; for example, removing multiple availability replicas or databases from an availability group.|[Use Object Explorer Details to monitor availability groups](../../../database-engine/availability-groups/windows/use-object-explorer-details-to-monitor-availability-groups.md)|  
|[!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)]|**Properties** dialog boxes enable you to view the properties of availability groups, replicas, or listeners and, in some cases, to change their values.|[Availability Group Properties](../../../database-engine/availability-groups/windows/view-availability-group-properties-sql-server.md)<br /><br /> [Availability Replica Properties](../../../database-engine/availability-groups/windows/view-availability-replica-properties-sql-server.md)<br /><br /> [Availability Group Listener Properties](../../../database-engine/availability-groups/windows/view-availability-group-listener-properties-sql-server.md)|  
|System Monitor|The **SQLServer:Availability Replica** performance object contains performance counters that report information about availability replicas.|[SQL Server, Availability Replica](../../../relational-databases/monitor/performance-monitor/sql-server-availability-replica.md)|  
|System Monitor|The **SQLServer:Database Replica** performance object contains performance counters that report information about the secondary databases on a given secondary replica.<br /><br /> The **SQLServer:Databases** object in SQL Server contains performance counters that monitor transaction log activities, among other things. The following counters are particularly relevant for monitoring transaction-log activity on availability databases: **Log Flush Write Time (ms)**, **Log Flushes/sec**, **Log Pool Cache Misses/sec**, **Log Pool Disk Reads/sec**, and **Log Pool Requests/sec**.|[SQL Server, Database Replica](../../../relational-databases/monitor/performance-monitor/sql-server-database-replica.md)<br /><br /> [SQL Server, Databases Object](../../../relational-databases/monitor/performance-monitor/sql-server-databases-object.md)|  
  
##  <a name="RelatedContent"></a> Related Content  
  
-   **Video—Introduction to Always On:**  [Microsoft SQL Server Code-Named "Denali" Always On Series,Part 1: Introducing the Next Generation High Availability Solution](http://channel9.msdn.com/Events/TechEd/NorthAmerica/2011/DBI302)  
  
-   **Video—A Deep Dive into Always On:**  [Microsoft SQL Server Code-Named "Denali" Always On Series,Part 2: Building a Mission-Critical High Availability Solution Using Always On](http://channel9.msdn.com/Events/TechEd/NorthAmerica/2011/DBI404)  
  
-   **Whitepaper:**  [Microsoft SQL Server Always On Solutions Guide for High Availability and Disaster Recovery](http://go.microsoft.com/fwlink/?LinkId=227600)  
  
-   **Blogs:**  [SQL Server Always On Team Blog: The official SQL Server Always On Team Blog](https://blogs.msdn.microsoft.com/sqlAlwaysOn/)  
  
## See Also  
 [Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/always-on-availability-groups-sql-server.md)   
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Configuration of a Server Instance for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configuration-of-a-server-instance-for-always-on-availability-groups-sql-server.md)   
 [Creation and Configuration of Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/creation-and-configuration-of-availability-groups-sql-server.md)   
 [Monitoring of Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/monitoring-of-availability-groups-sql-server.md)   
 [Overview of Transact-SQL Statements for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/transact-sql-statements-for-always-on-availability-groups.md)   
 [Overview of PowerShell Cmdlets for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-powershell-cmdlets-for-always-on-availability-groups-sql-server.md)  
  
  