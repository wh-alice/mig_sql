---
title: "Move a FILESTREAM-Enabled Database | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-blob"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "FILESTREAM [SQL Server], moving a FILESTREAM-enabled database"
ms.assetid: dd4d270d-9283-431a-aa6b-e571fced1893
caps.latest.revision: 11
ms.author: "jhubbard"
manager: "jhubbard"
---
# Move a FILESTREAM-Enabled Database
  This topic shows how to move a FILESTREAM-enabled database.  
  
> [!NOTE]  
>  The examples in this topic require the Archive database that is created in [Create a FILESTREAM-Enabled Database](../../relational-databases/blob/create-a-filestream-enabled-database.md).  
  
### To move a FILESTREAM-enabled database  
  
1.  In [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], click **New Query** to open the Query Editor.  
  
2.  Copy the following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] script into the Query Editor, and then click **Execute**. This script displays the location of the physical database files that the FILESTREAM database uses.  
  
    ```tsql  
    USE Archive  
    GO  
    SELECT type_desc, name, physical_name from sys.database_files  
    ```  
  
3.  Copy the following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] script into the Query Editor, and then click **Execute**. This code takes the `Archive` database offline.  
  
    ```tsql  
    USE master  
    EXEC sp_detach_db Archive  
    GO  
    ```  
  
4.  Create the folder `C:\moved_location`, and then move the files and folders that are listed in step 2 into it.  
  
5.  Copy the following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] script into the Query Editor, and then click **Execute**. This script sets the `Archive` database online.  
  
    ```tsql  
    CREATE DATABASE Archive ON  
    PRIMARY ( NAME = Arch1,  
        FILENAME = 'c:\moved_location\archdat1.mdf'),  
    FILEGROUP FileStreamGroup1 CONTAINS FILESTREAM( NAME = Arch3,  
        FILENAME = 'c:\moved_location\filestream1')  
    LOG ON  ( NAME = Archlog1,  
        FILENAME = 'c:\moved_location\archlog1.ldf')  
    FOR ATTACH  
    GO  
    ```  
  
## See Also  
 [sp_detach_db &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-detach-db-transact-sql.md)  
  
  