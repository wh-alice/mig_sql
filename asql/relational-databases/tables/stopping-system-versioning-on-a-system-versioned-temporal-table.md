---
title: "Stopping System-Versioning on a System-Versioned Temporal Table | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-10-11"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-tables"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: dddd707e-bfb1-44ff-937b-a84c5e5d1a94
caps.latest.revision: 10
ms.author: "carlrab"
manager: "jhubbard"
---
# Stopping System-Versioning on a System-Versioned Temporal Table
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  You may want to stop versioning on your temporal table either temporarily or permanently.   
You can do that by setting **SYSTEM_VERSIONING** clause to **OFF**.  
  
## Setting SYSTEM_VERSIONING = OFF  
 Stop system-versioning if you want to perform specific maintenance operations on temporal table or if you don’t need a versioned table anymore. As a result of this operation you will get two independent tables:  
  
-   Current table with period definition  
  
-   History table as a regular table  
  
### Important remarks  
  
-   No data loss happens when you set  **SYSTEM_VERSIONING = OFF** or drop the **SYSTEM_TIME** period.  
  
-   When you set **SYSTEM_VERSIONING = OFF** and do not remove drop the **SYSTEM_TIME** period, the system will continue to update the period columns for every insert and update operation. Deletes on current table will be permanent.  
  
-   Drop the **SYSTEM_TIME** period to remove the period columns completely.  
  
-   When you set **SYSTEM_VERSIONING = OFF**, all users that have sufficient permissions will be able to modify schema and content of history table or even to permanently delete the history table.  
  
### Permanently remove SYSTEM_VERSIONING  
 This example permanently removes SYSTEM_VERSIONING and removes the period columns completely. Removing the period columns is optional.  
  
```  
ALTER TABLE dbo.Department SET (SYSTEM_VERSIONING = OFF);   
/*Optionally, DROP PERIOD if you want to revert temporal table to a non-temporal*/   
ALTER TABLE dbo.Department   
DROP PERIOD FOR SYSTEM_TIME;  
  
```  
  
### Temporarily remove SYSTEM_VERSIONING  
 This is the list of operations that requires system-versioning to be set to **OFF**:  
  
-   Removing unnecessary data from history (**DELETE** or **TRUNCATE**)  
  
-   Removing data from current table without versioning (**DELETE**, **TRUNCATE**)  
  
-   Partition **SWITCH OUT** from current table  
  
-   Partition **SWITCH IN** into history table  
  
 This example temporarily stops SYSTEM_VERSIONING to allow you to perform specific maintenance operations. If you stop versioning temporarily as a prerequisite for table maintenance, we strongly recommend doing this inside a transaction to keep data consistency.  
  
```  
BEGIN TRAN   
ALTER TABLE dbo.Department SET (SYSTEM_VERSIONING = OFF);   
TRUNCATE TABLE [History].[DepartmentHistory]   
WITH (PARTITIONS (1,2))   
ALTER TABLE dbo.Department SET    
(   
SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.DepartmentHistory)   
);   
COMMIT ;  
  
```  
  
## Did this Article Help You? We’re Listening  
 What information are you looking for, and did you find it? We’re listening to your feedback to improve the content. Please submit your comments to [sqlfeedback@microsoft.com](mailto:sqlfeedback@microsoft.com?subject=Your%20feedback%20about%20the%20Stopping%20System-Versioning%20on%20a%20System-Version%20Temporal%20Table%20page)  
  
## See Also  
 [Temporal Tables](../../relational-databases/tables/temporal-tables.md)   
 [Getting Started with System-Versioned Temporal Tables](../../relational-databases/tables/getting-started-with-system-versioned-temporal-tables.md)   
 [Manage Retention of Historical Data in System-Versioned Temporal Tables](../../relational-databases/tables/manage-retention-of-historical-data-in-system-versioned-temporal-tables.md)   
 [System-Versioned Temporal Tables with Memory-Optimized Tables](../../relational-databases/tables/system-versioned-temporal-tables-with-memory-optimized-tables.md)   
 [Creating a System-Versioned Temporal Table](../../relational-databases/tables/creating-a-system-versioned-temporal-table.md)   
 [Modifying Data in a System-Versioned Temporal Table](../../relational-databases/tables/modifying-data-in-a-system-versioned-temporal-table.md)   
 [Querying Data in a System-Versioned Temporal Table](../../relational-databases/tables/querying-data-in-a-system-versioned-temporal-table.md)   
 [Changing the Schema of a System-Versioned Temporal Table](../../relational-databases/tables/changing-the-schema-of-a-system-versioned-temporal-table.md)  
  
  