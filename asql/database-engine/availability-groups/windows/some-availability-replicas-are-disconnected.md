---
title: "Some availability replicas are disconnected | Microsoft Docs"
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
  - "sql13.swb.agdashboard.agp7allconnected.issues.f1"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], policies"
ms.assetid: aea808be-6f0f-40c2-9aa2-a2a435ec6443
caps.latest.revision: 12
ms.author: "mikeray"
manager: "jhubbard"
---
# Some availability replicas are disconnected
    
## Introduction  
  
|||  
|-|-|  
|**Policy Name**|Availability Replicas Connection State|  
|**Issue**|Some availability replicas are disconnected.|  
|**Category**|**Warning**|  
|**Facet**|Availability group|  
  
## Description  
 This policy rolls up the connection state of all availability replicas and checks for any availability replicas that are DISCONENCTED. The policy is in an unhealthy state when any availability replica is DISCONNECTED. The policy is otherwise in a healthy state.  
  
> [!NOTE]  
>  For this release of [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)], information about possible causes and solutions is located at [Some availability replicas are disconnected](http://go.microsoft.com/fwlink/p/?LinkId=220855) on the TechNet Wiki.  
  
## Possible Causes  
 In this availability group, at least one secondary replica is not connected to the primary replica. The connected state is DISCONNECTED.  
  
## Possible Solution  
 Use the availability replica policy state to find the availability replica that is DISCONNECTED, and then resolve the issue at the availability replica.  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../../../database-engine/availability-groups/windows/overview-of-always-on-availability-groups-sql-server.md)   
 [Use the Always On Dashboard &#40;SQL Server Management Studio&#41;](../../../database-engine/availability-groups/windows/use-the-always-on-dashboard-sql-server-management-studio.md)  
  
  