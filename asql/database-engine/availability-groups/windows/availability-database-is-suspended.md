---
title: "Availability database is suspended | Microsoft Docs"
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
  - "sql13.swb.agdashboard.drp1notsuspended.issues.f1"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], policies"
ms.assetid: 6baee70f-848c-4e86-b20d-78875c0f82cb
caps.latest.revision: 15
ms.author: "mikeray"
manager: "jhubbard"
---
# Availability database is suspended
    
## Introduction  
  
|||  
|-|-|  
|**Policy Name**|Availability Database Suspension State|  
|**Issue**|Availability database is suspended.|  
|**Category**|**Warning**|  
|**Facet**|Availability database|  
  
## Description  
 This policy checks the state of data movement of the secondary database (also known as a "secondary database replica"). The policy is in an unhealthy state when the data movement is suspended. The policy is otherwise in a healthy state.  
  
> [!NOTE]  
>  For this release of [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)], information about possible causes and solutions is located at [Availability database is suspended](http://go.microsoft.com/fwlink/p/?LinkId=220860) on the TechNet Wiki.  
  
## Possible Causes  
 Data synchronization on this availability database might have been suspended because of the following:  
  
-   Due to an error, the system might have suspended data synchronization.  
  
-   The database administrator might have suspended data synchronization for maintenance purposes.  
  
## Possible Solution  
 Resume data synchronization. If the issue persists, check the availability group in the Event log, and then diagnose why the system suspended data movement.  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Use the Always On Dashboard &#40;SQL Server Management Studio&#41;](../../../database-engine/availability-groups/windows/use-the-always-on-dashboard-sql-server-management-studio.md)  
  
  