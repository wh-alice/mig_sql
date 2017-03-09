---
title: "Secondary database is not joined | Microsoft Docs"
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
  - "sql13.swb.agdashboard.drp2joined.issues.f1"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], policies"
ms.assetid: 10817e5e-75fa-42dd-baa2-359bea3ad051
caps.latest.revision: 14
ms.author: "mikeray"
manager: "jhubbard"
---
# Secondary database is not joined
    
## Introduction  
  
|||  
|-|-|  
|**Policy Name**|Availability Database Join State|  
|**Issue**|Secondary database is not joined.|  
|**Category**|**Warning**|  
|**Facet**|Availability database|  
  
## Description  
 This policy checks the join state of the secondary database (also known as a "secondary database replica"). The policy is in an unhealthy state when the dataset replica is not joined. The policy is otherwise in a healthy state.  
  
> [!NOTE]  
>  For this release of [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)], information about possible causes and solutions is located at [Secondary database is not joined](http://go.microsoft.com/fwlink/p/?LinkId=220862) on the TechNet Wiki.  
  
## Possible Causes  
 This secondary database is not joined to the availability group. The configuration of this secondary database is incomplete.  
  
## Possible Solution  
 Use Transact-SQL, PowerShell, or SQL Server Management Studio to join the secondary replica to the availability group. For more information about joining secondary replicas to availability groups, see [Joining a Secondary Replica to an Availability Group (SQL Server)](http://msdn.microsoft.com/library/ff878473\(SQL.110\).aspx).  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Use the Always On Dashboard &#40;SQL Server Management Studio&#41;](../../../database-engine/availability-groups/windows/use-the-always-on-dashboard-sql-server-management-studio.md)  
  
  