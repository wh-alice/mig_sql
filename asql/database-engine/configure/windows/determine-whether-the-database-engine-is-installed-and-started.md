---
title: "Determine Whether the Database Engine Is Installed and Started | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server, determining if installed"
  - "verifying Database Engine installation"
  - "viewing Database Engine installation"
  - "installed Database Engine verification [SQL Server]"
ms.assetid: babb02e4-3521-4b75-b5df-e09205594375
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# Determine Whether the Database Engine Is Installed and Started
  A successful installation of the [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] installs files to the file system, creates entries in the registry, and installs several tools. This topic describes how to determine whether the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] is installed and started in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Configuration Manager  
  
#### How to view and start the Database Engine by using SQL Server Configuration Manager  
  
1.  Click **Start**, point to **All Programs**, point to **Microsoft SQL Server**, point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.  
  
     If you do not have these entries on the **Start** menu, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is not correctly installed. Run Setup to install the [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)].  
  
2.  In **SQL Server Configuration Manager**, on the left pane, click **SQL Server Services**. The right pane lists several services that are related to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. If the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] is installed, the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] service is listed as **SQL Server (MSSQLSERVER)** if it is the default instance; or **SQL Server (**\<*instance_name*>**)**, if the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] is installed as a named instance. Unless the instance name is changed, [!INCLUDE[ssExpress](../../../database-engine/configure/windows/includes/ssexpress-md.md)] installs as a named instance with the name **SQLEXPRESS**. A green triangle icon indicates that the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] is running. A red square icon indicates that the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] is stopped.  
  
3.  To start the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)], in the right pane, right-click the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)], and then click **Start**.  
  
> [!NOTE]  
>  During setup, the user can select a location in which to install the program files and the database files. If the user accepts the default location, the files are installed to [!INCLUDE[ssInstallPath](../../../database-engine/configure/windows/includes/ssinstallpath-md.md)] and C:\Program Files\Microsoft SQL Server\MSSQL.*x*, where *x* is a number.  
  
  