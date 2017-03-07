---
title: "Change the Password of the Accounts Used by SQL Server (SQL Server Configuration Manager) | Microsoft Docs"
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
  - "expired password [SQL Server], SQL Server Agent"
  - "passwords [SQL Server], SQL Server Agent service"
  - "passwords [SQL Server], changing"
  - "expired password [SQL Server], Database Engine"
  - "passwords [SQL Server], SQL Server service"
  - "Database Engine [SQL Server], passwords"
  - "changing passwords used by SQL Server"
  - "modifying passwords"
ms.assetid: 5b6dcc03-6cae-45d3-acef-6f85ca6d615f
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# SCM Services - Change the Password of the Accounts Used
  This topic describes how to change the password of the accounts used by the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)] and the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using SQL Server Configuration Manager. The [!INCLUDE[ssDEnoversion](../../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] and [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent run on a computer as a service using credentials that are initially provided during setup. If the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is running under a domain account and the password for that account is changed, the password used by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] must be updated to the new password. If the password is not updated, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] may lose access to some domain resources and if [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] stops, the service will not restart until the password is updated.  
  
 To change [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Authentication passwords, see [Password Expired](../Topic/Password%20Expired.md).  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
 [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager is the tool designed and authorized to change the settings of the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] services. Changing a [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service by using the Windows Service Control Manager (**services.msc**) application does not always change all of the necessary settings and might prevent the service from functioning properly. However, in a clustered environment, after changing the password on the active node by using [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, you must change the password on the passive node by using the Service Control Manager.  
  
###  <a name="Security"></a> Security  
  
####  <a name="Permissions"></a> Permissions  
 You must be an administrator of the computer to change the password used by a service.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Configuration Manager  
  
#### To change the password used by the SQL Server (Database Engine) service  
  
1.  Click the **Start** button, point to **All Programs**, point to [!INCLUDE[ssCurrentUI](../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.  
  
    > [!NOTE]  
    >  Because [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager is a snap-in for the [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Management Console program and not a stand-alone program, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager does not appear as an application in newer versions of Windows.  
    >   
    >  -   **Windows 10**:  
    >          To open [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, on the **Start Page**, type SQLServerManager13.msc (for [!INCLUDE[ssSQL15](../../../analysis-services/powershell/includes/sssql15-md.md)]). For previous versions of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] replace 13 with a smaller number. Clicking SQLServerManager13.msc opens the Configuration Manager. To pin the Configuration Manager to the Start Page or Task Bar, right-click SQLServerManager13.msc, and then click **Open file location**. In the Windows File Explorer, right-click SQLServerManager13.msc, and then click **Pin to Start** or **Pin to taskbar**.  
    > -   **Windows 8**:  
    >          To open [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Configuration Manager, in the **Search** charm, under **Apps**, type **SQLServerManager\<version>.msc** such as **SQLServerManager13.msc**, and then press **Enter**.  
  
2.  In SQL Server Configuration Manager, click **SQL Server Services**.  
  
3.  In the details pane, right-click **SQL Server (**\<instancename>**)**, and then click **Properties**.  
  
4.  In the **SQL Server (**\<instancename>**) Properties** dialog box, on the Log On tab, for the account listed in the **Account Name** box, type the new password in the **Password** and **Confirm Password** boxes, and then click **OK**.  
  
     The password takes effect immediately, without restarting [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
#### To change the password used by the SQL Server Agent service  
  
1.  Click the **Start** button, point to **All Programs**, point to [!INCLUDE[ssCurrentUI](../../../analysis-services/instances/install/windows/includes/sscurrentui-md.md)], point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.  
  
2.  In SQL Server Configuration Manager, click **SQL Server Services**.  
  
3.  In the details pane, right-click **SQL Server Agent (**\<instancename>**)**, and then click **Properties**.  
  
4.  In the **SQL Server Agent (**\<instancename>**) Properties** dialog box, on the Log On tab, for the account listed in the **Account Name** box, type the new password in the **Password** and **Confirm Password** boxes, and then click **OK**.  
  
     On a stand-alone instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the password takes effect immediately, without restarting [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. On a clustered instance, [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] might take the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] resource offline, and require a restart.  
  
## See Also  
 [Managing Services How-to Topics &#40;SQL Server Configuration Manager&#41;](../Topic/Managing%20Services%20How-to%20Topics%20\(SQL%20Server%20Configuration%20Manager\).md)  
  
  