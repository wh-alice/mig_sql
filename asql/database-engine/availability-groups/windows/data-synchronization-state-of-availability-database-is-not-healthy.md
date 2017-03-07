---
title: "Data synchronization state of availability database is not healthy | Microsoft Docs"
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
  - "sql13.swb.agdashboard.arp3datasynchealthy.issues.f1"
helpviewer_keywords: 
  - "Availability Groups [SQL Server], policies"
ms.assetid: 4fd003e7-808e-4b0e-b28a-47d9f2616f06
caps.latest.revision: 15
ms.author: "mikeray"
manager: "erikre"
---
# Data synchronization state of availability database is not healthy
    
## Introduction  
  
|||  
|-|-|  
|**Policy Name**|Availability Database Data Synchronization State|  
|**Issue**|Data synchronization state of availability database is not healthy.|  
|**Category**|**Warning**|  
|**Facet**|Availability database|  
  
## Description  
 This policy rolls up the data synchronization state of all availability databases (also known as "database replicas") in the availability replica. The policy is in an unhealthy sate when any database replica is not in the expected data synchronization state. The policy is otherwise in a healthy state.  
  
> [!NOTE]  
>  For this release of [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)], information about possible causes and solutions is located at [Data synchronization state of some availability database is not healthy](http://go.microsoft.com/fwlink/p/?LinkId=220858) on the TechNet Wiki.  
  
## Possible Causes  
 The data synchronization state of this availability database is unhealthy. On an asynchronous-commit availability replica, every availability database should be in the SYNCHRONIZING state. On a synchronous-commit replica, every availability database must be in the SYNCHRONIZED state.  
  
## Possible Solution  
 Use the database replica policy to find the database replica with an unhealthy data synchronization state, and then resolve the issue at the database replica.  
  
## See Also  
 [Overview of Always On Availability Groups &#40;SQL Server&#41;](../Topic/Overview%20of%20Always On%20Availability%20Groups%20\(SQL%20Server\).md)   
 [Use the Always On Dashboard &#40;SQL Server Management Studio&#41;](../Topic/Use%20the%20Always On%20Dashboard%20\(SQL%20Server%20Management%20Studio\).md)  
  
  