---
title: "Check Files In Use | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ccd65867-d4c0-43b2-8361-7fd41c6f79ac
caps.latest.revision: 11
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# Check Files In Use
  To avoid restarting Windows after you install [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] updates, use the Check Files in Use page to identify processes that are locking files required by the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] update Setup program.  
  
 Stop all applications and services that make connections to the instances of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] that are being updated. This includes stopping [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] and [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
 If Setup determines that files are locked during installation, you might have to restart your computer after installation is completed. If necessary, Setup prompts you to restart your computer. If the Setup program must stop a service during installation, it will restart the service after installation is completed.  
  
 To eliminate the requirement to restart your computer after installation, Setup displays a list of processes that are locking files. Stop or end the processes and applications in the list. Then click **Refresh check** to rerun the check. Click **Stop check** to end a check that is running. If locked files are not found, the table is empty. When all locked processes have been closed or stopped, click **Next** to continue.  
  
 Setup logs the information in the log files. For more information about how to view the log files, see [View and Read SQL Server Setup Log Files](../database-engine/install/windows/view-and-read-sql-server-setup-log-files.md) and [How to: Read a SQL Server Setup Log File](http://go.microsoft.com/fwlink/?LinkID=134490).  
  
 The following information is included in the log file:  
  
-   Name of the process  
  
-   Name of the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] feature  
  
-   Process type  
  
-   Account under which the process is running  
  
-   Process ID  
  
-   Name of the file that is locked  
  
## UIElement List  
  
|Name|Description|  
|----------|-----------------|  
|Process|Displays the full name of the process that is using the files to be updated.|  
|Type|Displays the type of process.|  
|Account|Displays the account under which the process is running.|  
|Process ID|Displays the process ID.|  
  
  