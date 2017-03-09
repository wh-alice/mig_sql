---
title: "Use sqlBindR.exe to Upgrade an Instance of R Services | Microsoft Docs"
ms.custom: ""
ms.date: "2017-03-01"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server (starting with 2016 CTP3)"
ms.assetid: 4da80998-f929-4fad-a86f-87d09c1a79ef
caps.latest.revision: 13
ms.author: "jeannt"
manager: "jhubbard"
---
# Use sqlBindR.exe to Upgrade an Instance of R Services
Microsoft R Server for Windows contains a new tool, called **SqlBindR.exe**, that can be used to upgrade the R components for an instance. This process is called **binding**, because it changes the licensing model for a SQL Server 2016 instance to use the new Microsoft Modern Software Lifecycle Support license.


In general, this licensing system ensures that your data scientists will always be using the latest version of R. For more information about the terms and advantages of the Microsoft Software License, see [Run Microsoft R Server for Windows](https://msdn.microsoft.com/microsoft-r/rserver-install-windows).

When you bind an instance, three things happen:
+ The support policy for the instance is changed from the SQL Server 2016 support policy to the new Microsoft Modern Software License agreement.
+ The R components associated with that instance will be automatically upgraded with each release, in lock-step with the R Server version that is current under the new Modern Software License terms.
+ The instance can no longer be manually updated, except to add new packages. 

If you later decide that you want to stop upgrading the instance at each release, you must **unbind** the instance and then uninstall Microsoft R Server components as described in this article: [Run Microsoft R Server for Windows](https://msdn.microsoft.com/microsoft-r/rserver-install-windows). When the process is complete, future R Server upgrades will no longer affect the instance.

> [!NOTE]
> The upgrade process is supported only for SQL Server 2016 instances that have been patched with Cumulative Update 3.0.  
> 
> If you are using R Services in SQL Server vNext, you do not need to apply this upgrade. R components are always automatically upgraded at each milestone.

## How to upgrade an instance



> [!IMPORTANT]
> Before upgrading, identify the instance you want to upgrade. It must have SQL Server 2016 with R Services installed.
> 
> Then, download the separate Windows installer for R Server 9.0.1. Download locations are listed here: [How to install R Server 9.0.1 on Windows using the standalone Windows installer](https://msdn.microsoft.com/microsoft-r/rserver-install-windows#howtoinstall)


1. Run the new installer for Microsoft R Server 9.0.1 on the computer that has the instance you want to upgrade.
2. When installation is complete, locate the folder containing the tool, **SqlBindR.exe**. The default location is:
`C:\Program Files\Microsoft\R Server\Setup`
2. Open a command prompt as administrator.
3. Type the following command to view a list of available instances:
   `SqlBindR.exe /list`
4. Run the **SqlBindR.exe** command with the */bind* argument to specify the name of the instance to upgrade. 
   For example, to upgrade just the default instance, type:
    `SqlBindR.exe /bind MSSQL14.MSSQLSERVER`

## How to downgrade an instance of R Services

To revert the status of an instance, you must run the SqlBindR tool to remove the licensing, and then repair or reinstall the instance.

1. Run the **SqlBindR.exe** command with the */unbind* argument, and specify the instance. 
   For example, the following command reverts the default instance to comply with SQL Server licensing and the SQL Server update schedule:
    `SqlBindR.exe /unbind MSSQL14.MSSQLSERVER`
2. Restore the instance to its original status by doing one of the following:
    + Repair the instance. The repair operation will apply updates to all installed features.
    + Uninstall and reinstall, and then apply all service releases. The instance must be restarted.
3. After R Server has been removed, any packages that were installed with the instance will also be removed, and therefore must be reinstalled.

## Requirements
The upgrade is supported only for instances of SQL Server 2016 that meet the following requirements:
+ SQL Server 2016 SP1 or  later
+ Cumulative Update 3.0 (OD) has been applied

Currently upgrade is supported only by using the command-line tool. An interactive interface will be provided in a later release.

## sqlbindr.exe command syntax


### Usage

`sqlbindr [/list] [/bind <SQL_instance_ID>] [/unbind <SQL_instance_ID>]`

### Parameters

|Name|Description|
|------|------|
|*list*| Displays a list of all SQL database instance IDs on the current computer|
|*bind*| Upgrades the specified SQL database instance to the latest version of R Server and ensures the instance automatically gets future upgrades of R Server|
|*unbind*|Uninstalls the latest version of R Server from the specified SQL database instance and prevents future R Server upgrades from affecting the instance|

### Errors

The tool returns the following error messages:

|Error|Resolution|
|------|------|
|An error occurred while binding the instance| The instance could not be bound. Contact support for assistance.|
|The instance is already bound| You ran the *bind* command, but the specified instance is already bound. Choose a different instance.|
|The instance is not bound| You ran the *unbind* command, but the instance you specified is not bound. Choose a different instance that is compatible.|
|Not a valid SQL instance ID| You might have typed the instance name incorrectly. Run the command again with the *list* argument to see the available instance IDs.|
|No instances found| This computer does not have an instance of SQL Server R Services.|
|The instance must have a compatible version of SQL R Services (In-Database) installed.| See the compatibility requirements in this topic for details.|
|An error occurred while unbinding the instance| The instance could not be unbound. Contact support for assistance.|
|An unexpected error has occurred| Other errors. Contact support for assistance.  |
|No SQL instances found| This computer does not have an instance of SQL Server. |


## See Also

[R Server Release Notes](https://msdn.microsoft.com/microsoft-r/notes/r-server-notes)
