---
title: "Set up SQL Server R Services (In-Database) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-20"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
keywords: 
  - "installing SQL Server R Services"
ms.assetid: 4d773c74-c779-4fc2-b1b6-ec4b4990950d
caps.latest.revision: 31
ms.author: "jeannt"
manager: "jhubbard"
---
# Set up SQL Server R Services (In-Database)
  In [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] and later, you can install all components related to [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)] by using the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] setup wizard.  
 
 
 After setup is complete, some additional steps might be required to enable the R Services feature, to configure accounts, and to give users permissions to specific databases.   
  
If you experience problems with database access after completing setup, or need to uninstall previous versions,  [Upgrade and Installation FAQ &#40;SQL Server R Services&#41;](../../advanced-analytics/r-services/upgrade-and-installation-faq-sql-server-r-services.md).  

> [!NOTE]
> To install R Services (In-Database), the drive where the feature is installed must support creation of short file names using the 8dot3 notation. Otherwise, the processes that launch R from SQL Server might not start. Be sure to enable 8dot3 notation on the volume before installing R Services. This restriction will be removed in a later release.

  
##  <a name="bkmk_installRServicesInDatabase"></a> Step 1: Install R Services (In-Database) on SQL Server 2016 or later  
   
  
1.  Run [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] setup.  
  
    For information about how to do unattended installs, see [Unattended Installs of SQL Server R Services](../../advanced-analytics/r-services/unattended-installs-of-sql-server-r-services.md).  
  
2.  On the **Installation** tab, click **New SQL Server stand-alone installation or add features to an existing installation**.  
  
    > [!NOTE]  
    >  You cannot install [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)] on a failover cluster. However, you can install [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)] on a standalone computer that uses Always On and is part of an availability group. For more information about using R Services in an Always On availability group, see [Always On Availability Groups: Interoperability](../../database-engine/availability-groups/windows/always-on-availability-groups-interoperability-sql-server.md).  
  
3.  On the **Feature Selection** page, select these options:  
  
    -   **Database Engine Services**  
  
         At least one instance of the database engine is required to use [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)]. You can use either a default or named instance.  
  
    -   **R Services (In-Database)**  
  
         This option configures the database services used by R jobs and installs the extensions that support external scripts and processes.  
    > [!NOTE]
    > If you need to run your R code in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)], be sure to install **[!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)]**. 
    > 
    > In contrast, Microsoft R Server (Standalone) is an option that lets you use the Scale R libraries on a Windows computer that isn't running SQL Server. We suggest that you install Microsoft R Server (Standalone) on a laptop or other computer that is used for R development, to create R solutions that later can be deployed to an instance of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] running R Services (In-Database).
 
  
4.  On the page, **Consent to Install Microsoft R Open**, click **Accept**.  
  
     This license agreement is required to download Microsoft R Open, which include a distribution of the open source R base packages and tools, together with enhanced R packages and connectivity providers from Revolution Analytics.  
  
    > [!NOTE]  
    >  If the computer you are using does not have Internet access, you can pause setup at this point to download the installers separately as described here: [Installing R Components without Internet Access](../../advanced-analytics/r-services/installing-r-components-without-internet-access.md)  
  
     Click **Accept**, wait until the **Next** button becomes active, and then click **Next**.  
  
5.  On the **Ready to Install** page, verify that these selections are included, and click **Install**.  
  
     **Features**  
  
     Database Engine Services  
  
     R Services (In-Database)  
  
6.  When installation is complete, restart the computer.   
  
  
##  <a name="bkmk_enableFeature"></a> Step 2: Enable R Services and Verify that Local R Script Execution Works  
  
  
1. Open [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]. If it is not already installed, you can rerun the SQL Server setup wizard to open a download link and install it.  
  
2. Connect to the instance where you installed R Services (In-Database), and run the following command to explicitly enable the R Services feature; otherwise, it will not be possible to invoke R scripts even if the feature has been installed by setup.  
  
   ```    
   Exec sp_configure  'external scripts enabled', 1  
   Reconfigure  with override    
   ```  
  
10. Restart the SQL Server service for the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] instance. This will automatically restart the related [!INCLUDE[rsql_launchpad](../../a9notintoc/includes/rsql-launchpad-md.md)] service as well. You can restart the service using the Services panel in Control Panel, or by using SQL Server Configuration Manager.  
  
9. After the SQL Server service is available, verify  that the R feature is enabled by running the following command and checking that the *run_value* is set to 1:  
  
    ```    
    Exec sp_configure  'external scripts enabled'    
    ```  
   Optionally, open the **Services** panel and verify that the Launchpad service for your instance is running. Each instance has its own Launchpad service.
   
10. Now, you should be able to run simple R scripts like the following in  [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)]:  
  
    ```  
    exec sp_execute_external_script  @language =N'R',  
    @script=N'OutputDataSet<-InputDataSet',    
    @input_data_1 =N'select 1 as hello'  
    with result sets (([hello] int not null));  
    go  
    ```  
  
    **Results**  
  
    *hello*  
    *1*   
  
> [!IMPORTANT]
>  Some additional steps are required if you need to access SQL Server data, or run R commands from a remote data science client. The following steps describe these additional requirements in detail.
 
  
##  <a name="bkmk_configureAccounts"></a> Step 3: Enable Implied Authentication for Launchpad Accounts  
   
  
During setup, 20 new Windows user accounts are created for the purpose of running tasks under the security token of the [!INCLUDE[rsql_launchpad_md](../../a9notintoc/includes/rsql-launchpad-md.md)] service. When a user sends an R script from an external client, [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] will activate an available worker account, map it to the identity of the calling user, and run the R script on behalf of the user. This is a new service of the database engine that supports secure execution of external scripts, called *implied authentication*. 

You can view these accounts in the Windows user group, **SQLRUserGroup**.  If you need to run R scripts from a remote data science client and are using Windows authentication, these worker accounts must be given permission to log into the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] instance on your behalf.  
  
1. In [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], in Object Explorer, expand **Security**, right-click **Logins**, and select **New Login**.  
2. In the **Login - New** dialog box, click **Search**.  
3. Click **Object Types** and select **Groups**. Deselect everything else.  
4. In Enter the object name to select, type *SQLRUserGroup*  and click **Check Names**.  
5. The name of the local group associated with the instance's Launchpad service should resolve to something like *instancename\SQLRUserGroup*. Click **OK**.  
6. By default, the login is assigned to the **public** role and has permission to connect to the database engine. 
7. Click **OK**.  
  
> [!NOTE]
> If you use a SQL login for running R scripts in a SQL Server compute context, this extra step is not required.
  
  
## Step 4: Give Non-Admin Users R Script Permissions  
  
If you installed [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] yourself and are running R scripts in your own instance, you are typically executing scripts as an administrator and thus have implicit permission over various operations and all data in the database, as well as the ability to install new R packages as needed.  
  
However, in an enterprise scenario, most users, including those accessing the database using SQL logins, do not have such elevated permissions. Therefore, for each user that will be running external scripts, you must grant the user permissions to run R scripts in each database where R will be used.   
  
  
```  
USE <database_name>  
GO  
GRANT EXECUTE ANY EXTERNAL SCRIPT  TO [UserName]  
```  

> [!TIP]
> Need help with setup? Not sure you have run all the steps?
>
> Use these custom reports to check the installation status of R Services. For more information, see [Monitor R Services using Custom Reports](../../advanced-analytics/r-services/monitor-r-services-using-custom-reports-in-management-studio.md).    
  
##  <a name="bkmk_Additional"></a> Optional Modifications  
  
This section describes additional changes that you can make in the configuration of the instance, or of your data science client, to support R script execution.
  
### Modify the number of worker accounts used by [!INCLUDE[rsql_launchpad](../../a9notintoc/includes/rsql-launchpad-md.md)]
  
If you think you will use R heavily, or if you expect many users to be running scripts concurrently, you can increase the number of worker accounts that are assigned to the Launchpad service. For more information, see [Modify the User Account Pool for SQL Server R Services](../../advanced-analytics/r-services/modify-the-user-account-pool-for-sql-server-r-services.md).  
  
  
### Give your R users or logins read, write, or DDL permissions as needed in additional databases  
  
While running R scripts, the user account might need to read data from other databases, create new tables to store results, and write data into tables. 
     
For each user who will be executing R scripts, be sure that the user account has **db_datareader**, **db_datawriter**, or **db_ddladmin** permissions on the specific database.   
       
For example, the following [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statement gives the SQL login *MySQLLogin* the rights to run T-SQL queries in the *RSamples* database. To run this statement, the SQL login must already exist in the security context of the server.  
  
```  
USE RSamples  
GO  
EXEC sp_addrolemember 'db_datareader', 'MySQLLogin'  
```  
  
For more information about the permissions included in each role, see [Database-Level Roles](../../relational-databases/security/authentication-access/database-level-roles.md).  
  
  
### Create an ODBC data source for the instance on your data science client  
  
If you create an R solution on a data science client computer and need to connect to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] computer as the compute context, you can use either a SQL login, or integrated Windows authentication.  
  
If you use a SQL login, ensure that the login has appropriate permissions on the database where you will be reading data. You can do this by adding *Connect to* and *SELECT* permissions, or by adding the login to the **db_datareader** role. If you need to create objects, you will need **DDL_admin** rights.  To save data to tables, add the login to the **db_datawriter** role.  
  
If you use Windows authentication, you must configure an ODBC data source on the data science client that specifies that instance name and other connection information.  
  
For more information, see [Using the ODBC Data Source Administrator](http://windows.microsoft.com/windows/using-odbc-data-source-administrator).  
  
### Optimize the Server for R  

The default settings for [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] setup are intended to optimize the balance of the server for a variety of services supported by the database engine, which might include ETL processes, reporting, auditing, and applications that use [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] data. Therefore, under the default settings you  might find resources for R operations restricted or throttled, particularly in memory-intensive operations.  
  
 To ensure that R tasks are prioritized and resourced appropriately, we recommend that you use Resource Governor to configure an external resource pool specific for R operation. You might also wish to change the amount of memory allocated to the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database engine, or increase the number of accounts running under the [!INCLUDE[rsql_launchpad](../../a9notintoc/includes/rsql-launchpad-md.md)] service.  
  
-   Configure a resource pool for managing external resources  
  
     [CREATE EXTERNAL RESOURCE POOL &#40;Transact-SQL&#41;](../../t-sql/statements/create-external-resource-pool-transact-sql.md)  
  
-   Change the amount of memory reserved for the database engine  
  
     [Server Memory Server Configuration Options](../../database-engine/configure/windows/server-memory-server-configuration-options.md)  
  
-   Change the number of R accounts that can be started by [!INCLUDE[rsql_launchpad](../../a9notintoc/includes/rsql-launchpad-md.md)]  
  
     [Modify the User Account Pool for SQL Server R Services](../../advanced-analytics/r-services/modify-the-user-account-pool-for-sql-server-r-services.md)  
  
### Get the R Source Code (Optional)  

[!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)] includes a distribution of the open source R base packages.  
  
Optionally, click one of these links to immediately begin downloading the modified GPL/LGPL source code. The source code is made available in compliance with the GNU General Public License, but is not required to install or use [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)].  
  
-   Compatible with RC2: Download archive [rre-gpl-src.8.0.2.tar.gz](http://go.microsoft.com/fwlink/?LinkId=786770) 
  
-   Compatible with RC3: Download archive [rre-gpl-src.8.0.3.tar.gz](http://go.microsoft.com/fwlink/?LinkId=786771) 

-   Compatible with RTM: Download archive [rre-gpl-src.8.0.3.tar.gz](http://go.microsoft.com/fwlink/?LinkID=786771)
  
## Troubleshooting  
 Run into trouble? See this list of common issues when installing pre-release versions of [!INCLUDE[rsql_productname](../../a9notintoc/includes/rsql-productname-md.md)]  
  
 [Upgrade and Installation FAQ &#40;SQL Server R Services&#41;](../../advanced-analytics/r-services/upgrade-and-installation-faq-sql-server-r-services.md)  
  
## See Also  
 [Set Up  a Data Science Client](../../advanced-analytics/r-services/set-up-a-data-science-client.md)   
 [Create a Standalone R Server](../../advanced-analytics/r-services/create-a-standalone-r-server.md)  
  
  