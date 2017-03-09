---
title: "Distributed Replay Security | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7e2e586d-947d-4fe2-86c5-f06200ebf139
caps.latest.revision: 29
ms.author: "jhubbard"
manager: "jhubbard"
---
# Distributed Replay Security
  Before you install and use the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay feature, you should review the important security information in this topic. This topic describes the post-installation security configuration steps that are required before you can use Distributed Replay. This topic also describes important considerations with regard to data protection and important removal steps.  
  
## User and Service Accounts  
 The following table describes the accounts that are used for Distributed Replay. After the Distributed Replay installation, you must assign the security principals that the controller and client service accounts will run as. Therefore, we recommend that you configure the corresponding domain user accounts before you install the Distributed Replay features.  
  
|User Account|Requirements|  
|------------------|------------------|  
|[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay controller service account|Can be a domain user account or local user account. If you use a local user account, the administration tool, controller, and client must all be running on the same computer.<br /><br /> **\*\* Security Note \*\*** We recommend that the account is not a member of the local Administrators group in Windows.|  
|[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay client service account|Can be a domain user account or local user account. If you use a local user account, the controller, client, and target SQL Server must all be running on the same computer.<br /><br /> **\*\* Security Note \*\*** We recommend that the account is not a member of the local Administrators group in Windows.|  
|Interactive user account that is used to run the Distributed Replay administration tool|Can be either a local user or a domain user account. To use a local user account, the administration tool and controller must be running on the same computer.|  
  
 **Important**: When you configure Distributed Replay controller, you can specify one or more user accounts that will be used to run the Distributed Replay client services. The following is the list of supported accounts:  
  
-   Domain user account  
  
-   User created local user account  
  
-   Administrator  
  
-   Virtual account and MSA (Managed Service Account)  
  
-   Network Services, Local Services, and System  
  
 Group accounts (local or domain) and other built-in accounts (like Everyone) are not accepted.  
  
 To set the service accounts or their passwords after you install Distributed Replay, you can use the Windows Services tool. To change the service accounts associated with the Distributed Replay controller or client services, follow these steps:  
  
1.  Do either of the following, depending on the operating system:  
  
    -   Click **Start**, type **services.msc** in the **Search** box, and then press ENTER.  
  
    -   Click **Start**, click **Run**, type **services.msc**, and then press ENTER.  
  
2.  In the **Services** dialog box, right-click the service that you want to configure, and then click **Properties**.  
  
3.  On the **Log On** tab, click **This account**.  
  
4.  Configure the user account that you want to use.  
  
## File and Folder Permissions  
 After the service accounts have been specified, you must grant the necessary file and folder permissions to those service accounts. Configure file and folder permissions according to the following table:  
  
|Account|Folder Permissions|  
|-------------|------------------------|  
|[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay controller service account|`<Controller_Installation_Path>\DReplayController` (Read, Write, Delete)<br /><br /> `DReplayServer.xml` file (Read, Write)|  
|[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay client service account|`<Client_Installation_Path>\DReplayClient` (Read, Write, Delete)<br /><br /> `DReplayClient.xml` file (Read, Write)<br /><br /> The working and result directories, as specified in the client configuration file by the `WorkingDirectory` and `ResultDirectory` elements, respectively. (Read, Write)|  
  
## DCOM Permissions  
 DCOM is used for remote procedure call (RPC) communication between the controller and the administration tool, and between the controller and all clients. You must configure computer-wide and application-specific DCOM permissions on the controller after the Distributed Replay features have been installed.  
  
 To configure the controller DCOM permissions, follow these steps:  
  
1.  **Open dcomcnfg.exe, the Component Services snap-in**: This is the tool that is used to configure DCOM permissions.  
  
    1.  On the controller computer, click **Start**.  
  
    2.  Type **dcomcnfg.exe** in the **Search** box.  
  
    3.  Press ENTER.  
  
2.  **Configure computer-wide DCOM permissions**: Grant the corresponding computer-wide DCOM permissions for each account listed in the following table. For more information about how to set computer-wide permissions, see [Checklist: Manage DCOM Applications](http://go.microsoft.com/fwlink/?LinkId=185842).  
  
3.  **Configure application-specific DCOM permissions**: Grant the corresponding application-specific DCOM permissions for each account listed in the following table. The DCOM application name for the controller service is **DReplayController**. For more information about how to set application-specific permissions, see [Checklist: Manage DCOM Applications](http://go.microsoft.com/fwlink/?LinkId=185842).  
  
 The following table describes which DCOM permissions are required for the administration tool interactive user account and the client service accounts:  
  
|Feature|Account|Required DCOM Permissions on Controller|  
|-------------|-------------|---------------------------------------------|  
|Distributed Replay administration tool|The interactive user account|Local Access<br /><br /> Remote Access<br /><br /> Local Launch<br /><br /> Remote Launch<br /><br /> Local Activation<br /><br /> Remote Activation|  
|Distributed Replay client|[!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay client service account|Local Access<br /><br /> Remote Access<br /><br /> Local Launch<br /><br /> Remote Launch<br /><br /> Local Activation<br /><br /> Remote Activation|  
  
> [!IMPORTANT]  
>  To help protect against malicious queries or denial of service attacks, make sure that you only use a trusted user account for the client service account. This account will be able to connect and replay workloads against the target instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
## SQL Server Permissions  
 The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay client service accounts are used to connect to the workload's target instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Only Windows Authentication mode is supported for these connections.  
  
 After you install the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay client service on a set of computers, the security principal used for those service accounts must be granted the sysadmin server role on the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] that you intend to replay the trace workload against. This step is not performed automatically during Distributed Replay Setup.  
  
## Data Protection  
 In the Distributed Replay environment, the following user accounts are granted full access to the target server instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the input trace data and result trace files:  
  
-   The interactive user account that is used to run the administration tool.  
  
-   The controller service account.  
  
-   The client service account.  
  
-   Members of the local Administrators group on the controller.  
  
-   Members of the local Administrators group on the clients.  
  
    > [!IMPORTANT]  
    >  These accounts have full access to any personally identifiable information (PII) or sensitive information that is contained in the trace, intermediate, dispatch, or [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data files that were used by Distributed Replay.  
  
 We recommend that you take the following security precautions:  
  
-   Store the input trace data, output trace results, and database files in a location that uses the NTFS file system (NTFS), and apply the appropriate access control lists (ACLs). If it is needed, encrypt the data that is stored on the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] computer. Be aware that ACLs are not applied to the trace files and there is no data masking or obfuscation. You should delete these files quickly after use.  
  
-   Apply the appropriate ACLs and retention policy to all intermediate and dispatch files that are generated by Distributed Replay.  
  
-   Use Secure Sockets Layer (SSL) to help secure the network transport.  
  
## Important Removal Steps  
 We recommend that you only use Distributed Replay in a test environment. After you have completed testing, and before you provision those computers for a different task, make sure that you do the following:  
  
-   Uninstall the Distributed Replay features and remove the related configuration files from the controller and all clients.  
  
-   Delete any trace, intermediate, dispatch, and [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database files that were used for testing. The intermediate and dispatch files are stored in the working directory on the controller and client, respectively.  
  
## See Also  
 [SQL Server Distributed Replay](../../tools/distributed-replay/sql-server-distributed-replay.md)   
 [Install Distributed Replay - Overview](../../tools/distributed-replay/install-distributed-replay-overview.md)  
  
  