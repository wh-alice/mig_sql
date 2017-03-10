---
title: "Run Replication Maintenance Jobs (SQL Server Management Studio) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "jobs [SQL Server replication]"
ms.assetid: 0dc485a0-5a50-41eb-a29d-f2b2fb920174
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# Run Replication Maintenance Jobs (SQL Server Management Studio)
  Replication uses the following maintenance jobs:  
  
-   **Reinitialize subscriptions having data validation failures**  
  
-   **Agent history clean up: distribution**  
  
-   **Replication monitoring refresher for distribution.**  
  
-   **Replication agents checkup**  
  
-   **Distribution clean up: distribution**  
  
-   **Expired subscription clean up**  
  
 Start and stop these jobs from the **Jobs** folder in [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] and from the **Agents** tab in Replication Monitor. For information about starting Replication Monitor, see [Start the Replication Monitor](../../../relational-databases/replication/monitor/start-the-replication-monitor.md). View and modify properties for each job in the **Job Properties - \<Job>** dialog box, which is available from the same folder and tab.  
  
### To start or stop a replication maintenance job in Management Studio  
  
1.  Connect to the Distributor in [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)], and then expand the server node.  
  
2.  Expand the **SQL Server Agent** folder, and then expand the **Jobs** folder.  
  
3.  Right-click a job, and then click **Start Job** or **Stop Job**.  
  
### To start or stop a replication maintenance job in Replication Monitor  
  
1.  Expand a Publisher group in Replication Monitor, and then select a Publisher.  
  
2.  Click the **Agents** tab.  
  
3.  Right-click a job in the grid, and then click **Start Job** or **Stop Job**.  
  
### To view and modify properties for a replication maintenance job in Management Studio  
  
1.  Connect to the Distributor in [!INCLUDE[ssManStudio](../../../advanced-analytics/r-services/includes/ssmanstudio-md.md)], and then expand the server node.  
  
2.  Expand the **SQL Server Agent** folder, and then expand the **Jobs** folder.  
  
3.  Right-click a job, and then click **Properties**.  
  
4.  In the **Job Properties - \<Job>** dialog box, modify any properties if necessary, and then click **OK**.  
  
### To view and modify properties for a replication maintenance job in Replication Monitor  
  
1.  Expand a Publisher group in Replication Monitor, and then select a Publisher.  
  
2.  Click the **Agents** tab.  
  
3.  Right-click a job in the grid, and then click **Properties**.  
  
4.  In the **Job Properties - \<Job>** dialog box, modify any properties if necessary, and then click **OK**.  
  
## See Also  
 [Start and Stop a Replication Agent &#40;SQL Server Management Studio&#41;](../../../relational-databases/replication/agents/start-and-stop-a-replication-agent-sql-server-management-studio.md)   
 [View Information and Perform Tasks for a Publisher &#40;Replication Monitor&#41;](../../../relational-databases/replication/monitor/view-information-and-perform-tasks-for-a-publisher-replication-monitor.md)   
 [Replication Agent Administration](../../../relational-databases/replication/agents/replication-agent-administration.md)  
  
  