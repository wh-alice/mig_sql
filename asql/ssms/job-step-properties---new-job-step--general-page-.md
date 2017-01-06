---
title: "Job Step Properties - New Job Step (General Page) | Microsoft Docs"
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
  - "sql13.ag.job.stepgeneral.f1"
ms.assetid: 8d1885ba-4386-4528-8f2b-68c16852720c
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
# Job Step Properties - New Job Step (General Page)
Use this page to view and change the properties of a Microsoft SQL Server Agent job step, or to define a new job step.  
  
To navigate to this page, in SQL Server Management Studio Object Explorer, expand SQL Server Agent, right-click **Jobs**, click **New Jobs**, select the **Steps** page, and click **New**. You can also navigate to this page by right-clicking a job in Object Explorer, clicking **Properties**, selecting the **Steps** page, and clicking **New**, **Insert**, or **Edit**.  
  
## Options  
**Step name**  
Set the name of the job step.  
  
**Type**  
Set the subsystem that the job step uses. Based on the subsystem you choose, the options displayed for defining the job step change.  
  
**Run as**  
Set the proxy account for the job step. Members of the sysadmin fixed server role may also specify the **SQL Agent Service Account**.  
  
**Database**  
Set the database that the job step runs in. This option is not available for all job step types.  
  
**Command**  
Set the command that the job step runs.  
  
## Options for Transact-SQL Job Steps  
**Open**  
Load the command from a file.  
  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text to the Clipboard.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
**Parse**  
Check the syntax of the command.  
  
## Options for ActiveX Script Job Steps  
  
> [!IMPORTANT]  
> The ActiveX Scripting subsystem will be removed from SQL Server Agent in a future version of MicrosoftSQL Server. Avoid using this feature in new development work, and plan to modify applications that currently use this feature.  
  
**VBScript**  
Specify Microsoft Visual Basic Scripting Edition as the language for the job steps.  
  
**JScript**  
Specify JScript as the language for the job steps.  
  
**Other**  
Type the name of the language for job steps written in another scripting language.  
  
**Open**  
Load the command from a file.  
  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for Operating System (CmdExec) Job Steps  
**Process exit code of a successful command**  
Type the exit code that the command returns to indicate success.  
  
**Open**  
Load the command from a file.  
  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for PowerShell Job Steps  
**Open**  
Load the script from a file.  
  
**Select All**  
Select the text of the script.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for Replication Distributor Job Steps  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for Replication Merge Job Steps  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for Replication Queue Reader Job Steps  
**Database**  
The database to use for the job step.  
  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for Replication Snapshot Job Steps  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for Replication Transaction-Log Reader Job Steps  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for SQL Server Analysis Services Command Job Steps  
**Server**  
Select the server where the job step runs.  
  
**Open**  
Load the command from a file.  
  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for SQL Server Analysis Services Query Job Steps  
**Server**  
Select the server where the job step runs.  
  
**Database**  
The database to use for the job step.  
  
**Open**  
Load the command from a file.  
  
**Select All**  
Select the text of the command.  
  
**Copy**  
Copy the selected text.  
  
**Paste**  
Paste the contents of the Clipboard.  
  
## Options for Integration Services Package Execution Job Steps  
  
### General Tab  
Specify where the Integration Services (SSIS) package is located and what authentication method to use. The following options are available when you select this tab.  
  
**Package source**  
Specify where the SSIS package is stored. Choose one of the following:  
  
-   **SQL Server**  
  
-   **File system**  
  
-   **SSIS Package Store**  
  
**Server**  
Type the server name where the SSIS package is stored. This option is only available when **SQL Server** or **SSIS Package Store** is specified for **Package Source**.  
  
**Use Windows Authentication**  
Logins to SQL Server use Microsoft Windows Authentication.  
  
**Use SQL Server Authentication**  
Logins to SQL Server use SQL Server Authentication. If this method of authentication is selected, enter the appropriate **User name** and **Password**.  
  
> [!IMPORTANT]  
> SQL Server Authentication is provided for backward compatibility. For improved security, use Windows Authentication if possible.  
  
**Package**  
Type the location of the package.  
  
> [!IMPORTANT]  
> For password-protected SSIS packages, click the **Configurations** tab to enter the password in the **Package Password** dialog box. Otherwise, the SQL Server Agent job that executes the password-protected package will fail.  
  
### Configurations Tab  
Specify configuration options for the SSIS package. The following options are available when this tab is selected.  
  
**Configuration files**  
Lists the configuration files for the package.  
  
**Add**  
Add a configuration file for the package.  
  
**Remove**  
Remove a configuration file for the package.  
  
**Move Up**  
Move the selected configuration file up.  
  
**Move Down**  
Move the selected configuration file down.  
  
### Command Files Tab  
Select command files for the package. Command files are processed in the order in which they appear in the list. The following options are available when you select this tab.  
  
**Command files**  
Lists the command files for the package.  
  
**Add**  
Add a command file.  
  
**Remove**  
Remove the selected command file.  
  
**Move Up**  
Move the selected command file up.  
  
**Move Down**  
Move the selected command file down.  
  
### Data Sources Tab  
View the data sources specified in the package on this tab.  
  
**Connection Manager**  
View the name of the data source.  
  
**Description**  
View the description of the data source.  
  
**Connection String**  
View the connection string for the data source.  
  
### Execution Options Tab  
View or change the execution options for the package on this tab.  
  
**Fail package on validation warnings**  
Select this option for package execution to fail if validation warnings occur.  
  
**Validate package without executing**  
Select this option for the job step to validate, but not execute, the package.  
  
**Maximum concurrent executables**  
Maximum number of executable files that can run at one time.  
  
**Enable package checkpoints**  
Select this option for the job step to use package checkpoints.  
  
**Checkpoint file**  
Type the name of the package checkpoint file.  
  
**...**  
Browse to find the package checkpoint file.  
  
**Override restart options**  
Select this option to specify restart options for this job step that are different from the restart options specified in the package.  
  
**Restart option**  
Select the action to take when the package restarts.  
  
### Logging Tab  
View or change the log providers for the package on this tab.  
  
**Log Provider**  
Select the ClassID for the log provider.  
  
**Configuration String**  
Type the configuration string for the log provider.  
  
**Remove**  
Removes the log provider.  
  
### Set Values Tab  
View or change property values for the package on this tab.  
  
**Property path**  
View or change the path for the property.  
  
**Value**  
View or change the value for the property.  
  
**Remove**  
Removes the property.  
  
### Verification Tab  
Select the verification options for the job step on this tab.  
  
**Execute only signed packages**  
Run only packages that have been signed. When this option is selected, the job step fails if the package is unsigned.  
  
**Verify package build**  
Run only packages with a specific build number. When this option is selected, the job step fails if the package does not have the specified build number.  
  
**Build**  
Type the build number of the package.  
  
**Verify package ID**  
Run only packages with a specific ID. When this option is selected, the job step fails if the package does not have the specified ID.  
  
**Package ID**  
Type the package ID.  
  
**Verify version ID**  
Run only packages with a specific version ID. When this option is selected, the job step fails if the package does not have the specified version ID.  
  
**Version ID**  
Type the version ID.  
  
### Command Line Tab  
Specify command-line options for the package. The following options are available when this tab is selected.  
  
**Restore the original options**  
Use the command-line options set in this dialog.  
  
**Edit the command line manually**  
Specify options in the command-line window.  
  
**Command line**  
Type the command line options to use for this package.  
  
## See Also  
[Manage Job Steps](../ssms/manage-job-steps.md)  
[SQL Server Agent Jobs for Packages](http://msdn.microsoft.com/en-us/ecf7a5f9-b8a7-47f1-9ac0-bac07cb89e31)  
[Administering Replication Agents](http://msdn.microsoft.com/en-us/f27186b8-b1b2-4da0-8b2b-91f632c2ab7e)  
  
