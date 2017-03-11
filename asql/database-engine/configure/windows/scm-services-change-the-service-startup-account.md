---
title: "Change the Service Startup Account for SQL Server (SQL Server Configuration Manager) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-01-06"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server services, startup account changes"
  - "startup accounts [SQL Server]"
  - "changing startup accounts for services"
ms.assetid: d721c796-0397-46a7-901b-1a9a3c3fb385
caps.latest.revision: 31
ms.author: "rickbyh"
manager: "jhubbard"
---
# SCM Services - Change the Service Startup Account
  This topic describes how to Use the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager to change the start up options of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] services and to change the service accounts that are used by the [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)], [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Browser, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../../analysis-services/includes/ssasnoversion-md.md)], and [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../../advanced-analytics/r-services/includes/ssisnoversion-md.md)]. in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)], or PowerShell. For more information about how to select an appropriate service account, see [Configure Windows Service Accounts and Permissions](../../../database-engine/configure/windows/configure-windows-service-accounts-and-permissions.md).  
  
> [!IMPORTANT]  
>  When you change the service startup account for the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] and [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent, the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service (the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)]) must be restarted for the change to take effect. When the service is restarted, all databases associated with that instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will be unavailable until the service successfully restarts. If you have to change the service startup account of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent, make sure that you do so during regularly scheduled maintenance or when the databases can be taken offline without interrupting daily operations.  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   Clustered servers  
  
     Changing the service account that is used by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent must be performed from the active node of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cluster.  
  
     When running on Windows Server 2008 (in a non-default configuration using Domain groups), changing the service account that is used by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent requires [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager to stop [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by taking the resource groups offline.  
  
-   SKU Upgrade ([!INCLUDE[ssExpress](../../../database-engine/configure/windows/includes/ssexpress-md.md)] to non-Express SKU)  
  
     During [!INCLUDE[ssExpress](../../../database-engine/configure/windows/includes/ssexpress-md.md)] installation, the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent service is configured to use the Network Service account but disabled. [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager can change the account assigned for the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent service   but the service cannot be enabled or started. After SKU upgrade from [!INCLUDE[ssExpress](../../../database-engine/configure/windows/includes/ssexpress-md.md)] to non-Express, the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent service is not automatically enabled, but can be enabled when needed by using the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager and changing the service start mode to Manual or Automatic.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Configuration Manager  
  
#### To change the SQL Server service startup account  
  
1.  On the **Start** menu, point to **All Programs**, point to [!INCLUDE[ssCurrentUI](../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.  
  
    > [!NOTE]  
    >  Because [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager is a snap-in for the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Management Console program and not a stand-alone program, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager does not appear as an application in newer versions of Windows.  
    >   
    >  -   **Windows 10**:  
    >          To open [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, on the **Start Page**, type SQLServerManager13.msc (for [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)]). For previous versions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] replace 13 with a smaller number. Clicking SQLServerManager13.msc opens the Configuration Manager. To pin the Configuration Manager to the Start Page or Task Bar, right-click SQLServerManager13.msc, and then click **Open file location**. In the Windows File Explorer, right-click SQLServerManager13.msc, and then click **Pin to Start** or **Pin to taskbar**.  
    > -   **Windows 8**:  
    >          To open [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, in the **Search** charm, under **Apps**, type **SQLServerManager\<version>.msc** such as **SQLServerManager13.msc**, and then press **Enter**.  
  
2.  In [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, click **SQL Server Services**.  
  
3.  In the details pane, right-click the name of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance for which you want to change the service startup account, and then click **Properties**.  
  
4.  In the **SQL Server \<***instancename***> Properties** dialog box, click the **Log On** tab, and select a **Log on as** account type.  
  
5.  After selecting the new service startup account, click **OK**.  
  
     A message box asks whether you want to restart the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service.  
  
6.  Click **Yes**, and then close [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager.  
  
## See Also  
 [Start, Stop, Pause, Resume, Restart the Database Engine, SQL Server Agent, or SQL Server Browser Service](../../../database-engine/configure/windows/start-stop-pause-resume-restart-sql-server-services.md)   
 [Configure WMI to Show Server Status in SQL Server Tools](http://msdn.microsoft.com/library/7e97197b-ed4d-40d1-9a52-9ab1d92401d7)  
  
  