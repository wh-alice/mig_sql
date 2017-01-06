---
title: "Stop a Job | Microsoft Docs"
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
  - "jobs [SQL Server Agent], stopping"
  - "SQL Server Agent jobs, stopping"
  - "stopping jobs"
ms.assetid: 4249328a-24d8-4284-9d1d-7d04ed90e3d7
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
# Stop a Job
This topic describes how to stop a Microsoft SQL Server Agent job. A job is a specified series of actions that SQL Server Agent performs.  
  
-   **Before you begin:**  ,  
  
    [Limitations and Restrictions](#Restrictions)  
  
    [Security](#Security)  
  
-   **To stop a job, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
    [Transact-SQL](#TSQL)  
  
    [SQL Server Management Objects](#SMO)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Restrictions"></a>Limitations and Restrictions  
  
-   If a job is currently executing a step of type **CmdExec** or **PowerShell**, the process that is being run (for example, MyProgram.exe) is forced to end prematurely. This can cause unpredictable behavior, such as files that are being used by the process being held open.  
  
-   For a multiserver job, a STOP instruction for the job is posted to all target servers of the job.  
  
### <a name="Security"></a>Security  
For detailed information, see [Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To stop a job  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, expand **Jobs**, right-click the job you want to stop, and then click **Stop Job**.  
  
3.  If you want to stop multiple jobs, right-click **Job Activity Monitor**, and then click **View Job Activity**. In the Job Activity Monitor, select the jobs you want to stop, right-click your selection, and then click **Stop Jobs**.  
  
## <a name="TSQL"></a>Using Transact-SQL  
  
#### To stop a job  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    -- stops a job named Weekly Sales Data Backup  
    USE msdb ;  
    GO  
  
    EXEC dbo.sp_stop_job  
        N'Weekly Sales Data Backup' ;  
    GO  
    ```  
  
For more information, see [sp_stop_job (Transact-SQL)](http://msdn.microsoft.com/en-us/64b4cc75-99a0-421e-b418-94e37595bbb0).  
  
## <a name="SMO"></a>Using SQL Server Management Objects  
**To stop a job**  
  
Call the **Stop** method of the **Job** class by using a programming language that you choose, such as Visual Basic, Visual C#, or PowerShell. For more information, see [SQL Server Management Objects (SMO)](http://msdn.microsoft.com/library/ms162169.aspx).  
  
