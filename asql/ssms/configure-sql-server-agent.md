---
title: "Configure SQL Server Agent | Microsoft Docs"
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
  - "SQL Server Agent, configuring"
  - "accounts [SQL Server], SQL Server Agent"
  - "SQL Server Agent, permissions"
  - "security [SQL Server], SQL Server Agent"
ms.assetid: 2e361a62-9e92-4fcd-80d7-d6960f127900
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
# Configure SQL Server Agent
This topic describes how to specify some configuration options for SQL Server Agent during installation of SQL Server. The full set of SQL Server Agent configuration options is only available within SQL Server Management Studio, SQL Server Management Objects (SMO), or the SQL Server Agent stored procedures.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   [To configure SQL Server Agent](#SSMSProcedure)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
  
-   Click **SQL Server Agent** in Object Explorer of SQL Server Management Studio to administer jobs, operators, alerts, and the SQL Server Agent service. However, Object Explorer only displays the SQL Server Agent node if you have permission to use it.  
  
-   Auto-restart should not be enabled for the SQL Server service or the SQL Server Agent service on failover cluster instances.  
  
### <a name="Security"></a>Security  
  
#### <a name="Permissions"></a>Permissions  
To perform its functions, SQL Server Agent must be configured to use the credentials of an account that is a member of the **sysadmin** fixed server role in SQL Server. The account must have the following Windows permissions:  
  
-   Log on as a service (SeServiceLogonRight)  
  
-   Replace a process-level token (SeAssignPrimaryTokenPrivilege)  
  
-   Bypass traverse checking (SeChangeNotifyPrivilege)  
  
-   Adjust memory quotas for a process (SeIncreaseQuotaPrivilege)  
  
For more information about the Windows permissions required for the SQL Server Agent service account, see [Select an Account for the SQL Server Agent Service](../ssms/select-an-account-for-the-sql-server-agent-service.md) and [Setting Up Windows Service Accounts](http://msdn.microsoft.com/en-us/309b9dac-0b3a-4617-85ef-c4519ce9d014).  
  
## <a name="SSMSProcedure"></a>Using SQL Server Management Studio  
  
#### To configure SQL Server Agent  
  
1.  Click the **Start** button, and then, on the **Start**  menu, click **Control Panel**.  
  
2.  In Control Panel, click **System and Security**, click **Administrative Tools**, and then select **Local Security Policy**.  
  
3.  In Local Security Policy, click the chevron to expand the **Local Policies** folder, and then click the **User Rights Assignment** folder.  
  
4.  Right-click a permission that you want to configure for use with SQL Server and select **Properties**.  
  
5.  In the permission's properties dialog box, verify that the account under which SQL Server Agent runs is listed. If not, click **Add User or Group**, enter the account under which SQL Server Agent runs in the **Select Users, Computers, Service Accounts, or Groups** dialog box, and then click **OK**.  
  
6.  Repeat for each permission that you want to add to run with SQL Server Agent. When finished, click **OK**.  
  
