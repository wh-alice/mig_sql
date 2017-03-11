---
title: "Known Issues for SQL Server R Services | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-03-10"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 2b37a63a-5ff5-478e-bcc2-d13da3ac241c
caps.latest.revision: 52
ms.author: "jeannt"
manager: "jhubbard"
---
# Known Issues for SQL Server R Services
  This topic describes limitations and issues with [!INCLUDE[rsql_productname](../../advanced-analytics/r-services/includes/rsql-productname-md.md)] and its related components in [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] and [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)].  
  
> [!NOTE]
> Additional issues related to initial setup and configuration are listed here: [ Upgrade and Installation FAQ](../../advanced-analytics/r-services/upgrade-and-installation-faq-sql-server-r-services.md).  
  
## R Services (In-Database)  
 This section lists issues specific to the feature of the database engine that supports R integration.  

### Install latest service release to ensure compatibility with Microsoft R Client

If you install the latest version of Microsoft R Client and use it to run R on SQL Server using a remote compute context, you might get the following error:

*You are running version 9.0.0 of Microsoft R client on your computer, which is incompatible with the Microsoft R server version 8.0.3. Download and install a compatible version.*

Typically, the version of R that is installed with SQL Server R Services is updated when service releases are published. To ensure that you always have the most up-to-date versions of R components, install all service packs. For compatibility with Microsoft R Client 9.0.0, you must install the updates that are described in this [support article](https://support.microsoft.com/kb/3210262). 
  
### New license agreement for R components required for unattended installs  
 If you use the command line to install an instance of SQL Server that has [!INCLUDE[rsql_productname](../../advanced-analytics/r-services/includes/rsql-productname-md.md)] installed, you must edit the command line to use the new license agreement parameter, */IACCEPTROPENLICENSEAGREEMENT*. Failure to use the correct argument can cause [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] setup to fail.  
  
### Warning of incompatible version when connecting to older version of SQL Server  R Services from a client using [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] 

If you installed Microsoft R Server on a client computer using the setup wizard for [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] or the new standalone installer for [Microsoft R Server](https://msdn.microsoft.com/microsoft-r/rserver-install-windows), and run R code in a compute context that uses an earlier version of SQL Server R Services, you might see an error like the following:

*You are running version 9.0.0 of Microsoft R Client on your computer, which is incompatible with the Microsoft R Server version 8.0.3. Download and install a compatible version.*

The **SqlBindR.exe** tool is provided in the Microsoft R Server 9.0 release to support upgrade of SQL Server instances to a compatible 9.0 version. Support for upgrade of R Services instances to 9.0 will be added in SQL Server as part of an upcoming service release. Versions that are candidates for future upgrade include SQL Server 2016 RTM CU3+ and SP1+, and SQL Server vNext CTP 1.1. 

### Setup for SQL Server 2016 service releases might fail to install newer versions of R components

When you install a cumulative update or install a service pack for SQL Server 2016 on a computer that is not connected to the Internet, the setup wizard might fail to display the prompt that lets you update the R components by using downloaded CAB files. This typically occurs when multiple components are installed together with the database engine.
 
As a workaround, you can install the service release by using the command line and specifying the /MRCACHEDIRECTORY argument as shown in this example for CU1: 

`C:\<path to installation media>\SQLServer2016-KB3164674-x64.exe /Action=Patch /IACCEPTROPENLICENSETERMS /MRCACHEDIRECTORY=<path to CU1 CAB files>`

To get the latest CAB files, see [Installing R Components without Internet Access](../../advanced-analytics/r-services/installing-r-components-without-internet-access.md).

### SQLRUserGroup for Launchpad must have an account in the SQL Server instance

 When SQL Server R Services is installed, setup creates a new Windows user group, with the default name **SQLRUserGroup**, which is used by Launchpad to run R jobs. If you need to run R jobs from a remote client using Windows integrated authentication, you must give this Windows user group permission to log into the SQL Server instance where R is enabled.

In an environment where the group **SQLRUserGroup** does not have this permission, you might see the following errors:  
  
-   When trying to run R scripts:  
  
     *Unable to launch runtime for 'R' script. Please check the configuration of the 'R' runtime.*  
  
     *An external script error occurred. Unable to launch the runtime.*  
  
-   Errors generated by the [!INCLUDE[rsql_launchpad](../../advanced-analytics/r-services/includes/rsql-launchpad-md.md)] service:  
  
     *Failed to initialize the launcher RLauncher.dll*  
  
     *No launcher dlls were registered!*  
  
-   Security logs indicate that the account, NT SERVICE\MSSQLLAUNCHPAD was unable to log in.  
 
> [!NOTE]
> If you run R jobs in SQL Server Management Studio using Shared Memory, you might not encounter this limitation until your R job uses an embedded ODBC call. 
> 
> This workaround is not required if you use SQL logins from the remote workstation.

### Launchpad services fails to start if version is different than R version
If you install R Services separately from the database engine and the versions are different, you might see this error in the System Event log: _The SQL Server Launchpad service failed to start due to the following error:  The service did not respond to the start or control request in a timely fashion._

For example, this error might occur if you install the database engine using the release version, apply a patch to upgrade the database engine, and then add R Services using the release version.

To avoid this problem, make sure that all components have the same version number. If you upgrade one component, be sure to apply the same upgrade to all other installed components.

To view a list of the R version numbers required for each release of SQL Server 2016, see [Installing R components without Internet Access](../../advanced-analytics/r-services/installing-r-components-without-internet-access.md).


### Service account for LaunchPad requires permission Replace Process Level Token
 On installation of SQL Server R Services, the Trusted Launchpad is started using the account NT Service\MSSQLLaunchpad, which by default is provisioned with  necessary permissions. However, if you use a different account, or change the privileges associated with this account, the Launchpad might fail to start.
 
 To ensure that the Launchpad service account can log in, give the account the privilege: `Replace Process Level Token`. For more information, see [Replace a process level token](https://technet.microsoft.com/itpro/windows/keep-secure/replace-a-process-level-token).

### Remote compute contexts blocked by firewall in SQL Server instances running on Azure virtual machines  
 If you have installed [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] on a Windows Azure virtual machine, you might not be able to use compute contexts that require use of the virtual machine's workspace. The reason is that, by default, the Azure VM firewall includes a rule that blocks network access for local R user accounts.  
  
 As a workaround, on the Azure VM, open **Windows Firewall with Advanced Security**, select **Outbound Rules**, and disable the following rule: “Block network access for R local user accounts in SQL Server instance MSSQLSERVER”.  
  
### Implied authentication in SQLEXPRESS
When you run R jobs from a remote data science workstation using Windows integrated authentication, SQL Server will use *implied authentication* to generate any local ODBC calls that might be required by the script. However, this feature did not work in the RTM build of SQL Server Express Edition. 

To fix the issue, we recommend that you upgrade to a later service release.

If you cannot upgrade, you can use a SQL login to run remote R jobs that might require embedded ODBC calls. 

### Limitations on processor affinity for R jobs 
 
In the RTM build of SQL Server 2016, you could set processor affinity only for CPUs in the first k-group. For example, if the server is a 2-socket machine with 2 k-groups, only processors from the first k-group will be used for the R processes. The same limitation applies when configuring resource governance for R script jobs.

This issue is fixed in SQL Server 2016 Service Pack 1.

### Changes to column types cannot be performed when reading data in a SQL Server compute context

If your compute context is set to the SQL Server instance, you cannot use the _colClasses_ argument (or other similar arguments) to change the data type of columns in your R code. 

For example, the following statement would result in an error if the column CRSDepTimeStr is not already an integer:

~~~~
data <- RxSqlServerData(sqlQuery = "SELECT CRSDepTimeStr, ArrDelay  FROM AirlineDemoSmall",
                                connectionString = connectionString,
                                colClasses = c(CRSDepTimeStr = "integer"))
~~~~

This issue will be fixed in a later release. 

As a workaround, you can rewrite the SQL query to use CAST or CONVERT and present the data to R using the correct data type. In general, it is better for performance to work with data using SQL rather than changing data in the R code.
  
### Resource governance default values  
In Enterprise Edition, you can use resource pools to manage external script processes. In some  builds, the maximum memory that could be allocated to the R processes was 20%. Therefore, if the server had 32GB of RAM, the R executables (RTerm.exe and BxlServer.exe) could use a maximum 6.4GB in a single request. 

If you encounter resource limitations, check the current default, and if 20% is not enough, see the documentation for [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] on how to change this value.  

### Avoid clearing workspaces when executing R code in a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] compute context  
 If you use the R command to clear your workspace of objects while running R code in a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] compute context, or if you clear the workspace as part of an R script called by using [sp_execute_external_script](../../relational-databases/reference/system-stored-procedures/sp-execute-external-script-transact-sql.md), you might get this error: *workspace object 'revoScriptConnection' not found*

`revoScriptConnection` is an object in the R workspace that contains information about an R session that is called from [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. However, if your R code includes a command to clear the workspace (such as `rm(list=ls()))`, all information about the session and other objects in the R workspace is cleared as well.

As a workaround, avoid indiscriminate clearing of variables and other objects while running R in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Although clearing the workspace is common when working in the R console,  it can have unintended consequences. 

+ To delete specific variables, use the R *remove* function: `remove('name1', 'name2', ...)` 
+ If there are multiple variables to delete, save the names of temporary variables to a list and perform periodic garbage collection. 
   
### Restrictions on data that can be provided as input to an R script  
 You cannot use in an R script the following types of query results:  
  
-   Data from a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] query that references AlwaysEncrypted columns.  
  
-   Data from a [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] query that references masked columns.  
  
     If you need to use masked data in an R script, a possible workaround is to make a copy of the data in a temporary table and use that data instead.  
   
  
## Microsoft R Server (Standalone)  
 This section lists issues specific to the standalone version of Microsoft R Server. 
  
### Multiple R libraries and executables are installed if you install both Standalone and In-Database  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] setup includes the option to install Microsoft R Server (Standalone). The Microsoft R Server (Standalone) option can be used in Enterprise Edition  to install a standalone Windows server that supports R but that does not require interactivity with SQL Server.    

> [!TIP]
> This standalone option is **not** required in order to use R with [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)].
> 
> If you need to set up a data science client computer capable of connecting to either [!INCLUDE[rsql_productname](../../advanced-analytics/r-services/includes/rsql-productname-md.md)] or to the Microsoft R Server (Standalone), we recommend [Microsoft R Client](http://go.microsoft.com/fwlink/?LinkId=799768).  

If you do install both R Services (In-Database) and Microsoft R Server (Standalone) on the same computer, be aware that a separate R instance will be created for each instance of SQL Server that has R enabled, as well as a separate instance of R for Microsoft R Server (Standalone).  For example, if you installed the default instance and a named instance, and the R Server (Standalone), you might have three instances of R on the same computer:  
  
-   **Standalone:** C:\Program Files\Microsoft SQL Server\130\R_SERVER  
  
-   **Default instance:** C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\R_SERVICES  
  
-   **Named instance:** C:\Program Files\Microsoft SQL Server\MSSQL13.<instance_name>\R_SERVICES  
  
> [!NOTE] 
> Use the R libraries and tools that are associated with a database instance only from the context of [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. If you need to run R using other R tools, be sure to reference the R libraries used by R Server (Standalone), which are installed by default in C:\Program Files\Microsoft SQL Server\130\R_SERVER.  

### Performance limits when R Services libraries are called from standalone R tools

The R libraries used by SQL Server R Services are installed by default to C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\R_SERVICES. 
It is *possible* to call the R tools and libraries that are installed for SQL Server R Services from an external R application such as RGui. 

However, if you do so, performance will be limited. For example, even if you have purchased the Enterprise Edition of SQL Server, R will run in single-threaded mode if you run your R code using external tools. Performance will be superior if you run your R code by initiating a SQL Server connection and using [sp_execute_external_script](../../relational-databases/reference/system-stored-procedures/sp-execute-external-script-transact-sql.md), which will call the R Services libraries for you.

+ Avoid calling the R libraries used by SQL Server from external R tools. 
+ If you need to run R on the SQL Server computer by using external tools, you should install a separate instance of R, and then ensure that your R tools point to the new library. 
+ If you are using Enterprise Edition, we recommend that you install Microsoft R Server (Standalone) on the SQL Server computer. Then, from the external tool that you use to run R code, reference the libraries for R Server, which are installed by default in C:\Program Files\Microsoft SQL Server\<version number>\R_SERVER. 

For more information, see [Create a Standalone R Server](../../advanced-analytics/r-services/create-a-standalone-r-server.md).  
  
  
## General R Issues  

 This section lists issues specific to the R connectivity and performance tools.  
  
### Limited support for SQL data types in sp_execute_external_script  

 Not all data types that are supported in SQL can be used in R. As a workaround, consider casting the unsupported data type to a supported data type before passing the data to sp_execute_external_script.  
  
 For more information, see [Working with R Data Types](../../advanced-analytics/r-services/working-with-r-data-types.md).  
  
### Possible string corruption  

 Any round-trip of string data from [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] to R and then to [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] again can result in corruption. This is due to the different encodings used in R and in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], as well as the different collations and languages that are supported in R and [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]. Any string in a non-ASCII encoding can potentially be handled incorrectly.  
  
 When sending string data to R, convert it to an ASCII representation, if possible.  
  
### Only one raw value can be returned from sp_execute_external_script  

 When a binary data type (the R **raw** data type) is returned from R, the value must be the value in the output data frame.  
  
 Support for multiple **raw** outputs will be added in subsequent releases.  
  
 One possible workaround if multiple output sets are desired is to do multiple calls of the stored procedure and send the result sets back to [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] using ODBC.  
  
 Note that you can return parameter values together with the results of the stored procedure simply by adding the OUTPUT keyword. For more information, see [Returning Data by Using OUTPUT Parameters](https://technet.microsoft.com/library/ms187004.aspx).
  
### Loss of precision  

 [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] and R support different data types; therefore, numeric data types can suffer loss of precision during conversion.  
  
 For more information about implicit data type conversion, see [Working with R Data Types](../../advanced-analytics/r-services/working-with-r-data-types.md).  
  
### Variable scoping error "The sample data set for the analysis has no variables" when using the transformFunc parameter  

 You can pass a *transformFunc* argument in a function such as `rxLinmod` or `rxLogit` to transform the data while modelling. However, nested function calls can  lead to scoping errors in the SQL Server compute context, even if the calls work correctly in the local compute context.  
  
 For example, assume that you have defined two functions `f` and `g` in your local global environment, and `g` calls `f`. In distributed or remote calls involving `g`, the call to `g` might fail because `f` cannot be found, even if you have passed both `f` and `g` to the remote call.  
  
 If you encounter this problem, you can work around the issue by embedding the definition of `f` inside your definition of `g`, anywhere before `g` would ordinarily call `f`.  
  
 For example:  
  
```  
f <- function(x) { 2*x + 3 }  
g <- function(y) {   
              a <- 10 * y  
               f(a)  
}  
  
```  
  
 To avoid the error, rewrite as:  
  
```  
g <- function(y){  
              f <- function(x) { 2*x +3}  
              a <- 10 * y  
              f(a)  
}  
  
```  

  
## Revolution R Enterprise and Microsoft R Open 
 
 This section lists issues specific to R connectivity, development, and performance tools provided by Revolution Analytics. These tools were provided in earlier pre-release versions of  [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)]. 

In general, we recommend that you uninstall these previous versions and install the latest version of SQL Server R Services, Microsoft R Server, or Microsoft R Client.
  
### Running side by side versions of Revolution R Enterprise  

 Installing Revolution R Enterprise  with side by side with any version of [!INCLUDE[rsql_productname_md](../../advanced-analytics/r-services/includes/rsql-productname-md.md)] is not supported.  
  
 If you have a license to use a different version of Revolution R Enterprise, you must put it on a separate computer from both the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance and any workstation that you want to use to connect to the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance.  
  
### Limited support for RevoScaleR rxExec  

 As of RC0, the `rxExec` function provided by [!INCLUDE[rsql_rre-short](../../advanced-analytics/r-services/includes/rsql-rre-short-md.md)] can be used only in single-threaded mode.  
  
 Parallelism for `rxExec` across multiple processes will be added in an upcoming release.  
  
### Data import and manipulation using RevoScaleR  

 When reading **varchar** columns from a database, white space will be trimmed. To prevent this, enclose strings in non-white-space characters.  
  
 When using functions such as `rxDataStep` to create database tables with **varchar** columns, the column width is estimated based on a sample of the data. If the width can vary, it may be necessary to pad all strings to a common length.  
  
 Using a transform to change a variable's data type is not supported when repeated calls to `rxImport` or `rxTextToXdf` are used to import and append rows, combining multiple input files into a single .xdf file.  
  
### Increase maximum parameter size to support rxGetVarInfo  

 If you use data sets with extremely large numbers of variables (e.g., over 40,000), you should set the `max-ppsize` flag when starting R in order to use functions such as `rxGetVarInfo`.  The `max-ppsize` flag specifies the maximum size of the pointer protection stack.  
  
 If you are using the R console (for example, in rgui.exe or rterm.exe), you can set the value of max-ppsize to 500000 by typing:  
  
```  
R --max-ppsize=500000  
```  
  
 If you are using the [!INCLUDE[rsql_developr](../../advanced-analytics/r-services/includes/rsql-developr-md.md)] environment, you can set the `max-ppsize` flag by making this call to the RevoIDE executable:  
  
```  
RevoIDE.exe /RCommandLine --max-ppsize=500000  
```  
  
### Issues with rxDTree function  

 The `rxDTree` function does not currently support in-formula transformations. In particular, using the `F()` syntax for creating factors on the fly is not supported. However, numeric data will be automatically binned.  
  
 Ordered factors are treated the same as factors in all RevoScaleR analysis functions except `rxDTree`.  
  
### Using the R Productivity Environment  

Some prerelease versions of [!INCLUDE[rsql_productname](../../advanced-analytics/r-services/includes/rsql-productname-md.md)] included an R development environment for Windows that was created by Revolution Analytics. 

However, for compatibility with  [!INCLUDE[rsql_productname](../../advanced-analytics/r-services/includes/rsql-productname-md.md)], we strongly recommend that you install Microsoft R Client or Microsoft R Server instead of the Revolution Analytics tools. [R Tools for Visual Studio](https://www.visualstudio.com/vs/rtvs/) is another recommended client that supports Microsoft R solutions.
  
### Compatibility issues with SQLite ODBC driver and RevoScaleR  
 Revision 0.92 of the SQLite ODBC driver is incompatible with RevoScaleR; revisions 0.88-0.91 and 0.93 and later are known to be compatible.  
  
## See Also  
[What's New in SQL Server 2016](../../sql-server/what-s-new-in-sql-server-2016.md)
  