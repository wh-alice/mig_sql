---
title: "Limitations for Stretch Database | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-14"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.service: "sql-server-stretch-database"
ms.suite: ""
ms.technology: 
  - "dbe-stretch"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Stretch Database, limitations"
  - "Stretch Database, blocking issues"
  - "limitations (Stretch Database)"
  - "blocking issues (Stretch Database)"
ms.assetid: 2b1fbec1-7859-44fc-8417-724fc57a59c0
caps.latest.revision: 26
ms.author: "douglasl"
manager: "jhubbard"
---
# Limitations for Stretch Database
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  Learn about limitations for Stretch-enabled tables, and about limitations that currently prevent you from enabling Stretch for a table.  
  
##  <a name="Caveats"></a> Limitations for Stretch-enabled tables  
  
Stretch-enabled tables have the following limitations.  
  
### Constraints  
-   Uniqueness is not enforced for UNIQUE constraints and PRIMARY KEY constraints in the Azure table that contains the migrated data.  
  
### DML operations  
-   You can't UPDATE or DELETE rows that have been migrated, or rows that are eligible for migration, in a Stretch-enabled table or in a view that includes Stretch-enabled tables.  
  
-   You can't INSERT rows into a Stretch-enabled table on a linked server.  
  
### Indexes  
-   You can't create an index for a view that includes Stretch-enabled tables.  
  
-   Filters on [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] indexes are not propagated to the remote table.  
  
##  <a name="Limitations"></a> Limitations that currently prevent you from enabling Stretch for a table  
   
 The following items currently prevent you from enabling Stretch for a table.  
  
 ### Table properties  
-   Tables that have more than 1,023 columns or more than 998 indexes  
  
-   FileTables or tables that contain FILESTREAM data  
  
-   Tables that are replicated, or that are actively using Change Tracking or Change Data Capture  
  
-   Memory-optimized tables  
  
 ### Data types  
 -   text, ntext and image  
  
-   timestamp  
  
-   sql_variant  
  
-   XML  
  
-   CLR data types including geometry, geography, hierarchyid, and CLR user-defined types  
  
 ### Column types  
 -   COLUMN_SET  
  
-   Computed columns  
  
### Constraints  
-   Default constraints and check constraints  
  
-   Foreign key constraints that reference the table. In a parent-child relationship (for example, Order and Order_Detail), you can enable Stretch for the child table (Order_Detail) but not for the parent table (Order).  
  
### Indexes  
-   Full text indexes  
  
-   XML indexes  
  
-   Spatial indexes  
  
-   Indexed views that reference the table  
  
## See Also  
 [Identify databases and tables for Stretch Database by running Stretch Database Advisor](../../sql-server/install/81bd93d8-eef8-4572-88d7-5c37ab5ac2bf.md)   
 [Enable Stretch Database for a database](../../sql-server/install/enable-stretch-database-for-a-database.md)   
 [Enable Stretch Database for a table](../../sql-server/install/enable-stretch-database-for-a-table.md)  
  
  