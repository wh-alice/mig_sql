---
title: "Implement SQL Server Agent Security | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQL Server Agent, security"
  - "security [SQL Server Agent], about security"
  - "security [SQL Server Agent]"
  - "security [SQL Server], SQL Server Agent"
ms.assetid: d770d35c-c8de-4e00-9a85-7d03f45a0f0d
caps.latest.revision: 4
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
# Implement SQL Server Agent Security
SQL Server Agent lets the database administrator run each job step in a security context that has only the permissions required to perform that job step, which is determined by a SQL Server Agent proxy. To set the permissions for a particular job step, you create a proxy that has the required permissions and then assign that proxy to the job step. A proxy can be specified for more than one job step. For job steps that require the same permissions, you use the same proxy.  
  
The following section explains what database role you must grant to users so they can create or execute jobs by using SQL Server Agent.  
  
## Granting Access to SQL Server Agent  
To use SQL Server Agent, users must be a member of one or more of the following fixed database roles:  
  
-   **SQLAgentUserRole**  
  
-   **SQLAgentReaderRole**  
  
-   **SQLAgentOperatorRole**  
  
These roles are stored in the **msdb** database. By default, no user is a member of these database roles. Membership in these roles must be granted explicitly. Users who are members of the **sysadmin** fixed server role have full access to SQL Server Agent, and do not need to be a member of these fixed database roles to use SQL Server Agent. If a user is not a member of one of these database roles or of the **sysadmin** role, the SQL Server Agent node is not available to them when they connect to SQL Server by using SQL Server Management Studio.  
  
Members of these database roles can view and execute jobs that they own, and create job steps that run as an existing proxy account. For more information about the specific permissions that are associated with each of these roles, see [SQL Server Agent Fixed Database Roles](../ssms/sql-server-agent-fixed-database-roles.md).  
  
Members of the **sysadmin** fixed server role have permission to create, modify, and delete proxy accounts. Members of the **sysadmin** role have permission to create job steps that do not specify a proxy, but instead run as the SQL Server Agent service account, which is the account that is used to start SQL Server Agent.  
  
## Guidelines  
Follow these guidelines to improve the security of your SQL Server Agent implementation:  
  
-   Create dedicated user accounts specifically for proxies, and only use these proxy user accounts for running job steps.  
  
-   Only grant the necessary permissions to proxy user accounts. Grant only those permissions actually required to run the job steps that are assigned to a given proxy account.  
  
-   Do not run the SQL Server Agent service under a Microsoft Windows account that is a member of the Windows **Administrators** group.  
  
-   Proxies are only as secure as the SQL Server credential store.  
  
-   If user write operations can write to the NT Event log, they can raise alerts via SQL Server Agent.  
  
-   Do not specify the NT Admin account as a service account or proxy account.  
  
-   Note that SQL Server and SQL Server Agent have access to each other’s assets. The two services share a single process space and SQL Server Agent is a sysadmin on the SQL Server service.  
  
-   When a TSX enlists with an MSX, the MSX sysadmins gets total control over the TSX instance of SQL Server.  
  
-   ACE is an extension and cannot invoke itself. ACE is invoked by Chainer ScenarioEngine.exe – also known as Microsoft.SqlServer.Chainer.Setup.exe – or it can be invoked by another host process.  
  
-   ACE depends on the following configuration DLL’s owned by SSDP, because those API’s of DLL’s are called by ACE:  
  
    -   **SCO** – Microsoft.SqlServer.Configuration.Sco.dll, including new SCO validations for virtual accounts  
  
    -   **Cluster** – Microsoft.SqlServer.Configuration.Cluster.dll  
  
    -   **SFC** – Microsoft.SqlServer.Configuration.SqlConfigBase.dll  
  
    -   **Extension** – Microsoft.SqlServer.Configuration.ConfigExtension.dll  
  
## See Also  
[Using Predefined Roles](http://msdn.microsoft.com/en-us/6b46db51-7c30-467d-a251-50f50647fe21)  
[sp_addrolemember (Transact-SQL)](http://msdn.microsoft.com/en-us/a583c087-bdb3-46d2-b9e5-3921b3e6d10b)  
[sp_droprolemember (Transact-SQL)](http://msdn.microsoft.com/en-us/c2f19ab1-e742-4d56-ba8e-8ffd40cf4925)  
[Security and Protection (Database Engine)](http://msdn.microsoft.com/en-us/dfb39d16-722a-4734-94bb-98e61e014ee7)  
  
