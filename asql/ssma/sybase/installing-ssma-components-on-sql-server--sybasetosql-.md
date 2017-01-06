---
title: "Installing SSMA Components on SQL Server (SybaseToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
ms.assetid: 5ad9e12c-2cdb-4dd2-8703-05a23242d19d
caps.latest.revision: 10
ms.author: "lonnyb"
manager: "lonnyb"
---
# Installing SSMA Components on SQL Server (SybaseToSQL)
In addition to installing SSMA, for using Server side data migration, you must also install components on the computer that is running SQL Server. These components include the SSMA extension pack, which supports data migration, and Sybase providers to enable server-to-server connectivity.  
  
## SSMA for Sybase Extension Pack  
The SSMA extension pack adds the databases, **sysdb** and **ssmatesterdb_syb**, to the specified instance of SQL Server. The **sysdb** database contains the tables and stored procedures that are required to migrate data. The **ssmatester_syb** database contains the schema **ssma_sybase_utilities**, in which the objects (Tables,Triggers,Views) used by the SSMA tester component are created.  
  
Also, when you migrate data to SQL Server, SSMA creates SQL Server Agent jobs when server side data migration engine is used for migrating the data.  
  
### Installing the Extension Pack  
You can install the extension pack any time before you migrate data to SQL Server.  
  
> [!IMPORTANT]  
> To install the extension pack, you must be a member of the sysadmin server role on the instance of SQL Server.  
  
**To install the extension pack**  
  
1.  Copy SSMA for Sybase Extension Pack.*n*.Install.exe, where *n* is the build number, to the computer that is running SQL Server.  
  
2.  Double-click SSMA for Sybase Extension Pack.*n*.Install.exe.  
  
3.  On the Welcome page, click **Next**.  
  
4.  On the End User License Agreement page, read the license agreement. If you agree, select the **I accept the terms in the license agreement** check box, and then click **Next**.  
  
5.  On the Choose Setup Type page, click **Typical**.  
  
6.  On the Ready to Install page, click **Install**.  
  
7.  On the Completed the First Step of Installation page, click **Next**.  
  
    A new dialog box will appear, in which you select the instance of SQL Server for the extension pack installation.  
  
8.  Select the instance of SQL Server where you will be migrating ASE databases, and then click **Next**.  
  
    The default instance has the same name as the computer. Named instances will be followed by a backslash and the instance name.  
  
9. On the Connection Parameters page, select the authentication method and then click **Next**.  
  
    Windows Authentication will use your Windows credentials to try to log on to the instance of SQL Server. If you select SQL Server Authentication, you must enter a SQL Server login name and password.  
  
10. On the Manage Server page, select **Install Utilities Database** *n*, where *n* is the version number, and then click **Next**.  
  
    The **sysdb** database is created and the stored procedures are created in that database.  
  
    If **Install Tester Database** option is checked the tester **ssmatesterdb_syb** database will be created.  
  
11. To install the utilities to another instance of SQL Server, select **Return to instances**, and then click **Next**. Or, to exit the wizard, click **Exit**.  
  
### SQL Server Database Objects  
After you install the extension pack, you will a see a **ssma_syb.bcp_migration_packages** table in the **sysdb** database. You will also see the following stored procedures:  
  
-   **bcp_clean_migration_data**  
  
-   **bcp_ensure_message_table**  
  
-   **bcp_insert_new_message**  
  
-   **bcp_post_process**  
  
-   **bcp_read_new_migration_messages**  
  
-   **bcp_save_migration_package**  
  
-   **bcp_smart_truncate**  
  
-   **bcp_start_migration_process**  
  
-   **get_jobstep_info**  
  
-   **stop_agent_process**  
  
Every time that you migrate data to SQL Server, SSMA creates a SQL Server Agent job. These jobs are named **ssma_syb data migration package {GUID}**, and are visible in the SQL Server Agent node of SQL Server Management Studio in the Jobs folder.  
  
## Sybase Providers  
When you migrate data from ASE to SQL Server/SQL Azure, the data migrates directly between ASE and SQL Server/SQL Azure. It does not go through SSMA because this would slow down the data migration.  
  
### Installing the Sybase Providers  
The following instructions provide the basic installation steps for installing Sybase providers. The exact instructions will differ depending on the version of the Sybase Setup program.  
  
> [!IMPORTANT]  
> Before you run the Setup program, verify that you are not violating your licensing agreements.  
  
1.  Run the Sybase ASE Setup program.  
  
2.  Select custom setup.  
  
3.  On the feature selection page, select the ODBC, OLE DB and ADO.NET data providers.  
  
4.  Verify the selected features, and then click **Finish** to install the data provider.  
  
## See Also  
[Installing SSMA  for Sybase Client &#40;SybaseToSQL&#41;](../../ssma/sybase/installing-ssma--for-sybase-client--sybasetosql-.md)  
[Migrating Sybase ASE Databases to SQL Server - Azure SQL DB &#40;SybaseToSQL&#41;](../../ssma/sybase/migrating-sybase-ase-databases-to-sql-server---azure-sql-db--sybasetosql-.md)  
  
