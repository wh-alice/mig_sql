---
title: "Select an Account for the SQL Server Agent Service | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "roles [SQL Server], SQL Server Agent"
  - "SQL Server Agent, accounts"
  - "startup accounts [SQL Server]"
  - "SQL Server Agent service, accounts"
  - "accounts [SQL Server], SQL Server Agent"
  - "Windows groups [SQL Server Agent]"
  - "SQL Server Agent, permissions"
  - "members [SQL Server], SQL Server Agent service"
  - "Windows domain accounts [SQL Server]"
  - "security [SQL Server], SQL Server Agent"
ms.assetid: fe658e32-9e6b-4147-a189-7adc3bd28fe7
caps.latest.revision: 5
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Select an Account for the SQL Server Agent Service
The service startup account defines the Microsoft Windows account in which SQL Server Agent runs and its network permissions. SQL Server Agent runs as a specified user account. You select an account for the SQL Server Agent service by using SQL Server Configuration Manager, where you can choose from the following options:  
  
-   **Built-in account**. You can choose from a list of the following built-in Windows service accounts:  
  
    -   **Local System** account. The name of this account is NT AUTHORITY\System. It is a powerful account that has unrestricted access to all local system resources. It is a member of the Windows **Administrators** group on the local computer, and is therefore a member of the SQL Server **sysadmin** fixed server role  
  
        > [!IMPORTANT]  
        > The **Local System account** option is provided for backward compatibility only. The Local System account has permissions that SQL Server Agent does not require. Avoid running SQL Server Agent as the Local System account. For improved security, use a Windows domain account with the permissions listed in the following section, "Windows Domain Account Permissions."  
  
-   **This account**. Lets you specify the Windows domain account in which the SQL Server Agent service runs. We recommend choosing a Windows user account that is not a member of the Windows **Administrators** group. However, there are limitations for using multiserver administration when the SQL Server Agent service account is not a member of the local **Administrators** group. For more information, see 'Supported Service Account Types' that follows in this topic.  
  
## Windows Domain Account Permissions  
For improved security, select **This account**, which specifies a Windows domain account. The Windows domain account that you specify must have the following permissions:  
  
-   In all Windows versions, permission to log on as a service (SeServiceLogonRight)  
  
> [!NOTE]  
> The SQL Server Agent service account must be part of the Pre-Windows 2000 Compatible Access group on the domain controller, or jobs that are owned by domain users who are not members of the Windows Administrators group will fail.  
  
-   In Windows servers, the account that the SQL Server Agent Service runs as requires the following permissions to be able to support SQL Server Agent proxies.  
  
    -   Permission to bypass traverse checking (SeChangeNotifyPrivilege)  
  
    -   Permission to replace a process-level token (SeAssignPrimaryTokenPrivilege)  
  
    -   Permission to adjust memory quotas for a process (SeIncreaseQuotaPrivilege)  
  
    -   Permission to log on using the batch logon type (SeBatchLogonRight)  
  
> [!NOTE]  
> If the account does not have the permissions required to support proxies, only members of the **sysadmin** fixed server role can create jobs.  
  
> [!NOTE]  
> To receive WMI alert notification, the service account for SQL Server Agent must have been granted permission to the namespace that contains the WMI events, and ALTER ANY EVENT NOTIFICATION.  
  
## SQL Server Role Membership  
The account that the SQL Server Agent service runs as must be a member of the following SQL Server roles:  
  
-   The account must be a member of the **sysadmin** fixed server role.  
  
-   To use multiserver job processing, the account must be a member of the **msdb** database role **TargetServersRole** on the master server.  
  
## Supported Service Account Types  
The following table lists the Windows account types that can be used for the SQL Server Agent service.  
  
|Service account type|Non-clustered Server|Clustered server|Domain controller (non-clustered)|  
|------------------------|-------------------------|--------------------|--------------------------------------|  
|Microsoft Windows domain account (member of Windows Administrators group)|Supported|Supported|Supported|  
|Windows domain account (non-administrative)|Supported<br /><br />See Limitation 1 below.|Supported<br /><br />See Limitation 1 below.|Supported<br /><br />See Limitation 1 below.|  
|Network Service account (NT AUTHORITY\NetworkService)|Supported<br /><br />See Limitation 1, 3, and 4  below.|Not supported|Not supported|  
|Local user account (non-administrative)|Supported<br /><br />See Limitation 1 below.|Not supported|Not applicable|  
|Local System account (NT AUTHORITY\System)|Supported<br /><br />See Limitation 2 below.|Not supported|Supported<br /><br />See Limitation 2 below.|  
|Local Service account (NT AUTHORITY\LocalService)|Not supported|Not supported|Not supported|  
  
### Limitation 1: Using Non-administrative Accounts for Multiserver Administration  
Enlisting target servers to a master server may fail with the following error message: "The enlist operation failed."  
  
To resolve this error, restart both the SQL Server and the SQL Server Agent services. For more information, see [Start, Stop, Pause, Resume, Restart the Database Engine, SQL Server Agent, or SQL Server Browser Service](http://msdn.microsoft.com/en-us/32660a02-e5a1-411a-9e57-7066ca459df6).  
  
### Limitation 2: Using the Local System Account for Multiserver Administration  
Multiserver administration is supported when the SQL Server Agent service is run under the Local System account only when both the master server and the target server reside on the same computer. If you use this configuration, the following message is returned when you enlist target servers to the master server:  
  
"Ensure the agent start-up account for *<target_server_computer_name>* has rights to log on as targetServer."  
  
You can ignore this informational message. The enlistment operation should complete successfully. For more information, see [Create a Multiserver Environment](../ssms/create-a-multiserver-environment.md).  
  
### Limitation 3: Using the Network Service Account When It Is a SQL Server User  
SQL Server Agent may fail to start if you run the SQL Server Agent service under the Network Service account, and the Network Service account has been explicitly granted access to log into a SQL Server instance as a SQL Server user.  
  
To resolve this, reboot the computer where SQL Server is running. This only needs to be done once.  
  
### Limitation 4: Using the Network Service Account When SQL Server Reporting Services Is Running on the Same Computer  
SQL Server Agent may fail to start if you run the SQL Server Agent service under the Network Service account and Reporting Services is also running on the same computer.  
  
To resolve this, reboot the computer where SQL Server is running, and then restart both the SQL Server and the SQL Server Agent services. This only needs to be done once.  
  
## Common Tasks  
**To specify the startup account for the SQL Server Agent service**  
  
-   [Set the Service Startup Account for SQL Server Agent &#40;SQL Server Configuration Manager&#41;](../ssms/46ffe818-ebb5-43a0-840b-923f219a2472.md)  
  
**To specify the mail profile for SQL Server Agent**  
  
-   [How to: Configure SQL Server Agent Mail to Use Database Mail (SQL Server Management Studio)](http://msdn.microsoft.com/en-us/4b8b61bd-4bd1-43cd-b6e5-c6ed2e101dce)  
  
> [!NOTE]  
> Use SQL Server Configuration Manager to specify that SQL Server Agent must start up when the operating system starts.  
  
## See Also  
[Setting Up Windows Service Accounts](http://msdn.microsoft.com/en-us/309b9dac-0b3a-4617-85ef-c4519ce9d014)  
[Managing Services Using SQL Computer Manager](http://msdn.microsoft.com/en-us/78dee169-df0c-4c95-9af7-bf033bc9fdc6)  
[Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md)  
  
