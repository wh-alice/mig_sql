---
title: "Availability group is not ready for automatic failover | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-17"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-high-availability"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.agdashboard.agp3autofailover.issues.f1"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], policies"
ms.assetid: 28261014-342c-442a-bd89-6d04b8d4e8b7
caps.latest.revision: 12
ms.author: "mikeray"
manager: "jhubbard"
---
# Availability group is not ready for automatic failover
    
## Introduction  
  
|||  
|-|-|  
|**Policy Name**|Availability Group Automatic Failover Readiness|  
|**Issue**|Availability group is not ready for automatic failover.|  
|**Category**|**Critical**|  
|**Facet**|Availability group|  
  
## Description  
 This policy checks to verify that the availability group has at least one secondary replica that is failover ready. The policy is in an unhealthy state and an alert is raised when the failover mode of the primary replica is automatic, however none of the secondary replicas in the availability group are failover ready.  
  
 The policy is in a healthy state when at least one secondary replica is automatic failover ready.  
  
> [!NOTE]  
>  For this release of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], information about possible causes and solutions is located at [Availability group is not ready for automatic failover](http://go.microsoft.com/fwlink/p/?LinkId=220851) on the TechNet Wiki.  
  
## Possible Causes  
 The availability group is not ready for automatic failover. The primary replica is configured for automatic failover; however, the secondary replica is not ready for automatic failover. The secondary replica that is configured for automatic failover might be unavailable or its data synchronization state is currently not SYNCHRONIZED.  
  
## Possible Solutions  
 Following are possible solutions for this issue:  
  
-   Verify that at least one secondary replica is configured as automatic failover. If there is not a secondary replica configured as automatic failover, update the configuration of a secondary replica to be the automatic failover target with synchronous commit.  
  
-   Use the policy to verify that the data is in a synchronization state and the automatic failover target is SYNCHRONIZED, and then resolve the issue at the availability replica.  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Use the Always On Dashboard &#40;SQL Server Management Studio&#41;](../../../database-engine/availability-groups/windows/use-the-always-on-dashboard-sql-server-management-studio.md)  
  
  