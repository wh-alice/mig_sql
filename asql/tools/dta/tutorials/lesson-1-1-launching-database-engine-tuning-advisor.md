---
title: "Launching Database Engine Tuning Advisor | Microsoft Docs"
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
  - "tuning databases [SQL Server]"
  - "Database Engine Tuning Advisor [SQL Server], starting"
ms.assetid: 4abc0e10-96fd-4e46-93d6-d7ee03eec844
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# Lesson 1-1 - Launching Database Engine Tuning Advisor
To begin, open the Database Engine Tuning Advisor graphical user interface (GUI). On first use, a member of the **sysadmin** fixed server role must launch Database Engine Tuning Advisor to initialize the application. After initialization, members of the **db_owner** fixed database role can use Database Engine Tuning Advisor to tune databases that they own. For more information about initializing Database Engine Tuning Advisor, see [Start and Use the Database Engine Tuning Advisor](../../../relational-databases/performance/start-and-use-the-database-engine-tuning-advisor.md).  
  
### Open the Database Engine Tuning Advisor GUI  
  
1.  On the Windows **Start** menu, point to **All Programs**, point to [!INCLUDE[ssCurrentUI](../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], point to **Performance Tools**, and then click **Database Engine Tuning Advisor**.  
  
2.  In the **Connect to Server** dialog box, verify the default settings, and then click **Connect**.  
  
By default, Database Engine Tuning Advisor opens to the configuration in the following illustration:  
  
![Database Engine Tuning Advisor default window](../../../tools/dta/tutorials/media/defaultdtagui.gif "Database Engine Tuning Advisor default window")  
  
> [!NOTE]  
> The the tab and **Session Name** box display the name of your computer and the instance you are connected to. The tab and box also display the current date and time.  
  
Two main panes are displayed in the Database Engine Tuning Advisor GUI when it is first opened.  
  
-   The left pane contains the Session Monitor, which lists all tuning sessions that have been performed on this [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance. When you open Database Engine Tuning Advisor, it displays a new session at the top of the pane. You can name this session in the adjacent pane. Initially, only a default session is listed. This is the default session that Database Engine Tuning Advisor automatically creates for you. After you have tuned databases, all tuning sessions for the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance to which you are connected are listed below the new session. You can right-click a tuning session to rename it, close it, delete it, or clone it. If you right-click in the list you can sort the sessions by name, status, or creation time, or create a new session. In the bottom section of this pane, details of the selected tuning session are displayed. You can choose to display the details organized into categories with the **Categorized** button, or you can display them in an alphabetized list by using the **Alphabetical** button. You can also hide Session Monitor by dragging the right pane border to the left side of the window. To view it again, drag the pane border back to the right. Session Monitor enables you to view previous tuning sessions, or to use them to create new sessions with similar definitions. You can also use Session Monitor to evaluate tuning recommendations. For more information, see [View and Work with the Output from the Database Engine Tuning Advisor](../../../relational-databases/performance/view-and-work-with-the-output-from-the-database-engine-tuning-advisor.md). Use the **Back** button on your browser to return to this tutorial.  
  
-   The right pane contains the **General** and the **Tuning Options** tabs. This is where you can define your Database Engine Tuning session. In the **General** tab, you type the name for your tuning session, specify the workload file or table to use, and select the databases and tables you want to tune in this session. A workload is a set of [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] statements that execute against a database or databases that you want to tune. Database Engine Tuning Advisor uses trace files, trace tables, [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] scripts, or XML files as workload input when tuning databases. On the **Tuning Options** tab, you can select the physical database design structures (indexes or indexed views) and the partitioning strategy that you want Database Engine Tuning Advisor to consider during its analysis. On this tab you also can specify the maximum time that Database Engine Tuning Advisor takes to tune a workload. By default, Database Engine Tuning Advisor will tune a workload for one hour.  
  
> [!NOTE]  
> Database Engine Tuning Advisor can take XML files as input when a [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] script is imported from [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)][!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] Query Editor. For more information, see the section on launching Database Engine Tuning Advisor from the [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] Query Editor in [Start and Use the Database Engine Tuning Advisor](../../../relational-databases/performance/start-and-use-the-database-engine-tuning-advisor.md).  
  
## Next Task in Lesson  
[Setting Tool Options and Layout](../Topic/Setting%20Tool%20Options%20and%20Layout.md)  
  
  
  
