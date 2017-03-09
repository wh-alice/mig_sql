---
title: "CREATE DATABASE (SQL Server Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-13"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "DATABASE_TSQL"
  - "DATABASE"
  - "CONTAINMENT_TSQL"
  - "CREATE DATABASE"
  - "CREATE_DATABASE_TSQL"
  - "CONTAINS_FILESTREAM_TSQL"
  - "CONTAINS FILESTREAM"
  - "CONTAINMENT"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "snapshots [SQL Server database snapshots], creating"
  - "databases [SQL Server], creating"
  - "model database [SQL Server], database creation"
  - "mounted drives [SQL Server]"
  - "CREATE DATABASE"
  - "CREATE DATABASE statement"
  - "file creation [SQL Server]"
  - "creating databases"
  - "containment"
  - "filegroups [SQL Server], database creation"
  - "database creation [SQL Server], CREATE DATABASE statement"
  - "moving databases"
  - "attaching databases [SQL Server], CREATE DATABASE...FOR ATTACH"
ms.assetid: 29ddac46-7a0f-4151-bd94-75c1908c89f8
caps.latest.revision: 212
ms.author: "rickbyh"
manager: "jhubbard"
---
# CREATE DATABASE (SQL Server Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Creates a new database and the files used to store the database, a database snapshot, or attaches a database from the detached files of a previously created database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
      Create a database  
CREATE DATABASE database_name   
[ CONTAINMENT = { NONE | PARTIAL } ]  
[ ON   
      [ PRIMARY ] <filespec> [ ,...n ]   
      [ , <filegroup> [ ,...n ] ]   
      [ LOG ON <filespec> [ ,...n ] ]   
]   
[ COLLATE collation_name ]  
[ WITH  <option> [,...n ] ]  
[;]  
  
<option> ::=  
{  
      FILESTREAM ( <filestream_option> [,...n ] )  
    | DEFAULT_FULLTEXT_LANGUAGE = { lcid | language_name | language_alias }  
    | DEFAULT_LANGUAGE = { lcid | language_name | language_alias }  
    | NESTED_TRIGGERS = { OFF | ON }  
    | TRANSFORM_NOISE_WORDS = { OFF | ON}  
    | TWO_DIGIT_YEAR_CUTOFF = <two_digit_year_cutoff>   
    | DB_CHAINING { OFF | ON }  
    | TRUSTWORTHY { OFF | ON }  
}  
  
<filestream_option> ::=  
{  
      NON_TRANSACTED_ACCESS = { OFF | READ_ONLY | FULL }  
    | DIRECTORY_NAME = 'directory_name'   
}  
  
<filespec> ::=   
{  
(  
    NAME = logical_file_name ,  
    FILENAME = { 'os_file_name' | 'filestream_path' }   
    [ , SIZE = size [ KB | MB | GB | TB ] ]   
    [ , MAXSIZE = { max_size [ KB | MB | GB | TB ] | UNLIMITED } ]   
    [ , FILEGROWTH = growth_increment [ KB | MB | GB | TB | % ] ]  
)  
}  
  
<filegroup> ::=   
{  
FILEGROUP filegroup name [ [ CONTAINS FILESTREAM ] [ DEFAULT ] | CONTAINS MEMORY_OPTIMIZED_DATA ]  
    <filespec> [ ,...n ]  
}  
  
<service_broker_option> ::=  
{  
    ENABLE_BROKER  
  | NEW_BROKER  
  | ERROR_BROKER_CONVERSATIONS  
}  
  
```  
  
```  
  
      Attach a database  
CREATE DATABASE database_name   
    ON <filespec> [ ,...n ]   
    FOR { { ATTACH [ WITH <attach_database_option> [ , ...n ] ] }  
        | ATTACH_REBUILD_LOG }  
[;]  
  
<attach_database_option> ::=  
{  
      <service_broker_option>  
    | RESTRICTED_USER  
    | FILESTREAM ( DIRECTORY_NAME = { 'directory_name' | NULL } )  
}  
  
```  
  
```  
  
      Create a database snapshot  
CREATE DATABASE database_snapshot_name   
    ON   
    (  
        NAME = logical_file_name,  
        FILENAME = 'os_file_name'   
    ) [ ,...n ]   
    AS SNAPSHOT OF source_database_name  
[;]  
```  
  
## Arguments  
 *database_name*  
 Is the name of the new database. Database names must be unique within an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and comply with the rules for [identifiers](../../relational-databases/databases/database-identifiers.md).  
  
 *database_name* can be a maximum of 128 characters, unless a logical name is not specified for the log file. If a logical log file name is not specified, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] generates the *logical_file_name* and the *os_file_name* for the log by appending a suffix to *database_name*. This limits *database_name* to 123 characters so that the generated logical file name is no more than 128 characters.  
  
 If data file name is not specified, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] uses *database_name* as both the *logical_file_name* and as the *os_file_name*. The default path is obtained from the registry. The default path can be changed by using the **Server Properties (Database Settings Page)** in [!INCLUDE[ssManStudio](../../advanced-analytics/r-services/includes/ssmanstudio-md.md)]. Changing the default path requires restarting [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 CONTAINMENT = { NONE | PARTIAL }  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Specifies the containment status of the database. NONE = non-contained database. PARTIAL = partially contained database.  
  
 ON  
 Specifies that the disk files used to store the data sections of the database, data files, are explicitly defined. ON is required when followed by a comma-separated list of \<filespec> items that define the data files for the primary filegroup. The list of files in the primary filegroup can be followed by an optional, comma-separated list of \<filegroup> items that define user filegroups and their files.  
  
 PRIMARY  
 Specifies that the associated \<filespec> list defines the primary file. The first file specified in the \<filespec> entry in the primary filegroup becomes the primary file. A database can have only one primary file. For more information, see [Database Files and Filegroups](../../relational-databases/databases/database-files-and-filegroups.md).  
  
 If PRIMARY is not specified, the first file listed in the CREATE DATABASE statement becomes the primary file.  
  
 LOG ON  
 Specifies that the disk files used to store the database log, log files, are explicitly defined. LOG ON is followed by a comma-separated list of \<filespec> items that define the log files. If LOG ON is not specified, one log file is automatically created, which has a size that is 25 percent of the sum of the sizes of all the data files for the database, or 512 KB, whichever is larger. This file is placed in the default log-file location. For information about this location, see [View or Change the Default Locations for Data and Log Files &#40;SQL Server Management Studio&#41;](../../database-engine/configure/windows/view-or-change-the-default-locations-for-data-and-log-files.md).  
  
 LOG ON cannot be specified on a database snapshot.  
  
 COLLATE *collation_name*  
 Specifies the default collation for the database. Collation name can be either a Windows collation name or a SQL collation name. If not specified, the database is assigned the default collation of the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. A collation name cannot be specified on a database snapshot.  
  
 A collation name cannot be specified with the FOR ATTACH or FOR ATTACH_REBUILD_LOG clauses. For information about how to change the collation of an attached database, visit this [Microsoft Web site](http://go.microsoft.com/fwlink/?linkid=16419&kbid=325335).  
  
 For more information about the Windows and SQL collation names, see [COLLATE &#40;Transact-SQL&#41;](../Topic/COLLATE%20\(Transact-SQL\).md).  
  
> [!NOTE]  
>  Contained databases are collated differently than non-contained databases. Please see [Contained Database Collations](../../relational-databases/databases/contained-database-collations.md) for more information.  
  
 WITH \<option>  
 -   **<filestream_options>**  
  
     NON_TRANSACTED_ACCESS = { **OFF** | READ_ONLY | FULL }  
     ||  
    |-|  
    |**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
     Specifies the level of non-transactional FILESTREAM access to the database.  
  
    |Value|Description|  
    |-----------|-----------------|  
    |OFF|Non-transactional access is disabled.|  
    |READONLY|FILESTREAM data in this database can be read by non-transactional processes.|  
    |FULL|Full non-transactional access to FILESTREAM FileTables is enabled.|  
  
     DIRECTORY_NAME = <directory_name>  
     ||  
    |-|  
    |**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
     A windows-compatible directory name. This name should be unique among all the Database_Directory names in the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance. Uniqueness comparison is case-insensitive, regardless of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collation settings. This option should be set before creating a FileTable in this database.  
  
 The following options are allowable only when CONTAINMENT has been set to PARTIAL. If CONTAINMENT is set to NONE, errors will occur.  
  
-   **DEFAULT_FULLTEXT_LANGUAGE = \<lcid> | \<language name> | \<language alias>**  
  
    ||  
    |-|  
    |**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
     See [Configure the default full-text language Server Configuration Option](../../database-engine/configure/windows/configure-the-default-full-text-language-server-configuration-option.md) for a full description of this option.  
  
-   **DEFAULT_LANGUAGE = \<lcid> | \<language name> | \<language alias>**  
  
    ||  
    |-|  
    |**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
     See [Configure the default language Server Configuration Option](../../database-engine/configure/windows/configure-the-default-language-server-configuration-option.md) for a full description of this option.  
  
-   **NESTED_TRIGGERS = { OFF | ON}**  
  
    ||  
    |-|  
    |**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
     See [Configure the nested triggers Server Configuration Option](../../database-engine/configure/windows/configure-the-nested-triggers-server-configuration-option.md) for a full description of this option.  
  
-   **TRANSFORM_NOISE_WORDS = { OFF | ON}**  
  
    ||  
    |-|  
    |**Applies to**: [!INCLUDE[ssSQL11](../../analysis-services/includes/sssql11-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
     See [transform noise words Server Configuration Option](../../database-engine/configure/windows/transform-noise-words-server-configuration-option.md)for a full description of this option.  
  
-   **TWO_DIGIT_YEAR_CUTOFF = { 2049 | \<any year between 1753 and 9999> }**  
  
     Four digits representing a year. 2049 is the default value. See [Configure the two digit year cutoff Server Configuration Option](../../database-engine/configure/windows/configure-the-two-digit-year-cutoff-server-configuration-option.md) for a full description of this option.  
  
-   **DB_CHAINING { OFF | ON }**  
  
     When ON is specified, the database can be the source or target of a cross-database ownership chain.  
  
     When OFF, the database cannot participate in cross-database ownership chaining. The default is OFF.  
  
    > [!IMPORTANT]  
    >  The instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] will recognize this setting when the cross db ownership chaining server option is 0 (OFF). When cross db ownership chaining is 1 (ON), all user databases can participate in cross-database ownership chains, regardless of the value of this option. This option is set by using [sp_configure](../../relational-databases/reference/system-stored-procedures/sp-configure-transact-sql.md).  
  
     To set this option, requires membership in the sysadmin fixed server role. The DB_CHAINING option cannot be set on these system databases: master, model, tempdb.  
  
-   **TRUSTWORTHY { OFF | ON }**  
  
     When ON is specified, database modules (for example, views, user-defined functions, or stored procedures) that use an impersonation context can access resources outside the database.  
  
     When OFF, database modules in an impersonation context cannot access resources outside the database. The default is OFF.  
  
     TRUSTWORTHY is set to OFF whenever the database is attached.  
  
     By default, all system databases except the msdb database have TRUSTWORTHY set to OFF. The value cannot be changed for the model and tempdb databases. We recommend that you never set the TRUSTWORTHY option to ON for the master database.  
  
     To set this option, requires membership in the sysadmin fixed server role.  
  
 FOR ATTACH [ WITH \< attach_database_option > ]  
 Specifies that the database is created by [attaching](../../relational-databases/databases/database-detach-and-attach-sql-server.md) an existing set of operating system files. There must be a \<filespec> entry that specifies the primary file. The only other \<filespec> entries required are those for any files that have a different path from when the database was first created or last attached. A \<filespec> entry must be specified for these files.  
  
 FOR ATTACH requires the following:  
  
-   All data files (MDF and NDF) must be available.  
  
-   If multiple log files exist, they must all be available.  
  
 If a read/write database has a single log file that is currently unavailable, and if the database was shut down with no users or open transactions before the attach operation, FOR ATTACH automatically rebuilds the log file and updates the primary file. In contrast, for a read-only database, the log cannot be rebuilt because the primary file cannot be updated. Therefore, when you attach a read-only database with a log that is unavailable, you must provide the log files, or the files in the FOR ATTACH clause.  
  
> [!NOTE]  
>  A database created by a more recent version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] cannot be attached in earlier versions.  
  
 In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], any full-text files that are part of the database that is being attached will be attached with the database. To specify a new path of the full-text catalog, specify the new location without the full-text operating system file name. For more information, see the Examples section.  
  
 Attaching a database that contains a FILESTREAM option of "Directory name", into a [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] instance will prompt [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] to verify that the Database_Directory name is unique. If it is not, the attach operation fails with the error, "FILESTREAM Database_Directory name \<name> is not unique in this SQL Server instance". To avoid this error, the optional parameter, *directory_name*, should be passed in to this operation.  
  
 FOR ATTACH cannot be specified on a database snapshot.  
  
 FOR ATTACH can specify the RESTRICTED_USER option. RESTRICTED_USER allows for only members of the db_owner fixed database role and dbcreator and sysadmin fixed server roles to connect to the database, but does not limit their number. Attempts by unqualified users are refused.  
  
 If the database uses [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)], use the WITH <service_broker_option> in your FOR ATTACH clause:  
  
 <service_broker_option>  
 Controls [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] message delivery and the [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] identifier for the database. [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] options can only be specified when the FOR ATTACH clause is used.  
  
 ENABLE_BROKER  
 Specifies that [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] is enabled for the specified database. That is, message delivery is started, and is_broker_enabled is set to true in the sys.databases catalog view. The database retains the existing [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] identifier.  
  
 NEW_BROKER  
 Creates a new service_broker_guid value in both sys.databases and the restored database and ends all conversation endpoints with clean up. The broker is enabled, but no message is sent to the remote conversation endpoints. Any route that references the old [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] identifier must be re-created with the new identifier.  
  
 ERROR_BROKER_CONVERSATIONS  
 Ends all conversations with an error stating that the database is attached or restored. The broker is disabled until this operation is completed and then enabled. The database retains the existing [!INCLUDE[ssSB](../../database-engine/configure/windows/includes/sssb-md.md)] identifier.  
  
 When you attach a replicated database that was copied instead of being detached, consider the following:  
  
-   If you attach the database to the same server instance and version as the original database, no additional steps are required.  
  
-   If you attach the database to the same server instance but with an upgraded version, you must execute [sp_vupgrade_replication](../../relational-databases/reference/system-stored-procedures/sp-vupgrade-replication-transact-sql.md) to upgrade replication after the attach operation is complete.  
  
-   If you attach the database to a different server instance, regardless of version, you must execute [sp_removedbreplication](../../relational-databases/reference/system-stored-procedures/sp-removedbreplication-transact-sql.md) to remove replication after the attach operation is complete.  
  
> [!NOTE]  
>  Attach works with the **vardecimal** storage format, but the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] must be upgraded to at least [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)] Service Pack 2. You cannot attach a database using vardecimal storage format to an earlier version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. For more information about the **vardecimal** storage format, see [Data Compression](../../relational-databases/data-compression/data-compression.md).  
  
 When a database is first attached or restored to a new instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], a copy of the database master key (encrypted by the service master key) is not yet stored in the server. You must use the **OPEN MASTER KEY** statement to decrypt the database master key (DMK). Once the DMK has been decrypted, you have the option of enabling automatic decryption in the future by using the **ALTER MASTER KEY REGENERATE** statement to provision the server with a copy of the DMK, encrypted with the service master key (SMK). When a database has been upgraded from an earlier version, the DMK should be regenerated to use the newer AES algorithm. For more information about regenerating the DMK, see [ALTER MASTER KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-master-key-transact-sql.md). The time required to regenerate the DMK key to upgrade to AES depends upon the number of objects protected by the DMK. Regenerating the DMK key to upgrade to AES is only necessary once, and has no impact on future regenerations as part of a key rotation strategy. For information about how to upgrade a database by using attach, see [Upgrade a Database Using Detach and Attach &#40;Transact-SQL&#41;](../../relational-databases/databases/upgrade-a-database-using-detach-and-attach-transact-sql.md).  
  
 **Security Note** We recommend that you do not attach databases from unknown or untrusted sources. Such databases could contain malicious code that might execute unintended [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] code or cause errors by modifying the schema or the physical database structure. Before you use a database from an unknown or untrusted source, run [DBCC CHECKDB](../../t-sql/database-console-commands/dbcc-checkdb-transact-sql.md) on the database on a nonproduction server, and also examine the code, such as stored procedures or other user-defined code, in the database.  
  
> [!NOTE]  
>  The **TRUSTWORTHY** and **DB_CHAINING** options have no affect when attaching a database.  
  
 FOR ATTACH_REBUILD_LOG  
 Specifies that the database is created by attaching an existing set of operating system files. This option is limited to read/write databases. There must be a *\<filespec>* entry specifying the primary file. If one or more transaction log files are missing, the log file is rebuilt. The ATTACH_REBUILD_LOG automatically creates a new, 1 MB log file. This file is placed in the default log-file location. For information about this location, see [View or Change the Default Locations for Data and Log Files &#40;SQL Server Management Studio&#41;](../../database-engine/configure/windows/view-or-change-the-default-locations-for-data-and-log-files.md).  
  
> [!NOTE]  
>  If the log files are available, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] uses those files instead of rebuilding the log files.  
  
 FOR ATTACH_REBUILD_LOG requires the following:  
  
-   A clean shutdown of the database.  
  
-   All data files (MDF and NDF) must be available.  
  
> [!IMPORTANT]  
>  This operation breaks the log backup chain. We recommend that a full database backup be performed after the operation is completed. For more information, see [BACKUP &#40;Transact-SQL&#41;](../../t-sql/statements/backup-transact-sql.md).  
  
 Typically, FOR ATTACH_REBUILD_LOG is used when you copy a read/write database with a large log to another server where the copy will be used mostly, or only, for read operations, and therefore requires less log space than the original database.  
  
 FOR ATTACH_REBUILD_LOG cannot be specified on a database snapshot.  
  
 For more information about attaching and detaching databases, see [Database Detach and Attach &#40;SQL Server&#41;](../../relational-databases/databases/database-detach-and-attach-sql-server.md).  
  
 \<filespec>  
 Controls the file properties.  
  
 NAME *logical_file_name*  
 Specifies the logical name for the file. NAME is required when FILENAME is specified, except when specifying one of the FOR ATTACH clauses. A FILESTREAM filegroup cannot be named PRIMARY.  
  
 *logical_file_name*  
 Is the logical name used in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] when referencing the file. *Logical_file_name* must be unique in the database and comply with the rules for [identifiers](../../relational-databases/databases/database-identifiers.md). The name can be a character or Unicode constant, or a regular or delimited identifier.  
  
 FILENAME { **'***os_file_name***'** | **'***filestream_path***'** }  
 Specifies the operating system (physical) file name.  
  
 **'** *os_file_name* **'**  
 Is the path and file name used by the operating system when you create the file. The file must reside on one of the following devices: the local server on which [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is installed, a Storage Area Network [SAN], or an iSCSI-based network. The specified path must exist before executing the CREATE DATABASE statement. For more information, see "Database Files and Filegroups" in the Remarks section.  
  
 SIZE, MAXSIZE, and FILEGROWTH parameters can be set when a UNC path is specified for the file.  
  
 If the file is on a raw partition, *os_file_name* must specify only the drive letter of an existing raw partition. Only one data file can be created on each raw partition.  
  
 Data files should not be put on compressed file systems unless the files are read-only secondary files, or the database is read-only. Log files should never be put on compressed file systems.  
  
 **'** *filestream_path* **'**  
 For a FILESTREAM filegroup, FILENAME refers to a path where FILESTREAM data will be stored. The path up to the last folder must exist, and the last folder must not exist. For example, if you specify the path C:\MyFiles\MyFilestreamData, C:\MyFiles must exist before you run ALTER DATABASE, but the MyFilestreamData folder must not exist.  
  
 The filegroup and file (`<filespec>`) must be created in the same statement.  
  
 The SIZE and FILEGROWTH properties do not apply to a FILESTREAM filegroup.  
  
 SIZE *size*  
 Specifies the size of the file.  
  
 SIZE cannot be specified when the *os_file_name* is specified as a UNC path. SIZE does not apply to a FILESTREAM filegroup.  
  
 *size*  
 Is the initial size of the file.  
  
 When *size* is not supplied for the primary file, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] uses the size of the primary file in the model database. The default size of model is 8 MB (beginning with [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)]) or 1 MB (for earlier versions). When a secondary data file or log file is specified, but *size* is not specified for the file, the [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] makes the file 8 MB (beginning with [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)]) or 1 MB (for earlier versions). The size specified for the primary file must be at least as large as the primary file of the model database.  
  
 The kilobyte (KB), megabyte (MB), gigabyte (GB), or terabyte (TB) suffixes can be used. The default is MB. Specify a whole number; do not include a decimal. *Size* is an integer value. For values greater than 2147483647, use larger units.  
  
 MAXSIZE *max_size*  
 Specifies the maximum size to which the file can grow. MAXSIZE cannot be specified when the *os_file_name* is specified as a UNC path.  
  
 *max_size*  
 Is the maximum file size. The KB, MB, GB, and TB suffixes can be used. The default is MB. Specify a whole number; do not include a decimal. If *max_size* is not specified, the file grows until the disk is full. *Max_size* is an integer value. For values greater than 2147483647, use larger units.  
  
 UNLIMITED  
 Specifies that the file grows until the disk is full. In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], a log file specified with unlimited growth has a maximum size of 2 TB, and a data file has a maximum size of 16 TB.  
  
> [!NOTE]  
>  There is no maximum size when this option is specified for a FILESTREAM container. It continues to grow until the disk is full.  
  
 FILEGROWTH *growth_increment*  
 Specifies the automatic growth increment of the file. The FILEGROWTH setting for a file cannot exceed the MAXSIZE setting. FILEGROWTH cannot be specified when the *os_file_name* is specified as a UNC path. FILEGROWTH does not apply to a FILESTREAM filegroup.  
  
 *growth_increment*  
 Is the amount of space added to the file every time new space is required.  
  
 The value can be specified in MB, KB, GB, TB, or percent (%). If a number is specified without an MB, KB, or % suffix, the default is MB. When % is specified, the growth increment size is the specified percentage of the size of the file at the time the increment occurs. The size specified is rounded to the nearest 64 KB, and the minimum value is 64 KB.  
  
 A value of 0 indicates that automatic growth is off and no additional space is allowed.  
  
 If FILEGROWTH is not specified, the default values  are:  
  
|Version|Default values|  
|-------------|--------------------|  
|Beginning [!INCLUDE[ssSQL15](../../analysis-services/powershell/includes/sssql15-md.md)]|Data 64 MB. Log files 64 MB.|  
|Beginning [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)]|Data 1 MB. Log files 10%.|  
|Prior to [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)]|Data 10%. Log files 10%.|  
  
 \<filegroup>  
 Controls the filegroup properties. Filegroup cannot be specified on a database snapshot.  
  
 FILEGROUP *filegroup_name*  
 Is the logical name of the filegroup.  
  
 *filegroup_name*  
 *filegroup_name* must be unique in the database and cannot be the system-provided names PRIMARY and PRIMARY_LOG. The name can be a character or Unicode constant, or a regular or delimited identifier. The name must comply with the rules for [identifiers](../../relational-databases/databases/database-identifiers.md).  
  
 CONTAINS FILESTREAM  
 Specifies that the filegroup stores FILESTREAM binary large objects (BLOBs) in the file system.  
  
 CONTAINS MEMORY_OPTIMIZED_DATA  
 ||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL14](../../analysis-services/includes/sssql14-md.md)] through [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)].|  
  
 Specifies that the filegroup stores memory_optimized data in the file system. For more information, see [In-Memory OLTP &#40;In-Memory Optimization&#41;](../../relational-databases/in-memory-oltp/in-memory-oltp-in-memory-optimization.md). Only one MEMORY_OPTIMIZED_DATA filegroup is allowed per database. For code samples that create a filegroup to store memory-optimized data, see [Creating a Memory-Optimized Table and a Natively Compiled Stored Procedure](../../relational-databases/in-memory-oltp/creating-a-memory-optimized-table-and-a-natively-compiled-stored-procedure.md).  
  
 DEFAULT  
 Specifies the named filegroup is the default filegroup in the database.  
  
 *database_snapshot_name*  
 Is the name of the new database snapshot. Database snapshot names must be unique within an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] and comply with the rules for identifiers. *database_snapshot_name* can be a maximum of 128 characters.  
  
 ON **(** NAME **=***logical_file_name***,** FILENAME **='***os_file_name***')** [ **,**... *n* ]  
 For creating a database snapshot, specifies a list of files in the source database. For the snapshot to work, all the data files must be specified individually. However, log files are not allowed for database snapshots. FILESTREAM filegroups are not supported by database snapshots. If a FILESTREAM data file is included in a CREATE DATABASE ON clause, the statement will fail and an error will be raised.  
  
 For descriptions of NAME and FILENAME and their values see the descriptions of the equivalent \<filespec> values.  
  
> [!NOTE]  
>  When you create a database snapshot, the other \<filespec> options and the keyword PRIMARY are disallowed.  
  
 AS SNAPSHOT OF *source_database_name*  
 Specifies that the database being created is a database snapshot of the source database specified by *source_database_name*. The snapshot and source database must be on the same instance.  
  
 For more information, see "Database Snapshots" in the Remarks section.  
  
## Remarks  
 The [master database](../../relational-databases/databases/master-database.md) should be backed up whenever a user database is created, modified, or dropped.  
  
 The CREATE DATABASE statement must run in autocommit mode (the default transaction management mode) and is not allowed in an explicit or implicit transaction.  
  
 You can use one CREATE DATABASE statement to create a database and the files that store the database. [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] implements the CREATE DATABASE statement by using the following steps:  
  
1.  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] uses a copy of the [model database](../../relational-databases/databases/model-database.md) to initialize the database and its metadata.  
  
2.  A service broker GUID is assigned to the database.  
  
3.  The [!INCLUDE[ssDE](../../analysis-services/instances/install/windows/includes/ssde-md.md)] then fills the rest of the database with empty pages, except for pages that have internal data that records how the space is used in the database.  
  
 A maximum of 32,767 databases can be specified on an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 Each database has an owner that can perform special activities in the database. The owner is the user that creates the database. The database owner can be changed by using [sp_changedbowner](../../relational-databases/reference/system-stored-procedures/sp-changedbowner-transact-sql.md).  

Some database features depend on features or capabilities present in the file system for full functionality of a database. Some examples of features that depend on file system feature set include:
- DBCC CHECKDB
- FileStream
- Online backups using VSS and file snapshots
- Database snapshot creation
- Memory Optimized Data filegroup
   
## Database Files and Filegroups  
 Every database has at least two files, a *primary file* and a *transaction log file*, and at least one filegroup. A maximum of 32,767 files and 32,767 filegroups can be specified for each database.  
  
 When you create a database, make the data files as large as possible based on the maximum amount of data you expect in the database  
  
 We recommend that you use a Storage Area Network (SAN), iSCSI-based network, or locally attached disk for the storage of your [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] database files, because this configuration optimizes [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] performance and reliability.  
  
## Database Snapshots  
 You can use the CREATE DATABASE statement to create a read-only, static view, a *database snapshot* of the *source database*. A database snapshot is transactionally consistent with the source database as it existed at the time when the snapshot was created. A source database can have multiple snapshots.  
  
> [!NOTE]  
>  When you create a database snapshot, the CREATE DATABASE statement cannot reference log files, offline files, restoring files, and defunct files.  
  
 If creating a database snapshot fails, the snapshot becomes suspect and must be deleted. For more information, see [DROP DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-database-transact-sql.md).  
  
 Each snapshot persists until it is deleted by using DROP DATABASE.  
  
 For more information, see [Database Snapshots &#40;SQL Server&#41;](../../relational-databases/databases/database-snapshots-sql-server.md).  
  
## Database Options  
 Several database options are automatically set whenever you create a database. For a list of these options, see [ALTER DATABASE SET Options &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql-set-options.md).  
  
## The model Database and Creating New Databases  
 All user-defined objects in the [model database](../../relational-databases/databases/model-database.md) are copied to all newly created databases. You can add any objects, such as tables, views, stored procedures, data types, and so on, to the model database to be included in all newly created databases.  
  
 When a CREATE DATABASE *database_name* statement is specified without additional size parameters, the primary data file is made the same size as the primary file in the model database.  
  
 Unless FOR ATTACH is specified, each new database inherits the database option settings from the model database. For example, the database option auto shrink is set to **true** in model and in any new databases you create. If you change the options in the model database, these new option settings are used in any new databases you create. Changing operations in the model database does not affect existing databases. If FOR ATTACH is specified on the CREATE DATABASE statement, the new database inherits the database option settings of the original database.  
  
## Viewing Database Information  
 You can use catalog views, system functions, and system stored procedures to return information about databases, files, and filegroups. For more information, see [System Views &#40;Transact-SQL&#41;](../Topic/System%20Views%20\(Transact-SQL\).md).  
  
## Permissions  
 Requires CREATE DATABASE, CREATE ANY DATABASE, or ALTER ANY DATABASE permission.  
  
 To maintain control over disk use on an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], permission to create databases is typically limited to a few login accounts.  
  
 The following example provides the permission to create a database to the database user Fay.  
  
```  
USE master;  
GO  
GRANT CREATE DATABASE TO [Fay];  
GO  
```  
  
### Permissions on Data and Log Files  
 In [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], certain permissions are set on the data and log files of each database. The following permissions are set whenever the following operations are applied to a database:  
  
|||  
|-|-|  
|Created|Modified to add a new file|  
|Attached|Backed up|  
|Detached|Restored|  
  
 The permissions prevent the files from being accidentally tampered with if they reside in a directory that has open permissions.  
  
> [!NOTE]  
>  [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssExpressEd2005](../../relational-databases/replication/includes/ssexpressed2005-md.md)] does not set data and log file permissions.  
  
## Examples  
  
### A. Creating a database without specifying files  
 The following example creates the database `mytest` and creates a corresponding primary and transaction log file. Because the statement has no \<filespec> items, the primary database file is the size of the model database primary file. The transaction log is set to the larger of these values: 512KB or 25% the size of the primary data file. Because MAXSIZE is not specified, the files can grow to fill all available disk space. This example also demonstrates how to drop the database named `mytest` if it exists, before creating the `mytest` database.  
  
```  
USE master;  
GO  
CREATE DATABASE mytest;  
GO  
-- Verify the database files and sizes  
SELECT name, size, size*1.0/128 AS [Size in MBs]   
FROM sys.master_files  
WHERE name = N'mytest';  
GO  
  
```  
  
### B. Creating a database that specifies the data and transaction log files  
 The following example creates the database `Sales`. Because the keyword PRIMARY is not used, the first file (`Sales`_`dat`) becomes the primary file. Because neither MB nor KB is specified in the SIZE parameter for the `Sales`\_`dat` file, it uses MB and is allocated in megabytes. The `Sales`\_`log` file is allocated in megabytes because the `MB` suffix is explicitly stated in the `SIZE` parameter.  
  
```  
USE master;  
GO  
CREATE DATABASE Sales  
ON   
( NAME = Sales_dat,  
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\saledat.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = Sales_log,  
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\salelog.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB ) ;  
GO  
```  
  
### C. Creating a database by specifying multiple data and transaction log files  
 The following example creates the database `Archive` that has three `100-MB` data files and two `100-MB` transaction log files. The primary file is the first file in the list and is explicitly specified with the `PRIMARY` keyword. The transaction log files are specified following the `LOG ON` keywords. Note the extensions used for the files in the `FILENAME` option: `.mdf` is used for primary data files, `.ndf` is used for the secondary data files, and `.ldf` is used for transaction log files. This example places the database on the `D:` drive instead of with the `master` database.  
  
```  
USE master;  
GO  
CREATE DATABASE Archive   
ON  
PRIMARY    
    (NAME = Arch1,  
    FILENAME = 'D:\SalesData\archdat1.mdf',  
    SIZE = 100MB,  
    MAXSIZE = 200,  
    FILEGROWTH = 20),  
    ( NAME = Arch2,  
    FILENAME = 'D:\SalesData\archdat2.ndf',  
    SIZE = 100MB,  
    MAXSIZE = 200,  
    FILEGROWTH = 20),  
    ( NAME = Arch3,  
    FILENAME = 'D:\SalesData\archdat3.ndf',  
    SIZE = 100MB,  
    MAXSIZE = 200,  
    FILEGROWTH = 20)  
LOG ON   
   (NAME = Archlog1,  
    FILENAME = 'D:\SalesData\archlog1.ldf',  
    SIZE = 100MB,  
    MAXSIZE = 200,  
    FILEGROWTH = 20),  
   (NAME = Archlog2,  
    FILENAME = 'D:\SalesData\archlog2.ldf',  
    SIZE = 100MB,  
    MAXSIZE = 200,  
    FILEGROWTH = 20) ;  
GO  
```  
  
### D. Creating a database that has filegroups  
 The following example creates the database `Sales` that has the following filegroups:  
  
-   The primary filegroup with the files `Spri1`_`dat` and `Spri2`\_`dat`. The FILEGROWTH increments for these files are specified as `15%`.  
  
-   A filegroup named `SalesGroup1` with the files `SGrp1Fi1` and `SGrp1Fi2`.  
  
-   A filegroup named `SalesGroup2` with the files `SGrp2Fi1` and `SGrp2Fi2`.  
  
 This example places the data and log files on different disks to improve performance.  
  
```  
USE master;  
GO  
CREATE DATABASE Sales  
ON PRIMARY  
( NAME = SPri1_dat,  
    FILENAME = 'D:\SalesData\SPri1dat.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 15% ),  
( NAME = SPri2_dat,  
    FILENAME = 'D:\SalesData\SPri2dt.ndf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 15% ),  
FILEGROUP SalesGroup1  
( NAME = SGrp1Fi1_dat,  
    FILENAME = 'D:\SalesData\SG1Fi1dt.ndf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 ),  
( NAME = SGrp1Fi2_dat,  
    FILENAME = 'D:\SalesData\SG1Fi2dt.ndf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 ),  
FILEGROUP SalesGroup2  
( NAME = SGrp2Fi1_dat,  
    FILENAME = 'D:\SalesData\SG2Fi1dt.ndf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 ),  
( NAME = SGrp2Fi2_dat,  
    FILENAME = 'D:\SalesData\SG2Fi2dt.ndf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = Sales_log,  
    FILENAME = 'E:\SalesLog\salelog.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB ) ;  
GO  
```  
  
### E. Attaching a database  
 The following example detaches the database `Archive` created in example D, and then attaches it by using the `FOR ATTACH` clause. `Archive` was defined to have multiple data and log files. However, because the location of the files has not changed since they were created, only the primary file has to be specified in the `FOR ATTACH` clause. Beginning with [!INCLUDE[ssVersion2005](../../analysis-services/data-mining/includes/ssversion2005-md.md)], any full-text files that are part of the database that is being attached will be attached with the database.  
  
```  
USE master;  
GO  
sp_detach_db Archive;  
GO  
CREATE DATABASE Archive  
      ON (FILENAME = 'D:\SalesData\archdat1.mdf')   
      FOR ATTACH ;  
GO  
```  
  
### F. Creating a database snapshot  
 The following example creates the database snapshot `sales`_`snapshot0600`. Because a database snapshot is read-only, a log file cannot be specified. In conformance with the syntax, every file in the source database is specified, and filegroups are not specified.  
  
 The source database for this example is the `Sales` database created in example D.  
  
```  
USE master;  
GO  
CREATE DATABASE sales_snapshot0600 ON  
    ( NAME = SPri1_dat, FILENAME = 'D:\SalesData\SPri1dat_0600.ss'),  
    ( NAME = SPri2_dat, FILENAME = 'D:\SalesData\SPri2dt_0600.ss'),  
    ( NAME = SGrp1Fi1_dat, FILENAME = 'D:\SalesData\SG1Fi1dt_0600.ss'),  
    ( NAME = SGrp1Fi2_dat, FILENAME = 'D:\SalesData\SG1Fi2dt_0600.ss'),  
    ( NAME = SGrp2Fi1_dat, FILENAME = 'D:\SalesData\SG2Fi1dt_0600.ss'),  
    ( NAME = SGrp2Fi2_dat, FILENAME = 'D:\SalesData\SG2Fi2dt_0600.ss')  
AS SNAPSHOT OF Sales ;  
GO  
```  
  
### G. Creating a database and specifying a collation name and options  
 The following example creates the database `MyOptionsTest`. A collation name is specified and the `TRUSTYWORTHY` and `DB_CHAINING` options are set to `ON`.  
  
```  
USE master;  
GO  
IF DB_ID (N'MyOptionsTest') IS NOT NULL  
DROP DATABASE MyOptionsTest;  
GO  
CREATE DATABASE MyOptionsTest  
COLLATE French_CI_AI  
WITH TRUSTWORTHY ON, DB_CHAINING ON;  
GO  
--Verifying collation and option settings.  
SELECT name, collation_name, is_trustworthy_on, is_db_chaining_on  
FROM sys.databases  
WHERE name = N'MyOptionsTest';  
GO  
  
```  
  
### H. Attaching a full-text catalog that has been moved  
 The following example attaches the full-text catalog `AdvWksFtCat` along with the `AdventureWorks2012` data and log files. In this example, the full-text catalog is moved from its default location to a new location `c:\myFTCatalogs`. The data and log files remain in their default locations.  
  
```  
USE master;  
GO  
--Detach the AdventureWorks2012 database  
sp_detach_db AdventureWorks2012;  
GO  
-- Physically move the full text catalog to the new location.  
--Attach the AdventureWorks2012 database and specify the new location of the full-text catalog.  
CREATE DATABASE AdventureWorks2012 ON   
    (FILENAME = 'c:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Data\AdventureWorks2012_data.mdf'),   
    (FILENAME = 'c:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Data\AdventureWorks2012_log.ldf'),  
    (FILENAME = 'c:\myFTCatalogs\AdvWksFtCat')  
FOR ATTACH;  
GO  
```  
  
### I. Creating a database that specifies a row filegroup and two FILESTREAM filegroups  
 The following example creates the `FileStreamDB` database. The database is created with one row filegroup and two FILESTREAM filegroups. Each filegroup contains one file:  
  
-   `FileStreamDB_data` contains row data. It contains one file, `FileStreamDB_data.mdf` with the default path.  
  
-   `FileStreamPhotos` contains FILESTREAM data. It contains two FILESTREAM data containers, `FSPhotos`, located at `C:\MyFSfolder\Photos` and `FSPhotos2`, located at `D:\MyFSfolder\Photos`. It is marked as the default FILESTREAM filegroup.  
  
-   `FileStreamResumes` contains FILESTREAM data. It contains one FILESTREAM data container, `FSResumes`, located at `C:\MyFSfolder\Resumes`.  
  
```  
USE master;  
GO  
-- Get the SQL Server data path.  
DECLARE @data_path nvarchar(256);  
SET @data_path = (SELECT SUBSTRING(physical_name, 1, CHARINDEX(N'master.mdf', LOWER(physical_name)) - 1)  
                  FROM master.sys.master_files  
                  WHERE database_id = 1 AND file_id = 1);  
  
 -- Execute the CREATE DATABASE statement.   
EXECUTE ('CREATE DATABASE FileStreamDB  
ON PRIMARY   
    (  
    NAME = FileStreamDB_data   
    ,FILENAME = ''' + @data_path + 'FileStreamDB_data.mdf''  
    ,SIZE = 10MB  
    ,MAXSIZE = 50MB  
    ,FILEGROWTH = 15%  
    ),  
FILEGROUP FileStreamPhotos CONTAINS FILESTREAM DEFAULT  
    (  
    NAME = FSPhotos  
    ,FILENAME = ''C:\MyFSfolder\Photos''  
-- SIZE and FILEGROWTH should not be specified here.  
-- If they are specified an error will be raised.  
, MAXSIZE = 5000 MB  
    ),  
    (  
      NAME = FSPhotos2  
      , FILENAME = ''D:\MyFSfolder\Photos''  
      , MAXSIZE = 10000 MB  
     ),  
FILEGROUP FileStreamResumes CONTAINS FILESTREAM  
    (  
    NAME = FileStreamResumes  
    ,FILENAME = ''C:\MyFSfolder\Resumes''  
    )   
LOG ON  
    (  
    NAME = FileStream_log  
    ,FILENAME = ''' + @data_path + 'FileStreamDB_log.ldf''  
    ,SIZE = 5MB  
    ,MAXSIZE = 25MB  
    ,FILEGROWTH = 5MB  
    )'  
);  
GO  
```  
  
### J. Creating a database that has a FILESTREAM filegroup with multiple files  
 The following example creates the `BlobStore1` database. The database is created with one row filegroup and one FILESTREAM filegroup, `FS`. The FILESTREAM filegroup contains two files, `FS1` and `FS2`. Then the database is altered by adding a third file, `FS3`, to the FILESTREAM filegroup.  
  
```tsql  
USE master;  
GO  
  
CREATE DATABASE [BlobStore1]  
CONTAINMENT = NONE  
ON PRIMARY   
(   
    NAME = N'BlobStore1',   
    FILENAME = N'C:\BlobStore\BlobStore1.mdf',  
    SIZE = 100MB,  
    MAXSIZE = UNLIMITED,  
    FILEGROWTH = 1MB  
),   
FILEGROUP [FS] CONTAINS FILESTREAM DEFAULT   
(  
    NAME = N'FS1',  
    FILENAME = N'C:\BlobStore\FS1',  
    MAXSIZE = UNLIMITED  
),   
(  
    NAME = N'FS2',  
    FILENAME = N'C:\BlobStore\FS2',  
    MAXSIZE = 100MB  
)  
LOG ON   
(  
    NAME = N'BlobStore1_log',  
    FILENAME = N'C:\BlobStore\BlobStore1_log.ldf',  
    SIZE = 100MB,  
    MAXSIZE = 1GB,  
    FILEGROWTH = 1MB  
);  
GO  
  
ALTER DATABASE [BlobStore1]  
ADD FILE  
(  
    NAME = N'FS3',  
    FILENAME = N'C:\BlobStore\FS3',  
    MAXSIZE = 100MB  
)  
TO FILEGROUP [FS];  
GO  
```  
  
## See Also  
 [ALTER DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/alter-database-transact-sql.md)   
 [Database Detach and Attach &#40;SQL Server&#41;](../../relational-databases/databases/database-detach-and-attach-sql-server.md)   
 [DROP DATABASE &#40;Transact-SQL&#41;](../../t-sql/statements/drop-database-transact-sql.md)   
 [EVENTDATA &#40;Transact-SQL&#41;](../../t-sql/functions/eventdata-transact-sql.md)   
 [sp_changedbowner &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-changedbowner-transact-sql.md)   
 [sp_detach_db &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-detach-db-transact-sql.md)   
 [sp_removedbreplication &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-removedbreplication-transact-sql.md)   
 [Database Snapshots &#40;SQL Server&#41;](../../relational-databases/databases/database-snapshots-sql-server.md)   
 [Move Database Files](../../relational-databases/databases/move-database-files.md)   
 [Databases](../../relational-databases/databases/databases.md)   
 [Binary Large Object &#40;Blob&#41; Data &#40;SQL Server&#41;](../../relational-databases/blob/binary-large-object-blob-data-sql-server.md)  
  
  