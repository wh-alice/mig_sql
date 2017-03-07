---
title: "sp_add_jobschedule (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-07-28"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_add_jobschedule"
  - "sp_add_jobschedule_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_add_jobschedule"
ms.assetid: ffce19d9-d1d6-45b4-89fd-ad0f60822ba0
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_add_jobschedule (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Creates a schedule for a job.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_add_jobschedule [ @job_id = ] job_id, | [ @job_name = ] 'job_name', [ @name = ] 'name'  
     [ , [ @enabled = ] enabled_flag ]  
     [ , [ @freq_type = ] frequency_type ]  
     [ , [ @freq_interval = ] frequency_interval ]  
     [ , [ @freq_subday_type = ] frequency_subday_type ]  
     [ , [ @freq_subday_interval = ] frequency_subday_interval ]  
     [ , [ @freq_relative_interval = ] frequency_relative_interval ]  
     [ , [ @freq_recurrence_factor = ] frequency_recurrence_factor ]  
     [ , [ @active_start_date = ] active_start_date ]  
     [ , [ @active_end_date = ] active_end_date ]  
     [ , [ @active_start_time = ] active_start_time ]  
     [ , [ @active_end_time = ] active_end_time ]  
     [ , [ @schedule_id = ] schedule_id OUTPUT ]  
```  
  
## Arguments  
 [ **@job_id=** ] *job_id*  
 Job identification number of the job to which the schedule is added. *job_id* is **uniqueidentifier**, with no default.  
  
 [ **@job_name=** ] **'***job_name***'**  
 Name of the job to which the schedule is added. *job_name* is **nvarchar(128)**, with no default.  
  
> [!NOTE]  
>  Either *job_id* or *job_name* must be specified, but both cannot be specified.  
  
 [ **@name=** ] **'***name***'**  
 Name of the schedule. *name* is **nvarchar(128)**, with no default.  
  
 [ **@enabled=** ] *enabled_flag*  
 Indicates the current status of the schedule. *enabled_flag* is **tinyint**, with a default of **1** (enabled). If **0**, the schedule is not enabled. When the schedule is disabled, the job will not be run.  
  
 [ **@freq_type=** ] *frequency_type*  
 Value that indicates when the job is to be executed. *frequency_type* is **int**, with a default of **0**, and can be one of the following values:  
  
|Value|Description|  
|-----------|-----------------|  
|**1**|Once|  
|**4**|Daily|  
|**8**|Weekly|  
|**16**|Monthly|  
|**32**|Monthly, relative to *frequency_interval.*|  
|**64**|Run when the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent service starts.|  
|**128**|Run when the computer is idle.|  
  
 [ **@freq_interval=** ] *frequency_interval*  
 Day that the job is executed. *frequency_interval* is **int**, with a default of 0, and depends on the value of *frequency_type* as indicated in the following table:  
  
|Value|Effect|  
|-----------|------------|  
|**1** (once)|*frequency_interval* is unused.|  
|**4** (daily)|Every *frequency_interval* days.|  
|**8** (weekly)|*frequency_interval* is one or more of the following (combined with an OR logical operator):<br /><br /> 1 = Sunday<br /><br /> 2 = Monday<br /><br /> 4 = Tuesday<br /><br /> 8 = Wednesday<br /><br /> 16 = Thursday<br /><br /> 32 = Friday<br /><br /> 64 = Saturday|  
|**16** (monthly)|On the *frequency_interval* day of the month.|  
|**32** (monthly relative)|*frequency_interval* is one of the following:<br /><br /> 1 = Sunday<br /><br /> 2 = Monday<br /><br /> 3 = Tuesday<br /><br /> 4 = Wednesday<br /><br /> 5 = Thursday<br /><br /> 6 = Friday<br /><br /> 7 = Saturday<br /><br /> 8 = Day<br /><br /> 9 = Weekday<br /><br /> 10 = Weekend day|  
|**64** (when the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent service starts)|*frequency_interval* is unused.|  
|**128**|*frequency_interval* is unused.|  
  
 [ **@freq_subday_type=** ] *frequency_subday_type*  
 Specifies the units for *frequency_subday_interval*. *frequency_subday_type* is **int**, with no default, and can be one of the following values:  
  
|Value|Description (unit)|  
|-----------|--------------------------|  
|**0x1**|At the specified time|  
|**0x4**|Minutes|  
|**0x8**|Hours|  
  
 [ **@freq_subday_interval=** ] *frequency_subday_interval*  
 Number of *frequency_subday_type* periods to occur between each execution of the job. *frequency_subday_interval* is **int**, with a default of 0.  
  
 [ **@freq_relative_interval=** ] *frequency_relative_interval*  
 Further defines the *frequency_interval* when *frequency_type* is set to **32** (monthly relative).  
  
 *frequency_relative_interval* is **int**, with no default, and can be one of the following values:  
  
|Value|Description (unit)|  
|-----------|--------------------------|  
|**1**|First|  
|**2**|Second|  
|**4**|Third|  
|**8**|Fourth|  
|**16**|Last|  
  
 *frequency_relative_interval* indicates the occurrence of the interval. For example, if *frequency_relative_interval* is set to **2**, *frequency_type* is set to **32**, and *frequency_interval* is set to **3**, the scheduled job would occur on the second Tuesday of each month.  
  
 [ **@freq_recurrence_factor=** ] *frequency_recurrence_factor*  
 Number of weeks or months between the scheduled execution of the job. *frequency_recurrence_factor* is used only if *frequency_type* is set to **8**, **16**, or **32**. *frequency_recurrence_factor* is **int**, with a default of 0.  
  
 [ **@active_start_date=** ] *active_start_date*  
 Date on which job execution can begin. *active_start_date* is **int**, with no default. The date is formatted as YYYYMMDD. If *active_start_date* is set, the date must be greater than or equal to 19900101.  
  
 After the schedule is created, review the start date and confirm that it is the correct date. For more information, see the section "Scheduling Start Date" in [Create and Attach Schedules to Jobs](../Topic/Create%20and%20Attach%20Schedules%20to%20Jobs.md).  
  
 [ **@active_end_date=** ] *active_end_date*  
 Date on which job execution can stop. *active_end_date* is **int**, with no default. The date is formatted as YYYYMMDD.  
  
 [ **@active_start_time=** ] *active_start_time*  
 Time on any day between *active_start_date* and *active_end_date* to begin job execution. *active_start_time* is **int**, with no default. The time is formatted as HHMMSS on a 24-hour clock.  
  
 [ **@active_end_time=***active_end_time*  
 Time on any day between *active_start_date* and *active_end_date* to end job execution. *active_end_time* is **int**, with no default. The time is formatted as HHMMSS on a 24-hour clock.  
  
 [ **@schedule_id=***schedule_id***OUTPUT**  
 Schedule identification number assigned to the schedule if it is created successfully. *schedule_id* is an output variable of type **int**, with no default.  
  
 [ **@schedule_uid**= ] *schedule_uid***OUTPUT**  
 A unique identifier for the schedule. *schedule_uid* is a variable of type **uniqueidentifier**.  
  
## Return Code Values  
 0 (success) or 1 (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 Job schedules can now be managed independently of jobs. To add a schedule to a job, use **sp_add_schedule** to create the schedule and **sp_attach_schedule** to attach the schedule to a job.  
  
## Permissions  
 By default, members of the **sysadmin** fixed server role can execute this stored procedure. Other users must be granted one of the following [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent fixed database roles in the **msdb** database:  
  
-   **SQLAgentUserRole**  
  
-   **SQLAgentReaderRole**  
  
-   **SQLAgentOperatorRole**  
  
 For details about the permissions of these roles, see [SQL Server Agent Fixed Database Roles](../Topic/SQL%20Server%20Agent%20Fixed%20Database%20Roles.md).  
 
 ## Example
 The following example assigns a job schedule to `SaturdayReports` which will execute every Saturday at 2:00 AM.
```tsql  
EXEC msdb.dbo.sp_add_jobschedule 
		@job_name = N'SaturdayReports', -- Job name
		@name = N'Weekly_Sat_2AM',  -- Schedule name
		@freq_type = 8, -- Weekly
		@freq_interval = 64, -- Saturday
		@freq_recurrence_factor = 1, -- every week
		@active_start_time = 20000 -- 2:00 AM
```
  
## See Also  
 [Create and Attach Schedules to Jobs](../Topic/Create%20and%20Attach%20Schedules%20to%20Jobs.md)   
 [Schedule a Job](../Topic/Schedule%20a%20Job.md)   
 [Create a Schedule](../Topic/Create%20a%20Schedule.md)   
 [SQL Server Agent Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sql-server-agent-stored-procedures-transact-sql.md)   
 [sp_add_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-schedule-transact-sql.md)   
 [sp_update_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-update-schedule-transact-sql.md)   
 [sp_delete_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-delete-schedule-transact-sql.md)   
 [sp_help_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-help-schedule-transact-sql.md)   
 [sp_attach_schedule &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-attach-schedule-transact-sql.md)  
  
  