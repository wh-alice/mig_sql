---
title: "Administration of an Availability Group (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], managing"
ms.assetid: 0b7542fa-235e-413d-81bf-3eff9ee07480
caps.latest.revision: 21
ms.author: "mikeray"
manager: "jhubbard"
---
# Administration of an Availability Group (SQL Server)
 Managing an existing Always On availability group in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] involves one or more of the following tasks:  
  
-   Altering the properties of an existing availability replica, for example to change client connection access (for configuring readable secondary replicas), changing its failover mode, availability mode, or session timeout setting.  
  
-   Adding or removing secondary replicas.  
  
-   Adding or removing a database.  
  
-   Suspending or resuming a database.  
  
-   Performing a planned manual failover (a *manual failover*) or a forced manual failover (a *forced failover*).  
  
-   Creating or configuring an availability group listener.  
  
-   Managing [readable secondary replicas](../../../database-engine/availability-groups/windows/active-secondaries-readable-secondary-replicas-always-on-availability-groups.md) for a given availability group. This involves configuring one or more replicas to read-only access when running under the secondary role, and configuring read-only routing.  
  
-   Managing [backups on secondary replicas](../../../database-engine/availability-groups/windows/active-secondaries-backup-on-secondary-replicas-always-on-availability-groups.md) for a given availability group. This involves configuring where you prefer that backup jobs run and then scripting backup jobs to implement your backup preference. you need to script backup jobs for every database in the availability group on every instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that hosts an availability replica.  
  
-   Deleting an availability group.  
  
-   Cross-cluster migration of Always On Availability Groups for OS upgrade  
  
##  <a name="RelatedTasks"></a> Related Tasks  
 **To configure an existing availability group**  
  
-   [Add a Secondary Replica to an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/add-a-secondary-replica-to-an-availability-group-sql-server.md)  
  
-   [Remove a Secondary Replica from an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remove-a-secondary-replica-from-an-availability-group-sql-server.md)  
  
-   [Add a Database to an Availability Group &#40;SQL Server&#41;](../Topic/Add%20a%20Database%20to%20an%20Availability%20Group%20\(SQL%20Server\).md)  
  
-   [Remove a Secondary Database from an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remove-a-secondary-database-from-an-availability-group-sql-server.md)  
  
-   [Remove a Primary Database from an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remove-a-primary-database-from-an-availability-group-sql-server.md)  
  
-   [Configure the Flexible Failover Policy to Control Conditions for Automatic Failover &#40;Always On Availability Groups&#41;](../Topic/Configure%20the%20Flexible%20Failover%20Policy%20to%20Control%20Conditions%20for%20Automatic%20Failover%20\(Always%20On%20Availability%20Groups\).md)  
  
 **To manage an availability group**  
  
-   [Configure Backup on Availability Replicas &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configure-backup-on-availability-replicas-sql-server.md)  
  
-   [Perform a Planned Manual Failover of an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/perform-a-planned-manual-failover-of-an-availability-group-sql-server.md)  
  
-   [Perform a Forced Manual Failover of an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/perform-a-forced-manual-failover-of-an-availability-group-sql-server.md)  
  
-   [Remove an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remove-an-availability-group-sql-server.md)  
  
 **To manage an availability replica**  
  
-   [Add a Secondary Replica to an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/add-a-secondary-replica-to-an-availability-group-sql-server.md)  
  
-   [Join a Secondary Replica to an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/join-a-secondary-replica-to-an-availability-group-sql-server.md)  
  
-   [Remove a Secondary Replica from an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remove-a-secondary-replica-from-an-availability-group-sql-server.md)  
  
-   [Change the Availability Mode of an Availability Replica &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/change-the-availability-mode-of-an-availability-replica-sql-server.md)  
  
-   [Change the Failover Mode of an Availability Replica &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/change-the-failover-mode-of-an-availability-replica-sql-server.md)  
  
-   [Configure Backup on Availability Replicas &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configure-backup-on-availability-replicas-sql-server.md)  
  
-   [Configure Read-Only Access on an Availability Replica &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configure-read-only-access-on-an-availability-replica-sql-server.md)  
  
-   [Configure Read-Only Routing for an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configure-read-only-routing-for-an-availability-group-sql-server.md)  
  
-   [Change the Session-Timeout Period for an Availability Replica &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/change-the-session-timeout-period-for-an-availability-replica-sql-server.md)  
  
 **To manage an availability database**  
  
-   [Add a Database to an Availability Group &#40;SQL Server&#41;](../Topic/Add%20a%20Database%20to%20an%20Availability%20Group%20\(SQL%20Server\).md)  
  
-   [Join a Secondary Database to an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/join-a-secondary-database-to-an-availability-group-sql-server.md)  
  
-   [Remove a Primary Database from an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remove-a-primary-database-from-an-availability-group-sql-server.md)  
  
-   [Remove a Secondary Database from an Availability Group &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/remove-a-secondary-database-from-an-availability-group-sql-server.md)  
  
-   [Suspend an Availability Database &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/suspend-an-availability-database-sql-server.md)  
  
-   [Resume an Availability Database &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/resume-an-availability-database-sql-server.md)  
  
 **To monitor an availability group**  
  
-   [Monitoring of Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/monitoring-of-availability-groups-sql-server.md)  
  
 **To support migrating availability groups to a new WSFC cluster (cross-cluster migration)**  
  
-   [Change the HADR Cluster Context of Server Instance &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/change-the-hadr-cluster-context-of-server-instance-sql-server.md)  
  
-   [Take an Availability Group Offline &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/take-an-availability-group-offline-sql-server.md)  
  
##  <a name="RelatedContent"></a> Related Content  
  
-   **Blogs:**  
  
     [SQL Server Always On Team Blogs: The official SQL Server Always On Team Blog](https://blogs.msdn.microsoft.com/sqlalwayson/)  
  
     [CSS SQL Server Engineers Blogs](http://blogs.msdn.com/b/psssql/)  
  
-   **Videos:**  
  
     [Microsoft SQL Server Code-Named "Denali" Always On Series,Part 1: Introducing the Next Generation High Availability Solution](http://channel9.msdn.com/Events/TechEd/NorthAmerica/2011/DBI302)  
  
     [Microsoft SQL Server Code-Named "Denali" Always On Series,Part 2: Building a Mission-Critical High Availability Solution Using Always On](http://channel9.msdn.com/Events/TechEd/NorthAmerica/2011/DBI404)  
  
-   **White papers:**  
  
     [Microsoft White Papers for SQL Server 2012](http://msdn.microsoft.com/library/hh403491.aspx)  
  
     [SQL Server Customer Advisory Team Whitepapers](http://sqlcat.com/)  
  
## See Also  
 [Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/always-on-availability-groups-sql-server.md)   
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Configuration of a Server Instance for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/configuration-of-a-server-instance-for-always-on-availability-groups-sql-server.md)   
 [Creation and Configuration of Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/creation-and-configuration-of-availability-groups-sql-server.md)   
 [Active Secondaries: Readable Secondary Replicas &#40;Always On Availability Groups&#41;](../../../database-engine/availability-groups/windows/active-secondaries-readable-secondary-replicas-always-on-availability-groups.md)   
 [Active Secondaries: Backup on Secondary Replicas &#40;Always On Availability Groups&#41;](../../../database-engine/availability-groups/windows/active-secondaries-backup-on-secondary-replicas-always-on-availability-groups.md)   
 [Availability Group Listeners, Client Connectivity, and Application Failover &#40;SQL Server&#41;](../Topic/Availability%20Group%20Listeners,%20Client%20Connectivity,%20and%20Application%20Failover%20\(SQL%20Server\).md)   
 [Always On Policies for Operational Issues with Always On Availability Groups &#40;SQL Server&#41;](../Topic/Always%20On%20Policies%20for%20Operational%20Issues%20with%20Always%20On%20Availability%20Groups%20\(SQL%20Server\).md)   
 [Monitoring of Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/monitoring-of-availability-groups-sql-server.md)   
 [Always On Availability Groups: Interoperability &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/always-on-availability-groups-interoperability-sql-server.md)   
 [Overview of Transact-SQL Statements for Always On Availability Groups &#40;SQL Server&#41;](../Topic/Overview%20of%20Transact-SQL%20Statements%20for%20Always%20On%20Availability%20Groups%20\(SQL%20Server\).md)   
 [Overview of PowerShell Cmdlets for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-powershell-cmdlets-for-always-on-availability-groups-sql-server.md)  
  
   