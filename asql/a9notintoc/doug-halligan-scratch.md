---
title: "Doug Halligan scratch | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server 2014"
  - "SQL Server 2016 Preview"
dev_langs: 
  - "TSQL"
ms.assetid: f4b01ed7-d875-45fb-99fe-2571ead0d54f
caps.latest.revision: 4
ms.author: "douglasl"
manager: "jhubbard"
---
# Doug Halligan scratch
From pre-CTP2 spec as of Fri Apr 10 2015.  
  
## ALTER DATABASE  
**<remote_data_archive_option> ::=** {  
    REMOTE_DATA_ARCHIVE =  
    {  
          OFF   
        | ON ( SERVER = <server_credential_name>   
                [, <remote_data_archive_options_list> [ ...n ] ])   
        | ( <remote_data_archive_options_list> )  
    }   
}  
**<remote_data_archive_options_list> ::=** {  
    {   
          MIGRATION_STATE = { ON | OFF }  
    }  
}  
  
**<remote_data_archive_option> ::=**  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)].|  
  
Enables the database for stretching and optionally turns data migration on or off. For more info, see [Stretch Database](../sql-server/install/stretch-database.md).  
  
REMOTE_DATA_ARCHIVE **=** { OFF | ON ( SERVER = <server_credential_name>, <remote_data_archive_options_list> [ ...n ] ]) | ( <remote_data_archive_options_list> ) }  
OFF  
Disables stretching for the database. This is the default value if you don’t specify `REMOTE_DATA_ARCHIVE = ON`.  
  
ON  
Enables the database for stretching.  
  
SERVER = <server_credential_name>, [ <remote_data_archive_options_list> [ ...n ] ]  
Specifies the credential that the local instance of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] uses to connect to the Azure server. Make sure the credential exists before you run this command. To create the credential, specify the credential in the following format:  
  
-   **Credential Name**.The address of the Azure server.  
  
-   **Identity**. The sysadmin user name for the Azure server.  
  
-   **Secret**. The sysadmin password for the Azure server.  
  
MIGRATION_STATE **=** { ON | OFF }  
Specifies the data migration state for all stretched tables in the database.  
  
ON  
Data migration is turned on for all stretched tables in the database. This is the default value if you don’t specify `MIGRATION_STATE = OFF`.  
  
OFF  
Data migration is turned off for all stretched tables in the database.  
  
## CREATE TABLE  
[ REMOTE_DATA_ARCHIVE **=** { OFF | ON [ ( <stretch_options> [,...n] ) ] } [ WHERE <stretch_predicate> ]  
  
**<stretch_options> ::=** {  
      MIGRATION_STATE = { ON | OFF }  
    }  
  
REMOTE_DATA_ARCHIVE **=** { OFF | ON [ ( <stretch_options> [,...n] ) ] }  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)].|  
  
Enables the database for stretching and optionally turns data migration on or off. For more info, see [Stretch Database](../sql-server/install/stretch-database.md).  
  
OFF  
Disables stretching for the table.  
  
ON  
Enables the table for stretching. This is the default value if you don’t specify `REMOTE_DATA_ARCHIVE = OFF`.  
  
MIGRATION_STATE **=** { ON | OFF }  
Specifies the data migration state for the stretched table.  
  
ON  
Data migration is turned on for the stretched table. This is the default value if you don’t specify `MIGRATION_STATE = OFF`.  
  
OFF  
Data migration is turned off for the stretched table If you specify this value, no rows in the table are migrated, even if the MIGRATION_STATE of the database is ON.  
  
STAGING_MODE **=** { ON | OFF }  
Specifies whether migrated rows are deleted from the local table.  
  
ON  
Migrated rows are not deleted from the local table.  
  
OFF  
Migrated rows are deleted from the local table. This is the default value if you don’t specify `STAGING_MODE = OFF`.  
  
WHERE <stretch_predicate>  
Specifies which rows in the table to migrate to Azure. If you omit this clause, all rows in the table are migrated.  
  
## ALTER TABLE  
**<stretch_configuration> ::=** {  
        { ENABLE | DISABLE } REMOTE_DATA_ARCHIVE   
            [ WITH ( <stretch_options> [ ,...n ] ) ]  
            [ WHERE <stretch_predicate> ]  
    }  
**<stretch_options> ::=** {  
        MIGRATION_STATE = { ON | OFF }   
      | MIGRATION_DIRECTION = { TO_REMOTE | TO_LOCAL }  
      | STAGING_MODE = { ON | OFF }  
    }  
  
{ ENABLE | DISABLE } REMOTE_DATA_ARCHIVE  
||  
|-|  
|**Applies to**: [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)] through [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)].|  
  
Enables or disables the table for stretching and specifies stretching options. For more info, see [Stretch Database](../sql-server/install/stretch-database.md).  
  
ENABLE  
Enables the table for stretching.  
  
DISABLE  
Disables stretching for the table.  
  
MIGRATION_STATE **=** { ON | OFF }  
Specifies the data migration state for the stretched table.  
  
ON  
Data migration is turned on for the stretched table. This is the default value if you don’t specify `MIGRATION_STATE = OFF`.  
  
OFF  
Data migration is turned off for the stretched table If you specify this value, no rows in the table are migrated, even if the MIGRATION_STATE of the database is ON.  
  
MIGRATION_DIRECTION = { TO_REMOTE | TO_LOCAL }  
Specifies the direction for data migration.  
  
TO_REMOTE  
Data is migrated from the local server to Azure.  
  
TO_LOCAL  
Data is migrated from Azure back to the local server.  
  
STAGING_MODE **=** { ON | OFF }  
Specifies whether migrated rows are deleted from the local table.  
  
ON  
Migrated rows are not deleted from the local table.  
  
OFF  
Migrated rows are deleted from the local table. This is the default value if you don’t specify `STAGING_MODE = OFF`.  
  
WHERE <stretch_predicate>  
Specifies which rows in the table to migrate to Azure. If you omit this clause, all rows in the table are migrated.  
  
