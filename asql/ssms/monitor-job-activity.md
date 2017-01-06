---
title: "Monitor Job Activity | Microsoft Docs"
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
  - "SQL Server Agent, monitoring"
  - "jobs [SQL Server Agent], monitoring"
  - "monitoring [SQL Server], jobs"
  - "activity monitoring [SQL Server Agent]"
  - "monitoring [SQL Server], SQL Server Agent"
  - "monitoring [SQL Server Agent]"
  - "SQL Server Agent Job Activity Monitor"
  - "SQL Server Agent jobs, monitoring"
  - "performance [SQL Server], jobs"
  - "current activity"
ms.assetid: 71cb432b-631d-4b8b-9965-e731b3d8266d
caps.latest.revision: 6
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
# Monitor Job Activity
You can monitor the current activity of all defined jobs on an instance of SQL Server by using SQL Server Agent Job Activity Monitor.  
  
## SQL Server Agent Sessions  
SQL Server Agent creates a new session each time the service starts. When a new session is created, the **sysjobactivity** table in the **msdb** database is populated with all the existing defined jobs. This table preserves the last activity for jobs when SQL Server Agent is restarted. Each session records SQL Server Agent normal job activity from the start of the job to its finish. Information about these sessions is stored in the **syssessions** table of the **msdb** database.  
  
## Job Activity Monitor  
The Job Activity Monitor allows you to view the **sysjobactivity** table by using SQL Server Management Studio. You can view all jobs on the server, or you can define filters to limit the number of jobs displayed. You can also sort the job information by clicking on a column heading in the **Agent Job Activity** grid. For example, when you select the **Last Run** column heading, you can view the jobs in the order that they were last run. Clicking the column heading again toggles the jobs in ascending and descending order based on their last run date.  
  
Using the Job Activity Monitor you can perform the following tasks:  
  
-   Start and stop jobs.  
  
-   View job properties.  
  
-   View the history for a specific job.  
  
-   Refresh the information in the **Agent Job Activity** grid manually or set an automatic refresh interval by clicking **View refresh settings**.  
  
Use the Job Activity Monitor when you want to find out what jobs are scheduled to run, the last outcome of jobs that have run during the current session, and to find out which jobs are currently running or idle. If the SQL Server Agent service fails unexpectedly, you can determine which jobs were in the middle of being executed by looking at the previous session in the Job Activity Monitor.  
  
To open the Job Activity Monitor, expand **SQL Server Agent** in Management Studio Object Explorer, right-click **Job Activity Monitor**, and click **View Job Activity**.  
  
You can also view job activity for the current session by using the stored procedure **sp_help_jobactivity**.  
  
## Related Tasks  
  
|||  
|-|-|  
|**Description**|**Topic**|  
|Describes how to view the runtime state of SQL Server Agent jobs.|[View Job Activity](../ssms/view-job-activity.md)|  
  
## See Also  
[View Job Activity](../ssms/view-job-activity.md)  
[sysjobactivity (Transact-SQL)](http://msdn.microsoft.com/en-us/fd17cac9-5d1f-4b44-b2dc-ee9346d8bf1e)  
[syssessions (Transact-SQL)](http://msdn.microsoft.com/en-us/187819b6-c7f4-4a26-b74c-0a89e96695cf)  
[sp_help_jobactivity (Transact-SQL)](http://msdn.microsoft.com/en-us/d344864f-b4d3-46b1-8933-b81dec71f511)  
  
