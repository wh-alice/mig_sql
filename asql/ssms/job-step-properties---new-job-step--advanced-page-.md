---
title: "Job Step Properties - New Job Step (Advanced Page) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.ag.job.stepadvanced.f1"
ms.assetid: bdecfd4f-bcd8-4ba2-8ada-fbb636314f40
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
# Job Step Properties - New Job Step (Advanced Page)
Use this page to view and change the properties of a Microsoft SQL Server Agent job step.  
  
## Options  
**On success action**  
Sets the action for SQL Server Agent to perform if the job step succeeds.  
  
**Retry attempts**  
Sets the number of times that SQL Server Agent attempts to retry a failed job step.  
  
**Retry interval (minutes)**  
Sets the amount of time for SQL Server Agent to wait between retry attempts.  
  
**On failure action**  
Sets the action for SQL Server Agent to perform if the job step fails.  
  
## Options for Transact-SQL Job Steps  
**Output file**  
Sets the file to use for output from the job step. This option is available only to members of the **sysadmin** fixed server role.  
  
**...**  
Browse to the file to use for output from the job step.  
  
**View**  
In Microsoft SQL Server 2016, this button is disabled for viewing output files. Instead, use Notepad to view job step output files.  
  
**Append output to existing file**  
Append output to the existing contents of the file. Otherwise, the previous file contents are overwritten each time the job step runs.  
  
**Log to table**  
Logs job step output to the **sysjobstepslogs** table in the **msdb** database.  
  
**View**  
After the job step has run at least once, click **View** to view its output in the table.  
  
**Append output to existing entry in table**  
Appends output to the existing contents of the table. Otherwise, the previous table contents are overwritten each time the job step runs.  
  
**Include step output in history**  
Select this option to include output from the job step in the job history.  
  
**Run as user**  
If you are a member of the **sysadmin** fixed server role, you can select another SQL login to run this job step.  
  
## Options for Operating System (CmdExec) Job Steps  
**Output file**  
Sets the file to use for output from the job step.  
  
**...**  
Browse to the file to use for output from the job step.  
  
**View**  
In Microsoft SQL Server 2016, this button is disabled for viewing output files. Instead, use Notepad to view job step output files.  
  
**Append output to existing file**  
Appends the job step output to the previous file contents each time it runs.  
  
**Log to table**  
Logs job step output to the **sysjobstepslogs** table in the **msdb** database.  
  
**View**  
After the job step has run at least once, click **View** to view its output in the table.  
  
**Append output to existing entry in table**  
Appends output to the existing contents of the table. Otherwise, the previous table contents are overwritten each time the job step runs.  
  
**Include step output in history**  
Select this option to include output from the job step in the job history.  
  
## Options for PowerShell Job Steps  
**Output file**  
Sets the file to use for output from the job step.  
  
**...**  
Browse to the file to use for output from the job step.  
  
**View**  
In Microsoft SQL Server 2016, this button is disabled for viewing output files. Instead, use Notepad to view job step output files.  
  
**Append output to existing file**  
Appends the job step output to the previous file contents each time it runs.  
  
**Log to table**  
Logs job step output to the **sysjobstepslogs** table in the **msdb** database.  
  
**View**  
After the job step has run at least once, click **View** to view its output in the table.  
  
**Append output to existing entry in table**  
Appends output to the existing contents of the table. Otherwise, the previous table contents are overwritten each time the job step runs.  
  
**Include step output in history**  
Select this option to include output from the job step in the job history.  
  
## Options for Replication Queue Reader Job Steps  
**Server**  
Sets the server to use for a replication queue reader job step.  
  
**Database**  
Sets the database to use for a replication queue reader job step.  
  
## Options for SQL Server Analysis Services Job Steps  
**Output file**  
Sets the file to use for output from the job step. This option is available only to members of the **sysadmin** fixed server role.  
  
**...**  
Browse to the file to use for output from the job step.  
  
**View**  
In SQL Server 2016, this button is disabled for viewing output files. Instead, use Notepad to view job step output files.  
  
**Append output to existing file**  
Append output to the existing contents of the file. Otherwise, the previous file contents are overwritten each time the job step runs.  
  
**Log to table**  
Logs job step output to the **sysjobstepslogs** table in the **msdb** database.  
  
**View**  
After the job step has run at least once, click **View** to view its output in the table.  
  
**Append output to existing entry in table**  
Appends output to the existing contents of the table. Otherwise, the previous table contents are overwritten each time the job step runs.  
  
**Include step output in history**  
Select this option to include output from the job step in the job history.  
  
## See Also  
[Manage Job Steps](../ssms/manage-job-steps.md)  
  
