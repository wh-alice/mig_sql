---
title: "Execute T-SQL Statement Task (Maintenance Plan) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.swb.maint.tsql.f1"
helpviewer_keywords: 
  - "Execute T-SQL Statement Task dialog box"
ms.assetid: fef3e259-0c47-4f6e-ade0-aee95e3d6c1a
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# Execute T-SQL Statement Task (Maintenance Plan)
  Use the **Execute T-SQL Statement Task** dialog to customize your maintenance plan by adding [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements of your choice to this maintenance plan.  
  
## Options  
 **Connection**  
 Select the server connection to use when performing this task.  
  
 **New**  
 Create a new server connection to use when performing this task. The **New Connection** dialog box is described below.  
  
 **Execution time out**  
 Time (seconds) to wait for task completion before timing out (terminating task).  
  
 **T-SQL statement**  
 [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements to execute.  
  
 **View T-SQL**  
 View the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements performed against the server for this task, based on the selected options.  
  
> [!NOTE]  
>  When the number of objects affected is large, this display can take a considerable amount of time.  
  
## New Connection Dialog Box  
 **Connection name**  
 Enter a name for the new connection.  
  
 **Select or enter a server name**  
 Select a server to connect to when performing this task.  
  
 **Refresh**  
 Refresh the list of available servers.  
  
 **Enter information to log on to the server**  
 Specify how to authenticate against the server.  
  
 **Use Windows integrated security**  
 Connect to an instance of the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] with [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Windows Authentication.  
  
 **Use a specific user name and password**  
 Connect to an instance of the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] using [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication. This option is not available.  
  
 **User name**  
 Provide a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] login to use when authenticating. This option is not available.  
  
 **Password**  
 Provide a password to use when authenticating. This option is not available.  
  
  