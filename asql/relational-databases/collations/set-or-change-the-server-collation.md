---
title: "Set or Change the Server Collation | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "server collations [SQL Server]"
  - "collations [SQL Server], server"
ms.assetid: 3242deef-6f5f-4051-a121-36b3b4da851d
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# Set or Change the Server Collation
  The server collation acts as the default collation for all system databases that are installed with the instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], and also any newly created user databases. The server collation is specified during [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installation. For more information, see [Collation and Unicode Support](../../relational-databases/collations/collation-and-unicode-support.md).  
  
## Changing the Server Collation  
 Changing the default collation for an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] can be a complex operation and involves the following steps:  
  
-   Make sure you have all the information or scripts needed to re-create your user databases and all the objects in them.  
  
-   Export all your data using a tool such as the [bcp Utility](../../tools/bcp-utility.md). For more information, see [Bulk Import and Export of Data &#40;SQL Server&#41;](../../relational-databases/import-export/bulk-import-and-export-of-data-sql-server.md).  
  
-   Drop all the user databases.  
  
-   Rebuild the master database specifying the new collation in the SQLCOLLATION property of the **setup** command. For example:  
  
    ```  
    Setup /QUIET /ACTION=REBUILDDATABASE /INSTANCENAME=InstanceName   
    /SQLSYSADMINACCOUNTS=accounts /[ SAPWD= StrongPassword ]   
    /SQLCOLLATION=CollationName  
    ```  
  
     For more information, see [Rebuild System Databases](../../relational-databases/databases/rebuild-system-databases.md).  
  
-   Create all the databases and all the objects in them.  
  
-   Import all your data.  
  
> [!NOTE]  
>  Instead of changing the default collation of an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], you can specify a default collation for each new database you create.  
  
## See Also  
 [Collation and Unicode Support](../../relational-databases/collations/collation-and-unicode-support.md)   
 [Set or Change the Database Collation](../../relational-databases/collations/set-or-change-the-database-collation.md)   
 [Set or Change the Column Collation](../../relational-databases/collations/set-or-change-the-column-collation.md)   
 [Rebuild System Databases](../../relational-databases/databases/rebuild-system-databases.md)  
  
  