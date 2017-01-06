---
title: "Implement Jobs | Microsoft Docs"
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
  - "jobs [SQL Server Agent]"
  - "SQL Server Agent jobs"
  - "SQL Server Agent jobs, about jobs"
  - "jobs [SQL Server Agent], about jobs"
ms.assetid: 69e06724-25c7-4fb3-8a5b-3d4596f21756
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
# Implement Jobs
You can use SQL Server Agent jobs to automate routine administrative tasks and run them on a recurring basis, making administration more efficient.  
  
A job is a specified series of operations performed sequentially by SQL Server Agent. A job can perform a wide range of activities, including running Transact-SQL scripts, command-line applications, Microsoft ActiveX scripts, Integration Services packages, Analysis Services commands and queries, or Replication tasks. Jobs can run repetitive tasks or those that can be scheduled, and they can automatically notify users of job status by generating alerts, thereby greatly simplifying SQL Server administration.  
  
You can run a job manually, or you can configure it to run according to a schedule or in response to alerts.  
  
## Related Tasks  
  
|||  
|-|-|  
|**Description**|**Topic**|  
|Contains information about creating jobs and assigning ownership.|[Create Jobs](../ssms/create-jobs.md)|  
|Contains information about organizing jobs into categories.|[Organize Jobs](../ssms/organize-jobs.md)|  
|Contains information about the different kinds of job steps you can create and how to manage them.|[Manage Job Steps](../ssms/manage-job-steps.md)|  
|Contains information about how to define when jobs start running and how often they should run.|[Create and Attach Schedules to Jobs](../ssms/create-and-attach-schedules-to-jobs.md)|  
|Contains information about manually running jobs (without a schedule).|[Run Jobs](../ssms/run-jobs.md)|  
|Contains information about how you can configure SQL Server Agent to respond to jobs. For example, you can configure SQL Server Agent to notify administrators when jobs are finished.|[Specify Job Responses](../ssms/specify-job-responses.md)|  
|Contains information about how to view existing jobs, their history once executes, and how to modify them.|[View or Modify Jobs](../ssms/view-or-modify-jobs.md)|  
|Contains information about how to delete jobs.|[Delete Jobs](../ssms/delete-jobs.md)|  
  
## See Also  
[Implement SQL Server Agent Security](../ssms/implement-sql-server-agent-security.md)  
  
