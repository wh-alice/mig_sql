---
title: "Availability replica is not joined | Microsoft Docs"
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
  - "sql13.swb.agdashboard.arp4joined.issues.f1"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], policies"
ms.assetid: 9c0d10b1-9e12-430c-83b9-ca2bd0a3afc4
caps.latest.revision: 15
ms.author: "mikeray"
manager: "jhubbard"
---
# Availability replica is not joined
    
## Introduction  
  
|||  
|-|-|  
|**Policy Name**|Availability Replica Join State|  
|**Issue**|Availability Replica is not joined.|  
|**Category**|**Warning**|  
|**Facet**|Availability replica|  
  
## Description  
 This policy checks the join state of the availability replica. The policy is in an unhealthy state when the availability replica is added to the availability group, but is not joined properly. The policy is otherwise in a healthy state.  
  
> [!NOTE]  
>  For this release of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], information about possible causes and solutions is located at [Availability replica is not joined](http://go.microsoft.com/fwlink/p/?LinkId=220859) on the TechNet Wiki.  
  
## Possible Causes  
 The secondary replica is not joined to the availability group. For an availability replica to be successfully joined to the availability group, the join state must be Joined Standalone Instance (1) or Joined Failover Cluster (2).  
  
## Possible Solution  
 Use Transact-SQL, PowerShell, or SQL Server Management Studio to join the secondary replica to the availability group. For more information about joining secondary replicas to availability groups, see [Joining a Secondary Replica to an Availability Group (SQL Server)](http://msdn.microsoft.com/library/ff878473\(SQL.110\).aspx).  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Use the Always On Dashboard &#40;SQL Server Management Studio&#41;](../../../database-engine/availability-groups/windows/use-the-always-on-dashboard-sql-server-management-studio.md)  
  
  