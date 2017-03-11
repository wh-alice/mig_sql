---
title: "Back Up Database Task | Microsoft Docs"
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
  - "sql13.dts.designer.backupdatabasetask.f1"
helpviewer_keywords: 
  - "database backups [Integration Services]"
  - "Back Up Database task [Integration Services]"
  - "backing up databases [Integration Services]"
  - "transaction log backups [Integration Services]"
  - "backing up transaction logs [Integration Services]"
ms.assetid: b8839d71-13b7-41f2-a434-cb95020e79d7
caps.latest.revision: 46
ms.author: "douglasl"
manager: "jhubbard"
---
# Back Up Database Task
  The Back Up Database task performs different types of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database backups. For more information, see [Back Up and Restore of SQL Server Databases](../../relational-databases/backup-restore/back-up-and-restore-of-sql-server-databases.md).  
  
 By using the Back Up Database task, a package can back up a single database or multiple databases. If the task backs up only a single database, you can choose the backup component: the database, or its files and filegroups.  
  
## Supported Recover Models and Backup Types  
 The following table lists the recovery models and backup types that the Back Up Database task supports.  
  
|Recovery model|Database|Database differential|Transaction log|File or file differential|  
|--------------------|--------------|---------------------------|---------------------|-------------------------------|  
|Simple|Required|Optional|Not supported|Not supported|  
|Full|Required|Optional|Required|Optional|  
|Bulk-logged|Required|Optional|Required|Optional|  
  
 The Back Up Database task encapsulates a Transact-SQL BACKUP statement. For more information, see [BACKUP &#40;Transact-SQL&#41;](../../t-sql/statements/backup-transact-sql.md).  
  
## Configuration of the Back Up Database Task  
 You can set properties through [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer. This task is in the **Maintenance Plan Tasks** section of the **Toolbox** in [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer.  
  
 For more information about the properties that you can set in [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer, click the following topic:  
  
-   [Back Up Database Task &#40;Maintenance Plan&#41;](../../relational-databases/maintenance-plans/options-in-the-back-up-database-task-for-maintenance-plan.md)  
  
 For more information about how to set these properties in [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer, click the following topic:  
  
-   [Set the Properties of a Task or Container](http://msdn.microsoft.com/library/52d47ca4-fb8c-493d-8b2b-48bb269f859b)  
  
  