---
title: "Install Client Tools on a SQL Server Failover Cluster | Microsoft Docs"
ms.custom: ""
ms.date: "03/02/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3c82d510-9798-46be-bebb-cac9bef56936
caps.latest.revision: 9
ms.author: "mikeray"
manager: "jhubbard"
---
# Install Client Tools on a SQL Server Failover Cluster
  Client tools such as [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] are shared features common across all instances on the same machine. They are backward compatible, with supported [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] versions that can be installed side by side. Only one version of the client tool exists on a node at a time.  
  
 If the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] client tools are installed during setup on first node of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] cluster, they are automatically added to any nodes that may be added later to the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] using Add Node.  
  
> [!IMPORTANT]  
>  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Books Online is not automatically added to the additional nodes added to the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] cluster using Add Node. [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Books Online can be installed manually on the nodes that you wish to have a local copy of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Books Online.  
  
 If you do not install the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] client tools during the initial installation of the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] cluster, you can install it later as described in the procedures below.  
  
## Installation procedures  
  
#### Installing [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Client Tools Using the Setup User Interface  
  
1.  Insert the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] installation media. From the root installation folder, double click Setup.exe. To install from the network share, locate the root folder on the share, and then double-click Setup.exe.  
  
2.  On the **Installation** page, click **New [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] stand-alone installation or add Features to an existing installation**. Do not click **New [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] failover cluster installation**.  
  
3.  The system configuration checker verifies the system state of your computer before Setup will continue.  
  
4.  On the **Installation Type** page, click **Perform a new installation of [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)]**.  
  
5.  On the **Feature Selection** page, select the tools that you want to install and follow through the rest of the steps of the Setup process.  
  
#### Installing [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] client tools at the command prompt  
  
1.  To install [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] client tools and [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Books Online, run the following command: Setup.exe/q/Action=Install /Features=Tools  
  
2.  To install only the basic [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Management tools run the following command: Setup.exe/q/Action=Install Features=SSMS. This will install [!INCLUDE[ssManStudio](../../../a9notintoc/includes/ssmanstudio-md.md)] support for [!INCLUDE[ssDEnoversion](../../../a9notintoc/includes/ssdenoversion-md.md)], [!INCLUDE[ssExpress](../../../a9notintoc/includes/ssexpress-md.md)], sqlcmd utility, and the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Powershell provider.  
  
3.  To install the complete [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Management tools, run the following command: Setup.exe/q/Action=Install /Features=ADV_SSMS. For more information about parameter values for the features, see [Install SQL Server 2016 from the Command Prompt](../../../database-engine/install/windows/install-sql-server-2016-from-the-command-prompt.md).  
  
### Uninstalling [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Client Tools  
 They appear in Add or Remove programs in Control Panel as **[!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)]**, and can be removed from there. When you use Remove Node to uninstall an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] from the failover cluster, the client components are not uninstalled at the same time.  
  
## See Also  
 [View and Read SQL Server Setup Log Files](../../../database-engine/install/windows/view-and-read-sql-server-setup-log-files.md)  
  
  