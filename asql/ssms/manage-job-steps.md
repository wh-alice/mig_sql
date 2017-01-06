---
title: "Manage Job Steps | Microsoft Docs"
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
  - "job steps [SQL Server replication]"
  - "job steps [SQL Server Agent]"
  - "jobs [SQL Server Agent], Integration Services package step"
  - "executable programs as job steps"
  - "operating systems [SQL Server], job steps"
  - "Transact-SQL job step"
  - "job steps [Transact-SQL]"
  - "Integration Services packages, job steps"
  - "replication job steps [SQL Server]"
  - "logs [SQL Server], jobs"
  - "SQL Server Agent jobs, job steps"
  - "ActiveX scripting jobs [SQL Server]"
  - "job steps [Analysis Services]"
ms.assetid: 51352afc-a0a4-428b-8985-f9e58bb57c31
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
# Manage Job Steps
A job step is an action that the job takes on a database or a server. Every job must have at least one job step. Job steps can be:  
  
-   Executable programs and operating system commands.  
  
-   Transact-SQL statements, including stored procedures and extended stored procedures.  
  
-   PowerShell scripts.  
  
-   Microsoft ActiveX scripts.  
  
-   Replication tasks.  
  
-   Analysis Services tasks.  
  
-   Integration Services packages.  
  
Every job step runs in a specific security context. If the job step specifies a proxy, the job step runs in the security context of the credential for the proxy. If a job step does not specify a proxy, the job step runs in the context of the SQL Server Agent service account. Only members of the sysadmin fixed server role can create jobs that do not explicitly specify a proxy.  
  
Because job steps run in the context of a specific Microsoft Windows user, that user must have the permissions and configuration necessary for the job step to execute. For example, if you create a job that requires a drive letter or a Universal Naming Convention (UNC) path, the job steps may run under your Windows user account while testing the tasks. However, the Windows user for the job step must also have the necessary permissions, drive letter configurations, or access to the required drive. Otherwise, the job step fails. To prevent this problem, ensure that the proxy for each job step has the necessary permissions for the task that the job step performs. For more information, see [Security and Protection (Database Engine)](http://msdn.microsoft.com/en-us/dfb39d16-722a-4734-94bb-98e61e014ee7).  
  
## Job Step Logs  
SQL Server Agent can write output from some job steps either to an operating system file or to the sysjobstepslogs table in the msdb database. The following job step types can write output to both destinations:  
  
-   Executable programs and operating system commands.  
  
-   Transact-SQL statements.  
  
-   Analysis Services tasks.  
  
Only job steps that are executed by users who are members of the sysadmin fixed server role can write job step output to operating system files. If job steps are executed by users who are members of the SQLAgentUserRole, SQLAgentReaderRole, or the SQLAgentOperatorRole fixed database roles in the msdb database, then the output from these job steps can be written only to the sysjobstepslogs table.  
  
Job step logs are automatically deleted when jobs or job steps are deleted.  
  
> [!NOTE]  
> Replication task and Integration Services package job step logging is handled by their respective subsystem. You cannot use SQL Server Agent to configure jog step logging for these types of job steps.  
  
## Executable Programs and Operating-System Commands As Job Steps  
Executable programs and operating-system commands can be used as job steps. These files may have .bat, .cmd, .com, or .exe file extensions.  
  
When you use an executable program or an operating-system command as a job step, you must specify:  
  
-   The process exit code returned if the command was successful.  
  
-   The command to execute. To execute an operating system command, this is simply the command itself. For an external program, this is the name of the program and the arguments to the program, for example: **C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe -e -q "sp_who"**  
  
    > [!NOTE]  
    > You must provide the full path to the executable if the executable is not located in a directory specified in the system path or the path for the user that the job step runs as.  
  
## Transact-SQL Job Steps  
When you create a Transact-SQL job step, you must:  
  
-   Identify the database in which to run the job.  
  
-   Type the Transact-SQL statement to execute. The statement may call a stored procedure or an extended stored procedure.  
  
Optionally, you can open an existing Transact-SQL file as the command for the job step.  
  
Transact-SQL job steps do not use SQL Server Agent proxies. Instead, the job step runs as the owner of the job step, or as the SQL Server Agent service account if the owner of the job step is a member of the sysadmin fixed server role. Members of the sysadmin fixed server role can also specify that Transact-SQL job steps run under the context of another user by using the *database_user_name* parameter of the sp_add_jobstep stored procedure. For more information, see [sp_add_jobstep (Transact-SQL)](http://msdn.microsoft.com/en-us/97900032-523d-49d6-9865-2734fba1c755).  
  
> [!NOTE]  
> A single Transact-SQL job step can contain multiple batches. Transact-SQL job steps can contain embedded GO commands.  
  
## PowerShell Scripting Job Steps  
When you create a PowerShell script job step, you must specify one of two things as the command for the step:  
  
-   The text of a PowerShell script.  
  
-   An existing PowerShell script file to be opened.  
  
The SQL Server Agent PowerShell subsystem opens a PowerShell session and loads the SQL Server PowerShell snap-ins. The PowerShell script used as the job step command can reference the SQL Server PowerShell provider and cmdlets. For more information about writing PowerShell scripts using the SQL Server PowerShell snap-ins, see the [SQL Server PowerShell](http://msdn.microsoft.com/en-us/89b70725-bbe7-4ffe-a27d-2a40005a97e7).  
  
## ActiveX Scripting Job Steps  
  
> [!IMPORTANT]  
> The ActiveX scripting job step will be removed from SQL Server Agent in a future version of MicrosoftSQL Server. Avoid using this feature in new development work, and plan to modify applications that currently use this feature.  
  
When you create an ActiveX scripting job step, you must:  
  
-   Identify the scripting language in which the job step is written.  
  
-   Write the ActiveX script.  
  
You can also open an existing ActiveX script file as the command for the job step. Alternatively, ActiveX script commands can be externally compiled (for example, using Microsoft Visual Basic) and then run as executable programs.  
  
When a job step command is an ActiveX script, you can use the SQLActiveScriptHost object to print output to the job step history log or create COM objects. SQLActiveScriptHost is a global object that is introduced by SQL Server Agent hosting system into the script name space. The object has two methods (Print and CreateObject). The following example shows how ActiveX scripting works in Visual Basic Scripting Edition (VBScript).  
  
```  
' VBScript example for ActiveX Scripting job step  
' Create a Dmo.Server object. The object connects to the  
' server on which the script is running.  
  
Set oServer = CreateObject("SQLDmo.SqlServer")  
oServer.LoginSecure = True  
oServer.Connect "(local)"  
'Disconnect and destroy the server object  
oServer.DisConnect  
Set oServer = nothing  
```  
  
## Replication Job Steps  
When you create publications and subscriptions using replication, replication jobs are created by default. The type of job created is determined by the type of replication (snapshot, transactional, or merge) and the options used.  
  
Replication job steps activate one of these replication agents:  
  
-   Snapshot Agent (Snapshot job)  
  
-   Log Reader Agent (LogReader job)  
  
-   Distribution Agent (Distribution job)  
  
-   Merge Agent (Merge job)  
  
-   Queue Reader Agent (QueueReader job)  
  
When replication is set up, you can specify to run the replication agents in one of three ways: continuously after SQL Server Agent is started, on demand, or according to a schedule. For more information about replication agents, see [Replication Agents Overview](http://msdn.microsoft.com/en-us/a35ecd7d-f130-483c-87e3-ddc8927bb91b).  
  
## Analysis Services Job Steps  
SQL Server Agent supports two distinct types of Analysis Services job steps, command job steps, and query job steps.  
  
### Analysis Services Command Job Steps  
When you create an Analysis Services command job step, you must:  
  
-   Identify the database OLAP server in which to run the job step.  
  
-   Type the statement to execute. The statement must be an XML for Analysis Services **Execute** method. The statement may not contain a complete SOAP envelope or an XML for Analysis Services **Discover** method. Notice that, while SQL Server Management Studio supports complete SOAP envelopes and the **Discover** method, SQL Server Agent job steps do not.  
  
### Analysis Services Query Job Steps  
When you create an Analysis Services query job step, you must:  
  
-   Identify the database OLAP server in which to run the job step.  
  
-   Type the statement to execute. The statement must be a multidimensional expressions (MDX) query.  
  
For more information on MDX, see [MDX Statement Fundamentals (MDX)](http://msdn.microsoft.com/en-us/a560383b-bb58-472e-95f5-65d03d8ea08b).  
  
## Integration Services Packages  
When you create an Integration Services package job step, you must do the following:  
  
-   Identify the source of the package.  
  
-   Identify the location of the package.  
  
-   If configuration files are required for the package, identify the configuration files.  
  
-   If command files are required for the package, identify the command files.  
  
-   Identify the verification to use for the package. For example, you can specify that the package must be signed, or that the package must have a specific package ID.  
  
-   Identify the data sources for the package.  
  
-   Identify the log providers for the package.  
  
-   Specify variables and values to set before running the package.  
  
-   Identify execution options.  
  
-   Add or modify command-line options.  
  
Note that if you deployed the package to the SSIS Catalog and you specify **SSIS Catalog** as the package source, much of this configuration information is obtained automatically from the package. Under the **Configuration** tab you can specify the environment, parameter values, connection manager values, property overrides, and whether the package runs in a 32-bit runtime environment.  
  
For more information about creating job steps that run Integration Services packages, see [SQL Server Agent Jobs for Packages](http://msdn.microsoft.com/en-us/ecf7a5f9-b8a7-47f1-9ac0-bac07cb89e31).  
  
## Related Tasks  
  
|||  
|-|-|  
|**Description**|**Topic**|  
|Describes how to create a job step with an executable program.|[Create a CmdExec Job Step](../ssms/create-a-cmdexec-job-step.md)|  
|Describes how to reset SQL Server Agent permissions.|[Configure a User to Create and Manage SQL Server Agent Jobs](../ssms/configure-a-user-to-create-and-manage-sql-server-agent-jobs.md)|  
|Describes how to create a Transact-SQL job step.|[Create a Transact-SQL Job Step](../ssms/create-a-transact-sql-job-step.md)|  
|Describes how to define options for Microsoft SQL Server Agent Transact-SQL job steps.|[Define Transact-SQL Job Step Options](../ssms/define-transact-sql-job-step-options.md)|  
|Describes how to create an ActiveX script job step.|[Create an ActiveX Script Job Step](../ssms/create-an-activex-script-job-step.md)|  
|Describes how to create and define SQL Server Agent job steps that execute SQL Server Analysis Services commands and queries.|[Create an Analysis Services Job Step](../ssms/create-an-analysis-services-job-step.md)|  
|Describes what action SQL Server should take if a failure occurs during job execution.|[Set Job Step Success or Failure Flow](../ssms/set-job-step-success-or-failure-flow.md)|  
|Describes how to view job step details in the Job Step Properties dialog.|[View Job Step Information](../ssms/view-job-step-information.md)|  
|Describes how to delete a SQL Server Agent job step log.|[Delete a Job Step Log](../ssms/delete-a-job-step-log.md)|  
  
## See Also  
[sysjobstepslogs (Transact-SQL)](http://msdn.microsoft.com/en-us/128c25db-0b71-449d-bfb2-38b8abcf24a0)  
[Create Jobs](../ssms/create-jobs.md)  
[sp_add_job (Transact-SQL)](http://msdn.microsoft.com/en-us/6ca8fe2c-7b1c-4b59-b4c7-e3b7485df274)  
  
