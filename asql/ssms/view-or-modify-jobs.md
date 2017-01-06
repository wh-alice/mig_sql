---
title: "View or Modify Jobs | Microsoft Docs"
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
  - "jobs [SQL Server Agent], modifying"
  - "jobs [SQL Server Agent], viewing"
  - "modifying jobs"
  - "viewing jobs"
  - "SQL Server Agent jobs, viewing"
  - "SQL Server Agent jobs, modifying"
  - "displaying jobs"
ms.assetid: 57f649b8-190c-4304-abd7-7ca5297deab7
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
# View or Modify Jobs
You can view any job you have created. After you have run a job, you can also view its history. Viewing a job's history allows you to see when the job ran, the status of the job as a whole, and the status of each job step in the job. You can see whether the job ever failed in the past, when the job last completed successfully, and what output the job created each time the job ran. Members of the **sysadmin** fixed server role can view or modify any job, regardless of the owner.  
  
> [!NOTE]  
> A job must have been executed at least one time for there to be a job history. You can limit the total size of the job history log and the size per job.  
  
Finally, you can modify a job to meet new requirements. You can modify:  
  
-   Response options  
  
-   Schedules  
  
-   Job steps  
  
-   Ownership  
  
-   Job category  
  
-   Target servers (multiserver jobs only)  
  
To make sure that changes to multiserver jobs take effect, you must post the changes to the download list so that target servers can download the updated job. To ensure that target servers have the most current job definitions, post an INSERT instruction after you update the multiserver job as follows:  
  
```  
EXECUTE sp_post_msx_operation 'INSERT', 'JOB', '<job id>'  
```  
  
For more information, see [sp_purge_jobhistory (Transact-SQL)](http://msdn.microsoft.com/en-us/237f9bad-636d-4262-9bfb-66c034a43e88).  
  
Members of the **sysadmin** fixed server role can view the definition or history of any job, and can modify any job.  
  
## Related Tasks  
  
|||  
|-|-|  
|**Description**|**Topic**|  
|Describes how to view MicrosoftSQL Server Agent jobs.|[View a Job](../ssms/view-a-job.md)|  
|Describes how to view the MicrosoftSQL Server Agent job history log.|[View the Job History](../ssms/view-the-job-history.md)|  
|Describes how to delete the contents of the MicrosoftSQL Server Agent job history log.|[Clear the Job History Log](../ssms/clear-the-job-history-log.md)|  
|Describes how to set size limits for MicrosoftSQL Server Agent job history logs.|[Resize the Job History Log](../ssms/resize-the-job-history-log.md)|  
|Describes how to change the properties of MicrosoftSQL Server Agent jobs.|[Modify a Job](../ssms/modify-a-job.md)|  
  
## See Also  
[sysjobhistory](http://msdn.microsoft.com/en-us/1b1fcdbb-2af2-45e6-bf3f-e8279432ce13)  
  
