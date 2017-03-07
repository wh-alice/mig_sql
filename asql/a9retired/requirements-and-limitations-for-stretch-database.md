---
title: "Requirements and limitations for Stretch Database | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: ebeb9f21-64e7-4fa0-9961-32a91e2fa9fc
caps.latest.revision: 16
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Requirements and limitations for Stretch Database
  This topic describes limitations for Stretch Database in [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)].  
  
## Surface area limitations  
 In [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)], the following items make a table ineligible for Stretch.  
  
 To identify databases and tables that are candidates for Stretch Database, download SQL Server 2016 Upgrade Advisor and run the Stretch Database Advisor . For more info, see [Identify databases and tables for Stretch Database by running Stretch Database Advisor](../sql-server/install/81bd93d8-eef8-4572-88d7-5c37ab5ac2bf.md).  
  
 **Table properties**  
 -   Tables that contain FILESTREAM data  
  
-   FileTables  
  
-   Replicated tables  
  
-   Tables that are actively using Change Tracking or Change Data Capture  
  
-   Memory-optimized tables  
  
 **Data types and column properties**  
 -   timestamp  
  
-   sql_variant  
  
-   XML  
  
-   geometry  
  
-   geography  
  
-   hierarchyid  
  
-   CLR user-defined types (UDTs)  
  
-   Columns that are Always Encrypted  
  
 **Column types**  
 -   COLUMN_SET  
  
-   Computed columns  
  
 **Constraints**  
 -   Check constraints  
  
-   Foreign key constraints that reference the table  
  
-   Default constraints  
  
 **Indexes**  
 -   XML indexes  
  
-   Full text indexes  
  
-   Spatial indexes  
  
-   Clustered columnstore indexes  
  
-   Indexed views that reference the table  
  
## Other limitations and caveats for Stretch-enabled tables  
 In [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)], Stretch-enabled tables also have the following limitations or caveats.  
  
-   Uniqueness is not enforced for UNIQUE constraints and PRIMARY KEY constraints on a Stretch-enabled table  
  
-   You can't run UPDATE or DELETE operations on a Stretch-enabled table.  
  
-   You can't run CREATE INDEX or ALTER INDEX operations on a Stretch-enabled table.  
  
-   The maximum number of indexes for a Stretch-enabled table is 998.  
  
-   The maximum number of columns for a Stretch-enabled table is 1,023.  
  
-   You can't enable Stretch for a table that has a column named [batchID--N] or an index named [idx--batchID--N] where N is the object ID of the table.  
  
-   You can't run ALTER TABLE operations on a Stretch-enabled table. The only exception is the `ENABLE REMOTE_DATA_ARCHIVE` option.  
  
-   You can't create an index for a view that includes Stretch-enabled tables.  
  
-   You can't update or delete from a view that includes Stretch-enabled tables. You can, however, insert into a view that includes Stretch-enabled tables.  
  
## See Also  
 [FAQ for Stretch Database](../a9retired/faq-for-stretch-database.md)  
  
  