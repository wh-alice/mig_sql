---
title: "Schedules Page (Report Manager) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: ef19d96e-9f00-4434-950e-152dda9c1ced
caps.latest.revision: 29
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Schedules Page (Report Manager)
  Use the Schedules page to create, modify, delete, pause, or resume shared schedules. A shared schedule is a named schedule that you can create and manage separately from reports, subscriptions, and other processes that consume schedule information. Users can select shared schedules that you provide.  
  
 To delete, pause, or resume a shared schedule, select the check box next to the shared schedule that you want to modify.  
  
> [!NOTE]  
>  This feature is not available in every edition of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
## Navigation  
 Use the following procedure to navigate to this location in the user interface (UI).  
  
### To open the Schedules page  
  
1.  Open Report Manager.  
  
2.  At the top of the page, in the right-hand corner, click **Site Settings**. This opens the General Properties page of the site.  
  
3.  Select the **Schedules** tab.  
  
## Options  
 **New Schedule**  
 Click to open the Scheduling page, which is used to specify frequency information.  
  
 **Delete**  
 Click to remove a shared schedule.  
  
 **Pause**  
 Click to stop a shared schedule from running temporarily. Pausing a schedule prevents subscriptions and other scheduled processes from running.  
  
 **Resume**  
 Click to reinstate a shared schedule. Lapsed processes that were scheduled to run while the schedule was paused are not made up.  
  
 **Schedule**  
 Shows the shared schedules that are currently defined. Click a shared schedule to view or edit frequency information.  
  
 **Creator**  
 Shows the name of the user who created the shared schedule.  
  
 **Last Run, Next Run**  
 Shows when the shared schedule was last run and when it will run next.  
  
 **Status**  
 Shows whether a shared schedule is paused or active.  
  
## See Also  
 [Create, Modify, and Delete Schedules](../reporting-services/subscriptions/create-modify-and-delete-schedules.md)   
 [Report Manager F1 Help](../a9retired/report-manager-f1-help.md)  
  
  