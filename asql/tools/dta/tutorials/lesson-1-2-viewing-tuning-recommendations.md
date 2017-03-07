---
title: "Viewing Tuning Recommendations | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-query-tuning"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "Database Engine [SQL Server], tutorials"
ms.assetid: e4e690c9-434f-4b01-b4de-0b905323ddd6
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# Lesson 1-2 - Viewing Tuning Recommendations
This task uses the tuning session that you created in [Tuning a Workload](../Topic/Tuning%20a%20Workload.md). After you have tuned the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database by using the MyScript.sql [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] script, [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor displays its results on the **Recommendations** tab. The following task introduces the **Recommendations** tab of the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor graphical user interface (GUI) and guides you to explore the information it provides about the tuning session results.  
  
### View tuning recommendations  
  
1.  Start [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor. See [Launching Database Engine Tuning Advisor](../Topic/Launching%20Database%20Engine%20Tuning%20Advisor.md). Make sure that you connect to the same [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance that you used in the practice [Tuning a Workload](../Topic/Tuning%20a%20Workload.md).  
  
2.  Double-click **MySession** in the **Session Monitor** pane. [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor loads the session information from your previous tuning session and displays the **Recommendations** tab. Note that [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor made no **Partition Recommendations** because you accepted all the tuning option defaults and **No partitioning** was selected on the **Tuning Options** tab.  
  
3.  On the **Recommendations** tab, use the scroll bar at the bottom of the tabbed page to view all of the **Index Recommendations** columns. Each row represents a database object (indexes or indexed views) that [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor recommends be dropped or created. Scroll to the right-most column and click a **Definition**. [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor displays a **SQL Script Preview** window where you can view the [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] script that creates or drops the database object on that row. Click **Close** to close the preview window.  
  
    If you are having difficulty locating a **Definition** that contains a link, click to clear the **Show existing objects** check box at the bottom of the tabbed page, which will decrease the number of rows displayed. When you clear this checkbox, [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor shows you only the objects for which it has generated a recommendation. Select the **Show existing objects** check box to view all the database objects that currently exist in the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] database. Use the scroll bar at the right side of the tabbed page to view all of the objects.  
  
4.  Right-click the grid in the **Index Recommendations** pane. This right-click menu enables you to select and deselect recommendations. It also enables you to change the font for the grid text.  
  
5.  On the **Actions** menu, click **Save Recommendations** to save all of the recommendations into one [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] script. Name the script **MySessionRecommendations.sql**.  
  
    Open the MySessionRecommendations.sql script in the Query Editor of [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] to view it. You could apply the recommendations to the [!INCLUDE[ssSampleDBobject](../../../database-engine/availability-groups/windows/includes/sssampledbobject-md.md)] sample database by executing the script in the Query Editor, but do not do this. Close the script in Query Editor without running it.  
  
    As an alternative, you could also apply the recommendations by clicking **Apply Recommendations** on the **Actions** menu of [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor, but do not apply these recommendations now in this practice.  
  
6.  If more than one recommendation exists on the **Recommendations** tab, clear some of the rows that list database objects in the **Index Recommendations** grid.  
  
7.  On the **Actions** menu, click **Evaluate Recommendations**. [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor creates a new tuning session where you can evaluate a subset of the original recommendations from MySession.  
  
8.  Type **EvaluateMySession** for your new **Session name**, and click the **Start Analysis** button on the toolbar. You can repeat Steps 2 and 3 for this new tuning session to view its recommendations.  
  
## Summary  
You have viewed the contents of the **Recommendations** tab for the MySession tuning session and evaluated a subset of its recommendations in the new EvaluateMySession tuning session.  
  
Evaluating a subset of tuning recommendations may be necessary if you find you must change tuning options after you run a session. For example, if you ask [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor to consider indexed views when you specify tuning options for a session, but after the recommendation is generated you decide against using indexed views. You can then use the **Evaluate Recommendations** option on the **Actions** menu to have [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] Tuning Advisor re-evaluate the session without considering indexed views. When you use the **Evaluate Recommendations** option the previously generated recommendations are hypothetically applied to the current physical design to arrive at the physical design for the second tuning session.  
  
More tuning result information can be viewed in the **Reports** tab, which is described in the next task of this lesson.  
  
## Next Task in Lesson  
[Viewing Tuning Reports](../Topic/Viewing%20Tuning%20Reports.md)  
  
  
  
