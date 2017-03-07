---
title: "History Cleanup Task | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.dts.designer.historycleanuptask.f1"
helpviewer_keywords: 
  - "history tables [SQL Server]"
  - "History Cleanup task [Integration Services]"
ms.assetid: 5defc5b9-dfd3-4859-a7fe-ac8c2b5480f8
caps.latest.revision: 43
ms.author: "douglasl"
manager: "jhubbard"
---
# History Cleanup Task
  The History Cleanup task deletes entries in the following history tables in the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] msdb database.  
  
-   backupfile  
  
-   backupfilegroup  
  
-   backupmediafamily  
  
-   backupmediaset  
  
-   backupset  
  
-   restorefile  
  
-   restorefilegroup  
  
-   restorehistory  
  
 By using the History Cleanup task, a package can delete historical data related to backup and restore activities, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Agent jobs, and database maintenance plans.  
  
 This task encapsulates the sp_delete_backuphistory system stored procedure and passes the specified date to the procedure as an argument. For more information, see [sp_delete_backuphistory &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-delete-backuphistory-transact-sql.md).  
  
## Configuration of the History Cleanup Task  
 The task includes a property for specifying the oldest date of data retained in the history tables. You can indicate the date by number of days, weeks, months, or years from the current day, and the task automatically translates the interval to a date.  
  
 You can set properties through [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer. This task is in the **Maintenance Plan Tasks** section of the **Toolbox** in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer.  
  
 For more information about the properties that you can set in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer, click the following topic:  
  
-   [History Cleanup Task &#40;Maintenance Plan&#41;](../../relational-databases/maintenance-plans/history-cleanup-task-maintenance-plan.md)  
  
 For more information about how to set these properties in [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer, click the following topic:  
  
-   [Set the Properties of a Task or Container](../../a9retired/set-the-properties-of-a-task-or-container.md)  
  
## See Also  
 [Integration Services Tasks](../../integration-services/control-flow/integration-services-tasks.md)   
 [Control Flow](../../integration-services/control-flow/control-flow.md)  
  
  