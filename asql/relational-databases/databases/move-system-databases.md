---
title: "Move System Databases | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-26"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "moving system databases"
  - "disaster recovery [SQL Server], moving database files"
  - "database files [SQL Server], moving"
  - "data files [SQL Server], moving"
  - "tempdb database [SQL Server], moving"
  - "system databases [SQL Server], moving"
  - "scheduled disk maintenace [SQL Server]"
  - "moving databases"
  - "msdb database [SQL Server], moving"
  - "moving database files"
  - "relocating database files"
  - "planned database relocations [SQL Server]"
  - "master database [SQL Server], moving"
  - "model database [SQL Server], moving"
  - "Resource database [SQL Server]"
  - "databases [SQL Server], moving"
ms.assetid: 72bb62ee-9602-4f71-be51-c466c1670878
caps.latest.revision: 62
ms.author: "rickbyh"
manager: "jhubbard"
---
# Move System Databases
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This topic describes how to move system databases in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Moving system databases may be useful in the following situations:  
  
-   Failure recovery. For example, the database is in suspect mode or has shut down because of a hardware failure.  
  
-   Planned relocation.  
  
-   Relocation for scheduled disk maintenance.  
  
 The following procedures apply to moving database files within the same instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. To move a database to another instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or to another server, use the [backup and restore](../../relational-databases/backup-restore/back-up-and-restore-of-sql-server-databases.md) operation.  

 The procedures in this topic require the logical name of the database files. To obtain the name, query the name column in the [sys.master_files](../../relational-databases/reference/system-catalog-views/sys.master-files-transact-sql.md) catalog view.  
  
> [!IMPORTANT]  
>  If you move a system database and later rebuild the master database, you must move the system database again because the rebuild operation installs all system databases to their default location.  

> [!IMPORTANT]  
>  After moving files, the [!INCLUDE[ssNoVersion_md](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] service account must have permission to access the files in new file folder location.
    
  
##  <a name="Planned"></a> Planned Relocation and Scheduled Disk Maintenance Procedure  
 To move a system database data or log file as part of a planned relocation or scheduled maintenance operation, follow these steps. This procedure applies to all system databases except the master and Resource databases.  
  
1.  For each file to be moved, run the following statement.  
  
    ```  
    ALTER DATABASE database_name MODIFY FILE ( NAME = logical_name , FILENAME = 'new_path\os_file_name' )  
    ```  
  
2.  Stop the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or shut down the system to perform maintenance. For more information, see [Start, Stop, Pause, Resume, Restart the Database Engine, SQL Server Agent, or SQL Server Browser Service](../../database-engine/configure/windows/start-stop-pause-resume-restart-sql-server-services.md).  
  
3.  Move the file or files to the new location.  

4.  Restart the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] or the server. For more information, see [Start, Stop, Pause, Resume, Restart the Database Engine, SQL Server Agent, or SQL Server Browser Service](../../database-engine/configure/windows/start-stop-pause-resume-restart-sql-server-services.md).  
  
5.  Verify the file change by running the following query.  
  
    ```  
    SELECT name, physical_name AS CurrentLocation, state_desc  
    FROM sys.master_files  
    WHERE database_id = DB_ID(N'<database_name>');  
    ```  
  
 If the msdb database is moved and the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is configured for [Database Mail](../../relational-databases/database-mail/database-mail.md), complete these additional steps.  
  
1.  Verify that [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] is enabled for the msdb database by running the following query.  
  
    ```  
    SELECT is_broker_enabled   
    FROM sys.databases  
    WHERE name = N'msdb';  
    ```  
  
     For more information about enabling [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)], see [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md).  
  
2.  Verify that Database Mail is working by sending a test mail.  
  
##  <a name="Failure"></a> Failure Recovery Procedure  
 If a file must be moved because of a hardware failure, follow these steps to relocate the file to a new location. This procedure applies to all system databases except the master and Resource databases.  
  
> [!IMPORTANT]  
>  If the database cannot be started, that is it is in suspect mode or in an unrecovered state, only members of the sysadmin fixed role can move the file.  
  
1.  Stop the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] if it is started.  
  
2.  Start the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] in master-only recovery mode by entering one of the following commands at the command prompt. The parameters specified in these commands are case sensitive. The commands fail when the parameters are not specified as shown.  
  
    -   For the default (MSSQLSERVER) instance, run the following command:  
  
        ```  
        NET START MSSQLSERVER /f /T3608
        ```  
  
    -   For a named instance, run the following command:  
  
        ```  
        NET START MSSQL$instancename /f /T3608
        ```  
  
     For more information, see [Start, Stop, Pause, Resume, Restart the Database Engine, SQL Server Agent, or SQL Server Browser Service](../../database-engine/configure/windows/start-stop-pause-resume-restart-sql-server-services.md).  
  
3.  For each file to be moved, use **sqlcmd** commands or [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] to run the following statement.  
  
    ```  
    ALTER DATABASE database_name MODIFY FILE( NAME = logical_name , FILENAME = 'new_path\os_file_name' )  
    ```  
  
     For more information about using the **sqlcmd** utility, see [Use the sqlcmd Utility](../../relational-databases/scripting/sqlcmd-use-the-utility.md).  
  
4.  Exit the **sqlcmd** utility or [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
5.  Stop the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For example, run `NET STOP MSSQLSERVER`.  
  
6.  Move the file or files to the new location.  
  
7.  Restart the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For example, run `NET START MSSQLSERVER`.  
  
8.  Verify the file change by running the following query.  
  
    ```  
    SELECT name, physical_name AS CurrentLocation, state_desc  
    FROM sys.master_files  
    WHERE database_id = DB_ID(N'<database_name>');  
    ```  
  
##  <a name="master"></a> Moving the master Database  
 To move the master database, follow these steps.  
  
1.  From the **Start** menu, point to **All Programs**, point to **Microsoft SQL Server**, point to **Configuration Tools**, and then click **SQL Server Configuration Manager**.  
  
2.  In the **SQL Server Services** node, right-click the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] (for example, **SQL Server (MSSQLSERVER)**) and choose **Properties**.  
  
3.  In the **SQL Server (***instance_name***) Properties** dialog box, click the **Startup Parameters** tab.  
  
4.  In the **Existing parameters** box, select the –d parameter to move the master data file. Click **Update** to save the change.  
  
     In the **Specify a startup parameter** box, change the parameter to the new path of the master database.  
  
5.  In the **Existing parameters** box, select the –l parameter to move the master log file. Click **Update** to save the change.  
  
     In the **Specify a startup parameter** box, change the parameter to the new path of the master database.  
  
     The parameter value for the data file must follow the `-d` parameter and the value for the log file must follow the `-l` parameter. The following example shows the parameter values for the default location of the master data file.  
  
     `-dC:\Program Files\Microsoft SQL Server\MSSQL<version>.MSSQLSERVER\MSSQL\DATA\master.mdf`  
  
     `-lC:\Program Files\Microsoft SQL Server\MSSQL<version>.MSSQLSERVER\MSSQL\DATA\mastlog.ldf`  
  
     If the planned relocation for the master data file is `E:\SQLData`, the parameter values would be changed as follows:  
  
     `-dE:\SQLData\master.mdf`  
  
     `-lE:\SQLData\mastlog.ldf`  
  
6.  Stop the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] by right-clicking the instance name and choosing **Stop**.  
  
7.  Move the master.mdf and mastlog.ldf files to the new location.  
  
8.  Restart the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
9. Verify the file change for the master database by running the following query.  
  
    ```  
    SELECT name, physical_name AS CurrentLocation, state_desc  
    FROM sys.master_files  
    WHERE database_id = DB_ID('master');  
    GO  
    ```  

10. At this point SQL Server should run normally. However Microsoft recommends also adjusting the registry entry at `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\instance_ID\Setup`, where *instance_ID* is like `MSSQL13.MSSQLSERVER`. In that hive, change the `SQLDataRoot` value to the new path. Failure to update the registry can cause patching and upgrading to fail.

  
##  <a name="Resource"></a> Moving the Resource Database  
 The location of the Resource database is \<*drive*>:\Program Files\Microsoft SQL Server\MSSQL\<version>.\<*instance_name*>\MSSQL\Binn\\. The database cannot be moved.  
  
##  <a name="Follow"></a> Follow-up: After Moving All System Databases  
 If you have moved all of the system databases to a new drive or volume or to another server with a different drive letter, make the following updates.  
  
-   Change the SQL Server Agent log path. If you do not update this path, SQL Server Agent will fail to start.  
  
-   Change the database default location. Creating a new database may fail if the drive letter and path specified as the default location do not exist.  
  
#### Change the SQL Server Agent Log Path  
  
1.  From SQL Server Management Studio, in Object Explorer, expand **SQL Server Agent**.  
  
2.  Right-click **Error Logs** and click **Configure**.  
  
3.  In the **Configure SQL Server Agent Error Logs** dialog box, specify the new location of the SQLAGENT.OUT file. The default location is C:\Program Files\Microsoft SQL Server\MSSQL\<version>.<instance_name>\MSSQL\Log\\.  
  
#### Change the database default location  
  
1.  From SQL Server Management Studio, in Object Explorer, right-click the SQL Server server and click **Properties**.  
  
2.  In the **Server Properties** dialog box, select **Database Settings**.  
  
3.  Under **Database Default Locations**, browse to the new location for both the data and log files.  
  
4.  Stop and start the SQL Server service to complete the change.  
  
##  <a name="Examples"></a> Examples  
  
### A. Moving the tempdb database  
 The following example moves the `tempdb` data and log files to a new location as part of a planned relocation.  
  
> [!NOTE]  
>  Because tempdb is re-created each time the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is started, you do not have to physically move the data and log files. The files are created in the new location when the service is restarted in step 3. Until the service is restarted, tempdb continues to use the data and log files in existing location.  
  
1.  Determine the logical file names of the `tempdb` database and their current location on the disk.  
  
    ```  
    SELECT name, physical_name AS CurrentLocation  
    FROM sys.master_files  
    WHERE database_id = DB_ID(N'tempdb');  
    GO  
    ```  
  
2.  Change the location of each file by using `ALTER DATABASE`.  
  
    ```  
    USE master;  
    GO  
    ALTER DATABASE tempdb   
    MODIFY FILE (NAME = tempdev, FILENAME = 'E:\SQLData\tempdb.mdf');  
    GO  
    ALTER DATABASE tempdb   
    MODIFY FILE (NAME = templog, FILENAME = 'F:\SQLLog\templog.ldf');  
    GO  
    ```  
  
3.  Stop and restart the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
4.  Verify the file change.  
  
    ```  
    SELECT name, physical_name AS CurrentLocation, state_desc  
    FROM sys.master_files  
    WHERE database_id = DB_ID(N'tempdb');  
    ```  
  
5.  Delete the `tempdb.mdf` and `templog.ldf` files from the original location.  
  
## See Also  
 [Resource Database](../../relational-databases/databases/resource-database.md)   
 [tempdb Database](../../relational-databases/databases/tempdb-database.md)   
 [master Database](../../relational-databases/databases/master-database.md)   
 [msdb Database](../../relational-databases/databases/msdb-database.md)   
 [model Database](../../relational-databases/databases/model-database.md)   
 [Move User Databases](../../relational-databases/databases/move-user-databases.md)   
 [Move Database Files](../../relational-databases/databases/move-database-files.md)   
 [Start, Stop, Pause, Resume, Restart the Database Engine, SQL Server Agent, or SQL Server Browser Service](../../database-engine/configure/windows/start-stop-pause-resume-restart-sql-server-services.md)   
 [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md)   
 [Rebuild System Databases](../../relational-databases/databases/rebuild-system-databases.md)  
  
  