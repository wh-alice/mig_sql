---
title: "Set an Instance of SQL Server to Start Automatically (SQL Server Configuration Manager) | Microsoft Docs"
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
  - "automatic SQL Server startup"
  - "SQL Server, automatic startup"
  - "starting SQL Server, automatically"
ms.assetid: aa2b6bde-e76d-4fea-a560-54a63745d9b1
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# SCM Services - Set an Instance to Start Automatically
  This topic describes how to set an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to start automatically in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using SQL Server Configuration Manager. During setup, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is normally configured to start automatically. If this was not done, you can change that setting at any time.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Configuration Manager  
  
#### To set an instance of SQL Server to start automatically  
  
1.  On the **Start** menu, point to **All Programs**, point to [!INCLUDE[ssCurrentUI](../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.  
  
    > [!NOTE]  
    >  Because [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager is a snap-in for the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Management Console program and not a stand-alone program, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager does not appear as an application in newer versions of Windows.  
    >   
    >  -   **Windows 10**:  
    >          To open [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, on the **Start Page**, type SQLServerManager13.msc (for [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)]). For previous versions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] replace 13 with a smaller number. Clicking SQLServerManager13.msc opens the Configuration Manager. To pin the Configuration Manager to the Start Page or Task Bar, right-click SQLServerManager13.msc, and then click **Open file location**. In the Windows File Explorer, right-click SQLServerManager13.msc, and then click **Pin to Start** or **Pin to taskbar**.  
    > -   **Windows 8**:  
    >          To open [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, in the **Search** charm, under **Apps**, type **SQLServerManager\<version>.msc** such as **SQLServerManager13.msc**, and then press **Enter**.  
  
2.  In **SQL Server Configuration Manager**, expand **Services**, and then click **SQL Server**.  
  
3.  In the details pane, right-click the name of the instance you want to start automatically, and then click **Properties**.  
  
4.  In the **SQL Server \<***instancename***> Properties** dialog box, set **Start Mode** to **Automatic**.  
  
5.  Click **OK**, and then close [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager.  
  
## See Also  
 [Prevent Automatic Startup of an Instance of SQL Server &#40;SQL Server Configuration Manager&#41;](../../../database-engine/configure/windows/scm-services-prevent-automatic-startup-of-an-instance.md)   
 [Connect to Another Computer &#40;SQL Server Configuration Manager&#41;](../../../database-engine/configure/windows/scm-services-connect-to-another-computer.md)   
 [Configure WMI to Show Server Status in SQL Server Tools](http://msdn.microsoft.com/library/7e97197b-ed4d-40d1-9a52-9ab1d92401d7)  
  
  