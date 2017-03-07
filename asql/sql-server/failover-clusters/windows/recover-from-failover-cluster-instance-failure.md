---
title: "Recover from Failover Cluster Instance Failure | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "clusters [SQL Server], recovery from failure"
  - "failover clustering [SQL Server], recovery from failure"
  - "hardware failures [SQL Server]"
  - "recovering failover cluster failures [SQL Server]"
ms.assetid: 3d151d0c-e841-4325-8606-c094de37d7d1
caps.latest.revision: 31
ms.author: "mikeray"
manager: "jhubbard"
---
# Recover from Failover Cluster Instance Failure
  This topic describes how to recover from cluster failures by using the Failover Cluster Manager snap-in after a failover occurs in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]. The Failover Cluster Manager snap-in is the cluster management application for the Windows Serer Failover Clustering (WSFC) service.  
  
-   [Recover from an irreparable failure](#Scenario1)  
  
-   [Recover from a software failure](#Scenario2)  
  
##  <a name="Scenario1"></a> Recover from an irreparable failure  
 Use the following steps to recover from an irreparable failure. The failure could be caused, for example, by the failure of a disk controller or the operating system. In this case, failure is caused by hardware failure in Node 1 of a two-node cluster.  
  
1.  After Node 1 fails, the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] FCI fails over to Node 2.  
  
2.  Evict Node 1 from the FCI. To do this, from Node 2, open the Failover Cluster Manager snap-in, right-click Node1, click **Move Actions**, and then click **Evict Node**.  
  
3.  Verify that Node 1 has been evicted from the cluster definition.  
  
4.  Install new hardware to replace the failed hardware in Node 1.  
  
5.  Using the Failover Cluster Manager snap-in, add Node 1 to the existing cluster. For more information, see [Before Installing Failover Clustering](../../../sql-server/failover-clusters/install/before-installing-failover-clustering.md).  
  
6.  Ensure that the administrator accounts are the same on all cluster nodes.  
  
7.  Run [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup to add Node 1 to the FCI. For more information, see [Add or Remove Nodes in a SQL Server Failover Cluster &#40;Setup&#41;](../../../sql-server/failover-clusters/install/add-or-remove-nodes-in-a-sql-server-failover-cluster-setup.md).  
  
##  <a name="Scenario2"></a> Recover from a reparable failure  
 Us the following steps to recover from a reparable failure. In this case, failure is caused by Node 1 being down or offline but not irretrievably broken. This could be caused by an operating system failure, hardware failure, or failure in the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance itself.  
  
1.  After Node 1 fails, the FCI fails over to Node 2.  
  
2.  Resolve the problem with Node 1.  
  
3.  Ensure that all nodes are online and the WSFC service is working.  
  
4.  Fail over [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to the recovered node.  
  
  