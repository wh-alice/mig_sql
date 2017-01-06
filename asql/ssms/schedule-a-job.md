---
title: "Schedule a Job | Microsoft Docs"
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
  - "scheduling jobs [SQL Server]"
  - "SQL Server Agent jobs, scheduling"
  - "jobs [SQL Server Agent], scheduling"
ms.assetid: f626390a-a3df-4970-b7a7-a0529e4a109c
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
# Schedule a Job
This topic describes how to schedule a SQL Server Agent job.  
  
-   **Before you begin:** ,  
  
    [Security](#Security)  
  
-   **To schedule a job, using:**  
  
    [SQL Server Management Studio](#SSMS)  
  
    [Transact-SQL](#TSQL)  
  
    [SQL Server Management Objects](#SMO)  
  
## <a name="BeforeYouBegin"></a>Before You Begin  
  
### <a name="Security"></a>Security  
For detailed information, see [Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md).  
  
## <a name="SSMS"></a>Using SQL Server Management Studio  
  
#### To create and attach a schedule to a job  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, expand **Jobs**, right-click the job you want to schedule, and click **Properties**.  
  
3.  Select the **Schedules** page, and then click **New**.  
  
4.  In the **Name** box, type a name for the new schedule.  
  
5.  Clear the **Enabled** check box if you do not want the schedule to take effect immediately following its creation.  
  
6.  For **Schedule Type**, select one of the following:  
  
    -   Click **Start automatically when SQL Server Agent starts** to start the job when the SQL Server Agent service is started.  
  
    -   Click **Start whenever the CPUs become idle** to start the job when the CPUs reach an idle condition.  
  
    -   Click **Recurring** if you want a schedule to run repeatedly. To set the recurring schedule, complete the **Frequency**, **Daily Frequency**, and **Duration** groups on the dialog.  
  
    -   Click **One time** if you want the schedule to run only once. To set the **One time** schedule, complete the **One-time occurrence** group on the dialog.  
  
#### To attach a schedule to a job  
  
1.  In **Object Explorer,** connect to an instance of the SQL Server Database Engine, and then expand that instance.  
  
2.  Expand **SQL Server Agent**, expand **Jobs**, right-click the job that you want to schedule, and click **Properties**.  
  
3.  Select the **Schedules** page, and then click **Pick**.  
  
4.  Select the schedule that you want to attach, and then click **OK**.  
  
5.  In the **Job Properties** dialog box, double-click the attached schedule.  
  
6.  Verify that **Start date** is set correctly. If it is not, set the date when you want for the schedule to start, and then click **OK**.  
  
7.  In the **Job Properties** dialog box, click **OK**.  
  
## <a name="TSQL"></a>Using Transact-SQL  
  
#### To schedule a job  
  
1.  In **Object Explorer**, connect to an instance of Database Engine.  
  
2.  On the Standard bar, click **New Query**.  
  
3.  Copy and paste the following example into the query window and click **Execute**.  
  
    ```  
    USE msdb ;  
    GO  
    -- creates a schedule named NightlyJobs.   
    -- Jobs that use this schedule execute every day when the time on the server is 01:00.   
    EXEC sp_add_schedule  
        @schedule_name = N'NightlyJobs' ,  
        @freq_type = 4,  
        @freq_interval = 1,  
        @active_start_time = 010000 ;  
    GO  
    -- attaches the schedule to the job BackupDatabase  
    EXEC sp_attach_schedule  
       @job_name = N'BackupDatabase',  
       @schedule_name = N'NightlyJobs' ;  
    GO  
    ```  
  
For more information, see [sp_add_schedule (Transact-SQL)](http://msdn.microsoft.com/en-us/9060aae3-3ddd-40a5-83bb-3ea7ab1ffbd7) and [sp_attach_schedule (Transact-SQL)](http://msdn.microsoft.com/en-us/80c80eaf-cf23-4ed8-b8dd-65fe59830dd1).  
  
## <a name="SMO"></a>Using SQL Server Management Objects  
Use the **JobSchedule** class by using a programming language that you choose, such as Visual Basic, Visual C#, or PowerShell. For more information, see[SQL Server Management Objects (SMO)](http://msdn.microsoft.com/library/ms162169.aspx).  
  
