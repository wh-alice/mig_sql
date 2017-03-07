---
title: "Server Configuration - Service Accounts | Microsoft Docs"
ms.custom: ""
ms.date: "2016-02-11"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "service account configuration, SQL Server"
ms.assetid: c283702d-ab20-4bfa-9272-f0c53c31cb9f
caps.latest.revision: 39
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# Server Configuration - Service Accounts
  Use the Server Configuration page of the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Installation Wizard to assign login accounts to [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] services. The actual services configured on this page depend on the features you have selected to install.  
  
 Startup accounts used to start and run [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] can be  domain user accounts, local user accounts, managed service accounts, virtual accounts, or built-in system accounts.  
  
## Options  
 You can assign the same login account to all [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] services, or you can configure each service account individually. You can also specify whether services start automatically, are started manually, or are disabled. The default account is recommended for most installations.  
  
 On Windows 7 and [!INCLUDE[nextref_longhorn](../a9retired/includes/nextref-longhorn-md.md)] R2 most accounts default to a virtual account.  
  
 If you configure services to use domain accounts, [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] recommends that you configure service accounts individually to provide least privileges for each service, where [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] services are granted the minimum permissions they need to complete their tasks. For more information including descriptions of the types of accounts, see [Configure Windows Service Accounts and Permissions](../database-engine/configure/windows/configure-windows-service-accounts-and-permissions.md).  
  
 **Configure [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] service accounts individually (recommended)**  
 Use the grid to provision each [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] service with a logon user name and password, and to set the startup type for the service. You can use built-in system accounts, a local account, local group, domain group, or domain user accounts for [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] services.  
  
 Select any of the following services to customize its settings.  
  
|Select this service|To configure authentication settings for|Details|  
|-------------------------|----------------------------------------------|-------------|  
|[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Agent|The service that executes jobs, monitors, [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], and allows automation of administrative tasks.|There is no default logon account for this service.<br /><br /> The default startup type is Manual.|  
|[!INCLUDE[ssDEnoversion](../a9notintoc/includes/ssdenoversion-md.md)]||The default startup type is Automatic.|  
|[!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)]|For SharePoint integrated mode, you must specify a Windows domain user account. The account you specify is used for the [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] service. The account you specify for the current instance must also be used for any additional [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instances that you subsequently add to the same farm.|The default startup type is Automatic.|  
|[!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)]|Service accounts are used to configure a report server database connection. Choose the built-in network service if you want to use default authentication settings. If you specify a domain user account, be sure to register a service principle name (SPN) for it if you are using Windows Authentication on the report server. For more information, see [Configure Windows Authentication on the Report Server](../reporting-services/security/configure-windows-authentication-on-the-report-server.md).|The default startup type is Automatic.|  
|[!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)]|[!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] is a set of graphical tools and programmable objects for moving, copying, and transforming data.|The default startup type is Automatic.|  
|[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Distributed Replay Client|The service account used for the Distributed Replay client service.<br /><br /> Provide an account in which to run the Distributed Replay client service. This account should be different from the account that you use for the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] service.|The default startup type is Manual.|  
|[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Distributed Replay Controller|The service account used for the Distributed Replay controller service.<br /><br /> Provide an account in which to run the Distributed Replay controller service. This account should be different from the account that you use for the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] service.|The default startup type is Manual.|  
|[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Full-text Filter Daemon Launcher|The service that creates the fdhost.exe processes. This is required to host the word breakers and filters that process textual data for full-text indexing.|If you provide a domain account in which to run the FDHOST Launcher service, we highly recommend that you use a low privilege account. This account should be different from the account that you use for the [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] service.|  
|[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Browser|[!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Browser is the name resolution service that provides [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] connection information to client computers. This service is shared across multiple [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] and [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)] instances.<br /><br /> The default logon account is NT Authority\Local service and cannot be changed during [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] setup. You can change the account after the setup has been completed.|If the startup type is not specified during setup, it is determined as follows:<br /><br /> [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Browser is set to Automatic and running in the installation scenarios described below:<br /><br /> -<br />                            [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] failover cluster instance<br /><br /> -Named instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] where TCP or NP is enabled<br /><br /> -Named instance of Analysis Server and is not clustered<br /><br /> If none of the above scenarios apply, and [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Browser is already installed, the current state of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Browser will be maintained.<br /><br /> The startup type is set to Disabled and stopped if there is not an existing instance of an older [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] version prior to the installation.|  
  
 Select the **Grant Perform Volume Maintenance Task privilege to SQL Server Database Engine Service** check box to enable instant file initialization for SQL Server data files. For security and performance considerations see [Database Instant File Initialization](../relational-databases/databases/database-instant-file-initialization.md).  
  
## See Also  
 [Security Considerations for a SQL Server Installation](../sql-server/install/security-considerations-for-a-sql-server-installation.md)  
  
  