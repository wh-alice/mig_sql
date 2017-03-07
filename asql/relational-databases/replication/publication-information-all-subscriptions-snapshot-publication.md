---
title: "Publication Information, All Subscriptions (Snapshot Publication) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.rep.monitor.publicationinfo.allsubscriptions.snapshot.f1"
ms.assetid: 7ce656c2-6e60-4625-8955-1daff641070c
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# Publication Information, All Subscriptions (Snapshot Publication)
  The **All Subscriptions** tab displays information on all subscriptions to the selected snapshot publication.  
  
## Options  
 For more detailed information and tasks related to a subscription, right-click the row for that subscription, and then click an option on the shortcut menu. To change the way that the grid displays data, right-click the grid, and then click one of the following options:  
  
-   **Sort**: Sort on one or more columns in the **Sort Columns** dialog box.  
  
-   **Choose Columns to Show**: Select which columns to display and the order in which to display them in the **Choose Columns** dialog box.  
  
-   **Filter**: Filter rows in the grid based on column values in the **Filter Settings** dialog box.  
  
-   **Clear Filter**: Clear any filter settings for the grid.  
  
 Filter settings are specific to each grid. Column selection and sorting are applied to all grids of the same type, such as the publications grid for each Publisher.  
  
 **Show**  
 [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] and later versions only. Select the subscription states to display for the selected subscription type. For example, you can select to display only those subscriptions that have an error.  
  
 **Status**  
 The status of each subscription, which is determined by the status of the Snapshot Agent or the Distribution Agent (the higher priority status is displayed).  
  
 By default, the grid containing subscription information is sorted by the **Status** column. The following list shows the possible status values and the sort order for the values (for example, errors are always shown at the top of the grid).  
  
-   Error  
  
-   Expiring soon/Expired ([!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] and later versions only)  
  
-   Uninitialized subscription ([!INCLUDE[ssVersion2005](../../a9notintoc/includes/ssversion2005-md.md)] and later versions only)  
  
-   Retrying failed command  
  
-   Synchronizing  
  
-   Not synchronizing  
  
 The sort order also determines which value is displayed if a given subscription is in more than one state. For example, if a subscription has an error and is expiring soon, the **Status** column displays **Error**.  
  
 The status values **Expiring soon/Expired** and **Uninitialized subscription** are warnings. When a warning is displayed, the **Status** column also displays if an agent is running. For example, the status could be **Running, Expiring soon/Expired**.  
  
 The status value **Expiring soon/Expired** is displayed only if a threshold is set. For information on setting thresholds, see [Set Thresholds and Warnings in Replication Monitor](../../relational-databases/replication/monitor/set-thresholds-and-warnings-in-replication-monitor.md).  
  
 **Subscription**  
 The name of each subscription, in the form: *SubscriberName: SubscriptionDatabaseName*.  
  
 **Last Synchronization**  
 The time at which the Distribution Agent last ran. If synchronization is in progress, **In progress** is displayed.  
  
## See Also  
 [Start the Replication Monitor](../../relational-databases/replication/monitor/start-the-replication-monitor.md)   
 [View Information and Perform Tasks for a Subscription &#40;Replication Monitor&#41;](../../relational-databases/replication/monitor/view-information-and-perform-tasks-for-a-subscription-replication-monitor.md)   
 [View Information and Perform Tasks for the Agents Associated With a Subscription &#40;Replication Monitor&#41;](../../relational-databases/replication/monitor/fbb59d31-2424-4552-9195-0da8d83e755f.md)   
 [Monitoring Replication](../../relational-databases/replication/monitor/monitoring-replication-overview.md)  
  
  