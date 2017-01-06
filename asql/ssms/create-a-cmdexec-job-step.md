---
title: "Create a CmdExec Job Step | Microsoft Docs"
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
  - "CmdExec jobs"
ms.assetid: b48da5b4-6fe7-4eb7-bade-dc7d697c6d5c
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
# Create a CmdExec Job Step
This topic describes how to create and define a Microsoft SQL Server Agent job step in SQL Server 2016 that uses an executable program or operating system command by using SQL Server Management Studio, Transact-SQL or SQL Server Management Objects.  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Security](#Security)  
  
-   **To create a CmdExec job step, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
    [Transact-SQL](#TSQL)  
  
    [SQL Server Management Objects](#SMO)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
By default, only members of the **sysadmin** fixed server role can create CmdExec job steps. These job steps run under the context of the SQL Server Agent service account unless the **sysadmin** user creates a proxy account. Users who are not members of the **sysadmin** role can create CmdExec job steps if they have access to a CmdExec proxy account.  
  
#### <a name="Permissions"></a>Permissions  
For detailed information, see [Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To create a CmdExec job step  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, create a new job or right-click an existing job, and then click **Properties**.  
  
3.  In the **Job Properties** dialog, click the **Steps** page, and then click **New**.  
  
4.  In the **New Job Step** dialog, type a job **Step name**.  
  
5.  In the **Type** list, choose **Operating system (CmdExec)**.  
  
6.  In **Run as** list, select the proxy account with the credentials that the job will use. By default, CmdExec job steps run under the context of the SQL Server Agent service account.  
  
7.  In the **Process exit code of a successful command** box, enter a value from 0 to 999999.  
  
8.  In the **Command** box, enter the operating system command or executable program. See "Using Transact T-SQL for an example.  
  
9. Click the **Advanced** page to set job step options, such as: what action to take if the job step succeeds or fails, how many times SQL Server Agent should try to execute the job step, and the file where SQL Server Agent can write the job step output. Only members of the **sysadmin** fixed server role can write job step output to an operating system file.  
  
## <a name="TSQL"></a>Using Transact-SQL  
  
#### To create a CmdExec job step  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- creates a job step that that uses CmdExec  
    USE msdb;  
    GO  
    EXEC sp_add_jobstep  
        @job_name = N'Weekly Sales Data Backup',  
        @step_name = N'Set database to read only',  
        @subsystem = N'CMDEXEC',  
        @command = C:\clickme_scripts\SQL11\PostBOLReorg GetHsX.exe',   
        @retry_attempts = 5,  
        @retry_interval = 5 ;  
    GO  
    ```  
  
For more information, see [sp_add_jobstep (Transact-SQL)](http://msdn.microsoft.com/en-us/97900032-523d-49d6-9865-2734fba1c755)  
  
## <a name="SMO"></a>Using SQL Server Management Objects  
**To create a CmdExec job step**  
  
Use the **JobStep** class by using a programming language that you choose, such as Visual Basic, Visual C#, or PowerShell.  
  
