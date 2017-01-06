---
title: "Create a Transact-SQL Job Step | Microsoft Docs"
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
  - "Transact-SQL job step"
  - "job steps [Transact-SQL]"
  - "SQL Server Agent jobs, Transact-SQL step"
ms.assetid: 69c571a7-debe-4063-9d38-e4b6a1e8e84c
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
# Create a Transact-SQL Job Step
This topic describes how to create a Microsoft SQL Server Agent job step that executes Transact-SQL scripts in SQL Server 2016 by using SQL Server Management Studio, Transact-SQL, or SQL Server Management Objects.  
  
These job step scripts may call stored procedures and extended stored procedures. A single Transact-SQL job step can contain multiple batches and embedded GO commands. For more information on creating a job, see [Creating Jobs](../ssms/create-jobs.md).  
  
**In This Topic**  
  
-   **Before you begin:**  
  
    [Security](#Security)  
  
-   **To create a Transact-SQL job step, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
    [Transact-SQL](#TSQL)  
  
    [SQL Server Management Objects](#SMO)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
For detailed information, see [Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To create a Transact-SQL job step  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, create a new job or right-click an existing job, and then click **Properties**.  
  
3.  In the **Job Properties** dialog, click the **Steps** page, and then click **New**.  
  
4.  In the **New Job Step** dialog, type a job **Step name**.  
  
5.  In the **Type** list, click **Transact-SQL Script (TSQL)**.  
  
6.  In the **Command** box, type the Transact-SQL command batches, or click **Open** to select a Transact-SQL file to use as the command.  
  
7.  Click **Parse** to check your syntax.  
  
8.  The message "Parse succeeded" is displayed when your syntax is correct. If an error is found, correct the syntax before continuing.  
  
9. Click the **Advanced** page to set job step options, such as: what action to take if the job step succeeds or fails, how many times SQL Server Agent should try to execute the job step, and the file or table where SQL Server Agent can write the job step output. Only members of the **sysadmin** fixed server role can write job step output to an operating system file. All SQL Server Agent users can log output to a table.  
  
10. If you are a member of the **sysadmin** fixed server role and you want to run this job step as a different SQL login, select the SQL login from the **Run as user** list.  
  
## <a name="TSQL"></a>Using Transact-SQL  
  
#### To create a Transact-SQL job step  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- creates a job step that that uses Transact-SQL  
    USE msdb;  
    GO  
    EXEC sp_add_jobstep  
        @job_name = N'Weekly Sales Data Backup',  
        @step_name = N'Set database to read only',  
        @subsystem = N'TSQL',  
        @command = N'ALTER DATABASE SALES SET READ_ONLY',   
        @retry_attempts = 5,  
        @retry_interval = 5 ;  
    GO  
    ```  
  
For more information, see [sp_add_jobstep (Transact-SQL)](http://msdn.microsoft.com/en-us/97900032-523d-49d6-9865-2734fba1c755).  
  
## <a name="SMO"></a>Using SQL Server Management Objects  
**To create a Transact-SQL job step**  
  
Use the **JobStep** class by using a programming language that you choose, such as Visual Basic, Visual C#, or PowerShell.  
  
