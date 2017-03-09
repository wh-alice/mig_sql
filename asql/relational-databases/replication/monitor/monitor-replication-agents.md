---
title: "Monitor Replication Agents | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "monitoring performance [SQL Server replication], agents"
  - "Log Reader Agent, monitoring"
  - "Replication Monitor, agents"
  - "Merge Agent, monitoring"
  - "Queue Reader Agent, monitoring"
  - "Snapshot Agent, monitoring"
  - "agents [SQL Server replication], monitoring"
  - "Distribution Agent, monitoring"
ms.assetid: d06ed24f-82d7-4b9e-9e40-cc9780476a71
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# Monitor Replication Agents
  [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Replication Monitor provides a systemic view of replication activity, but also makes it straightforward to find information on a specific agent. The following list includes each agent, the tabs in the Replication Monitor on which it can be found, and a link to a topic that explains how to access these tabs:  
  
-   The following agents are associated with publications in Replication Monitor:  
  
    -   Snapshot Agent  
  
    -   Log Reader Agent  
  
    -   Queue Reader Agent  
  
     Access information and tasks associated with these agents through the following tabs: **Agents** (available for each Publisher and publication) and **Warnings** (available for each publication). For more information, see [View Information and Perform Tasks for the Agents Associated With a Publication &#40;Replication Monitor&#41;](../../../relational-databases/replication/monitor/view-information-and-perform-tasks-for-publication-agents.md).  
  
-   The following agents are associated with subscriptions in Replication Monitor:  
  
    -   Distribution Agent  
  
    -   Merge Agent  
  
     Access information and tasks associated with these agents through the following tabs: **Subscription Watch List** (available for each Publisher) or the **All Subscriptions** tab (available for each publication). For more information, see [View Information and Perform Tasks for the Agents Associated With a Subscription &#40;Replication Monitor&#41;](../../../relational-databases/replication/monitor/view-information-and-perform-tasks-for-subscription-agents.md).  
  
## Using SQL Server Management Studio to Monitor Replication Agents  
 [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] provides the following dialog boxes for monitoring replication agents:  
  
-   **View Snapshot Agent Status** (for all publications)  
  
-   **View Log Reader Agent Status** (for all transactional publications)  
  
-   **View Synchronization Status** (for all subscriptions; this dialog box allows access to the Distribution Agent and the Merge Agent)  
  
 Replication Monitor provides additional information about each agent and provides monitoring for the Queue Reader Agent, if it is used. For more information, see [View Information and Perform Tasks for the Agents Associated With a Publication &#40;Replication Monitor&#41;](../../../relational-databases/replication/monitor/view-information-and-perform-tasks-for-publication-agents.md), [View Information and Perform Tasks for the Agents Associated With a Publication &#40;Replication Monitor&#41;](../../../relational-databases/replication/monitor/view-information-and-perform-tasks-for-publication-agents.md), and [View Information and Perform Tasks for the Agents Associated With a Subscription &#40;Replication Monitor&#41;](../../../relational-databases/replication/monitor/view-information-and-perform-tasks-for-subscription-agents.md).  
  
#### To monitor the Snapshot Agent and Log Reader Agent  
  
1.  Connect to the Publisher in [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)], and then expand the server node.  
  
2.  Expand the **Replication** folder, and then expand the **Local Publications** folder.  
  
3.  Right-click a publication, and then click **View Log Reader Agent Status** or **View Snapshot Agent Status**.  
  
4.  In the **View Log Reader Agent Status** or **View Snapshot Agent Status** dialog box:  
  
    -   View agent status.  
  
    -   Start or stop the agent if necessary.  
  
    -   Click **Monitor** to launch **Replication Monitor**.  
  
5.  Click **Close**.  
  
#### To monitor the Distribution Agent and Merge Agent (from the Publisher)  
  
1.  Connect to the Publisher in [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)], and then expand the server node.  
  
2.  Expand the **Replication** folder, and then expand the **Local Publications** folder.  
  
3.  Expand the publication for the subscription you want to monitor.  
  
4.  Right-click the subscription, and then click **View Synchronization Status**.  
  
5.  In the **View Synchronization Status** dialog box:  
  
    -   View agent status.  
  
    -   Start or stop the agent if necessary.  
  
    -   For push subscriptions, click **Monitor** to launch **Replication Monitor**.  
  
    -   For pull subscriptions, click **View Job History** to launch the **Log File Viewer**, which displays output from the agent log.  
  
6.  Click **Close**.  
  
#### To monitor the Distribution Agent and Merge Agent (from the Subscriber)  
  
1.  Connect to the Subscriber in [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)], and then expand the server node.  
  
2.  Expand the **Replication** folder, and then expand the **Local Subscriptions** folder.  
  
3.  Right-click the subscription you want to monitor, and then click **View Synchronization Status**.  
  
4.  In the **View Synchronization Status** dialog box:  
  
    -   View agent status.  
  
    -   Start or stop the agent if necessary.  
  
    -   Click **View Job History** to launch the **Log File Viewer**, which displays output from the agent log.  
  
5.  Click **Close**.  
  
## See Also  
 [Monitoring Replication](../../../relational-databases/replication/monitor/monitoring-replication-overview.md)   
 [Replication Agents Overview](../../../relational-databases/replication/agents/replication-agents-overview.md)  
  
  