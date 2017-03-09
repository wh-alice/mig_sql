---
title: "Failover Clustering and Always On Availability Groups (SQL Server) | Microsoft Docs"
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
  - "clustering [SQL Server]"
  - "Availability Groups [SQL Server], WSFC clusters"
  - "Failover Cluster Instances [SQL Server], see failover clustering [SQL Server]"
  - "quorum [SQL Server]"
  - "failover clustering [SQL Server], AlwaysOn Availability Groups"
  - "Availability Groups [SQL Server], Failover Cluster Instances"
ms.assetid: 613bfbf1-9958-477b-a6be-c6d4f18785c3
caps.latest.revision: 48
ms.author: "mikeray"
manager: "jhubbard"
---
# Failover Clustering and Always On Availability Groups (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../database-engine/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

   [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)], the high availability and disaster recovery solution introduced in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], requires Windows Server Failover Clustering (WSFC). Also, though [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] is not dependent upon [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Failover Clustering, you can use a failover clustering instance (FCI) to host an availability replica for an availability group. It is important to know the role of each clustering technology, and to know what considerations are necessary as you design your [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] environment.  
  
> [!NOTE]  
>  For information about [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] concepts, see [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md).  
  
 **In This Topic:**  
  
-   [Windows Server Failover Clustering](#WSFC)  
  
-   [SQL Server Failover Clustering](#SQLServerFC)  
  
-   [Restrictions on Using The WSFC Failover Cluster Manager with Availability Groups](#FCMrestrictions)  
  
##  <a name="WSFC"></a> Windows Server Failover Clustering and Availability Groups  
 Deploying [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] requires a Windows Server Failover Clustering (WSFC) cluster. To be enabled for [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)], an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must reside on a WSFC node, and the WSFC cluster and node must be online. Furthermore, each availability replica of a given availability group must reside on a different node of the same WSFC cluster. The only exception is that while being migrated to another WSFC cluster, an availability group can temporarily straddle two clusters.  
  
 [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] relies on the Windows Failover Clustering (WSFC) cluster to monitor and manage the current roles of the availability replicas that belong to a given availability group and to determine how a failover event affects the availability replicas. A WSFC resource group is created for every availability group that you create. The WSFC cluster monitors this resource group to evaluate the health of the primary replica.  
  
 The quorum for [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] is based on all nodes in the WSFC cluster regardless of whether a given cluster node hosts any availability replicas. In contrast to database mirroring, there is no witness role in [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)].  
  
 The overall health of a WSFC cluster is determined by the votes of quorum of nodes in the cluster. If the WSFC cluster goes offline because of an unplanned disaster, or due to a persistent hardware or communications failure, manual administrative intervention is required. A Windows Server or WSFC cluster administrator will need to force a quorum and then bring the surviving cluster nodes back online in a non-fault-tolerant configuration.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] registry keys are subkeys of the WSFC cluster. If you delete and re-create a WSFC cluster, you must disable and re-enable the [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] feature on each instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that hosted an availability replica on the original WSFC cluster.  
  
 For information about running [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] on Windows Server Failover Clustering (WSFC) nodes and about WSFC quorum, see [Windows Server Failover Clustering &#40;WSFC&#41; with SQL Server](../../../sql-server/failover-clusters/windows/windows-server-failover-clustering-wsfc-with-sql-server.md).  
  
### Cross-Cluster Migration of Always On Availability Groups for OS Upgrade  
 Beginning with [!INCLUDE[ssSQL11SP1](../../../analysis-services/instances/install/windows/includes/sssql11sp1-md.md)], [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] supports cross-cluster migration of availability groups for deployments to a new Windows Server Failover Clustering (WSFC) cluster. A cross-cluster migration moves one availability group or a batch of availability groups to the new, destination WSFC cluster with minimal downtime. The cross-cluster migration process enables you to maintain your service level agreements (SLAs) when upgrading to a [!INCLUDE[win8srv](../../../database-engine/availability-groups/windows/includes/win8srv-md.md)] cluster. [!INCLUDE[ssSQL11SP1](../../../analysis-services/instances/install/windows/includes/sssql11sp1-md.md)] (or a later version) must be installed and enabled for Always On on the destination WSFC cluster. The success of a cross-cluster migration depends on thorough planning and preparation of the destination WSFC cluster.  
  
 For more information, see [Cross-Cluster Migration of Always On Availability Groups for OS Upgrade](http://msdn.microsoft.com/library/jj873730.aspx).  
  
##  <a name="SQLServerFC"></a> [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Failover Cluster Instances (FCIs) and Availability Groups  
 You can set up a second layer of failover at the server-instance level by implementing [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover clustering together with the WSFC cluster. An availability replica can be hosted by either a standalone instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or an FCI instance. Only one FCI partner can host a replica for a given availability group. When an availability replica is running on an FCI, the possible owners list for the availability group will contain only the active FCI node.  
  
 [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] does not depend on any form of shared storage. However, if you use a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster instance (FCI) to host one or more availability replicas, each of those FCIs will require shared storage as per standard SQL Server failover cluster instance installation.  
  
 For more information about additional prerequisites, see the "Prerequisites and Restrictions for Using a SQL Server Failover Cluster Instance (FCI) to Host an Availability Replica" section of [Prerequisites, Restrictions, and Recommendations for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/prereqs-restrictions-recommendations-always-on-availability.md).  
  
### Comparison of Failover Cluster Instances and Availability Groups  
 Regardless of the number of nodes in the FCI, an entire FCI hosts a single replica within an availability group. The following table describes the distinctions in concepts between nodes in an FCI and replicas within an availability group.  
  
||Nodes within an FCI|Replicas within an availability group|  
|-|-------------------------|-------------------------------------------|  
|**Uses WSFC cluster**|Yes|Yes|  
|**Protection level**|Instance|Database|  
|**Storage type**|Shared|Non-shared<br /><br /> While the replicas in an availability group do not share storage, a replica that is hosted by an FCI uses a shared storage solution as required by that FCI. The storage solution is shared only by nodes within the FCI and not between replicas of the availability group.|  
|**Storage solutions**|Direct attached, SAN, mount points, SMB|Depends on node type|  
|**Readable secondaries**|No*|Yes|  
|**Applicable failover policy settings**|WSFC quorum<br /><br /> FCI-specific<br /><br /> Availability group settings**|WSFC quorum<br /><br /> Availability group settings|  
|**Failed-over resources**|Server, instance, and database|Database only|  
  
 *Whereas synchronous secondary replicas in an availability group are always running on their respective [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instances, secondary nodes in an FCI actually have not started their respective [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instances and are therefore not readable. In an FCI, a secondary node starts its [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance only when the resource group ownership is transferred to it during an FCI failover. However, on the active FCI node, when an FCI-hosted database belongs to an availability group, if the local availability replica is running as a readable secondary replica, the database is readable.  
  
 **Failover policy settings for the availability group apply to all replicas, whether it is hosted in a standalone instance or an FCI instance.  
  
> [!NOTE]  
>  For more information about **Number of nodes** within Failover Clustering and **Always On Availability Groups** for different editions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2012](http://go.microsoft.com/fwlink/?linkid=232473) (http://go.microsoft.com/fwlink/?linkid=232473).  
  
### Considerations for hosting an Availability Replica on an FCI  
  
> [!IMPORTANT]  
>  If you plan to host an availability replica on a SQL Server Failover Cluster Instance (FCI), ensure that the Windows Server 2008 host nodes meet the Always On prerequisites and restrictions for Failover Cluster Instances (FCIs). For more information, see [Prerequisites, Restrictions, and Recommendations for Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/prereqs-restrictions-recommendations-always-on-availability.md).  
  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Failover Cluster Instances (FCIs) do not support automatic failover by availability groups, so any availability replica that is hosted by an FCI can only be configured for manual failover.  
  
 You might need to configure a Windows Server Failover Clustering (WSFC) cluster to include shared disks that are not available on all nodes. For example, consider a WSFC cluster across two data centers with three nodes. Two of the nodes host a SQL Server failover clustering instance (FCI) in the primary data center and have access to the same shared disks. The third node hosts a stand-alone instance of SQL Server in a different data center and does not have access to the shared disks from the primary data center. This WSFC cluster configuration supports the deployment of an availability group if the FCI hosts the primary replica and the stand-alone instance hosts the secondary replica.  
  
 When choosing an FCI to host an availability replica for a given availability group, ensure that an FCI failover could not potentially cause a single WSFC node to attempt to host two availability replicas for the same availability group.  
  
 The following example scenario illustrates how this configuration could lead to problems:  
  
 Marcel configures two a WSFC cluster with two nodes, `NODE01` and `NODE02`. He installs a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover cluster instance, `fciInstance1`, on both `NODE01` and `NODE02` where `NODE01` is the current owner for `fciInstance1`.  
 On `NODE02`, Marcel installs another instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], `Instance3`, which is a stand-alone instance.  
 On `NODE01`, Marcel enables fciInstance1 for [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)]. On `NODE02`, he enables `Instance3` for [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)]. Then he sets up an availability group for which `fciInstance1` hosts the primary replica, and `Instance3` hosts the secondary replica.  
 At some point `fciInstance1` becomes unavailable on `NODE01`, and the WSFC cluster causes a failover of `fciInstance1` to `NODE02`. After the failover, `fciInstance1` is a [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)]-enabled instance running under the primary role on `NODE02`. However, `Instance3` now resides on the same WSFC node as `fciInstance1`. This violates the [!INCLUDE[ssHADR](../../../analysis-services/power-pivot-sharepoint/includes/sshadr-md.md)] constraint.  
 To correct the problem that this scenario presents, the stand-alone instance, `Instance3`, must reside on another node in the same WSFC cluster as `NODE01` and `NODE02`.  
  
 For more information about [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] failover clustering, see [Always On Failover Cluster Instances &#40;SQL Server&#41;](../../../sql-server/failover-clusters/windows/always-on-failover-cluster-instances-sql-server.md).  
  
##  <a name="FCMrestrictions"></a> Restrictions on Using The WSFC Failover Cluster Manager with Availability Groups  
 Do not use the Failover Cluster Manager to manipulate availability groups, for example:  
  
-   Do not add or remove resources in the clustered service (resource group) for the availability group.  
  
-   Do not change any availability group properties, such as the possible owners and preferred owners. These properties are set automatically by the availability group.  
  
-   Do not use the Failover Cluster Manager to move availability groups to different nodes or to fail over availability groups. The Failover Cluster Manager is not aware of the synchronization status of the availability replicas, and doing so can lead to extended downtime. You must use [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] or [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
##  <a name="RelatedContent"></a> Related Content  
  
-   **Blogs:**  
  
     [Configure Windows Failover Clustering for SQL Server (Availability Group or FCI) with Limited Security](https://blogs.msdn.microsoft.com/sqlalwayson/2012/06/05/configure-windows-failover-clustering-for-sql-server-availability-group-or-fci-with-limited-security/)  
  
     [SQL Server Always On Team Blogs: The official SQL Server Always On Team Blog](https://blogs.msdn.microsoft.com/sqlalwayson/)  
  
     [CSS SQL Server Engineers Blogs](http://blogs.msdn.com/b/psssql/)  
  
-   **Whitepapers:**  
  
     [Always On Architecture Guide: Building a High Availability and Disaster Recovery Solution by Using Failover Cluster Instances and Availability Groups](http://msdn.microsoft.com/library/jj215886.aspx)  
  
     [Microsoft SQL Server Always On Solutions Guide for High Availability and Disaster Recovery](http://go.microsoft.com/fwlink/?LinkId=227600)  
  
     [Microsoft White Papers for SQL Server 2012](http://msdn.microsoft.com/library/hh403491.aspx)  
  
     [SQL Server Customer Advisory Team Whitepapers](http://sqlcat.com/)  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Enable and Disable Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/enable-and-disable-always-on-availability-groups-sql-server.md)   
 [Monitor Availability Groups &#40;Transact-SQL&#41;](../../../database-engine/availability-groups/windows/monitor-availability-groups-transact-sql.md)   
 [Always On Failover Cluster Instances &#40;SQL Server&#41;](../../../sql-server/failover-clusters/windows/always-on-failover-cluster-instances-sql-server.md)  
  
  