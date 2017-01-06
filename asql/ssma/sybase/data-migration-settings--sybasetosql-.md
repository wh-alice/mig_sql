---
title: "Data Migration Settings (SybaseToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/11/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
ms.assetid: 94d7a083-2dbc-4e3d-94dd-92b7ff9d0c2d
caps.latest.revision: 3
ms.author: "lonnyb"
manager: "lonnyb"
---
# Data Migration Settings (SybaseToSQL)
  
## Data Migration Settings  
**Data Migration Settings** allows the user to write custom queries for data migration.  
  
-   This tab is available when **Extended data migration options** is set to **Show** and is hidden when the setting is set to **Hide** in Project Settings. For more information about Project Migration Settings, see [Project Settings (Migration)](http://msdn.microsoft.com/en-us/82f8857f-7ab1-4738-ab6e-b1e95ea94924) .  
  
-   Parsing of Custom SQL statements will be implemented in **Data migration settings** tab of Table Node.  
  
-   Following are the two check boxes available in the **Data Migration Settings** viz.:  
  
    1.  Truncate SQL Server table  
  
    2.  Use custom select  
  
1.  **Truncate SQL Server table:**  
     This option allows the user to have a clear view of the migrated data at the target database.  
  
    -   By default, this textbox is checked.  
  
    -   If this textbox is unchecked, then the data that is migrated will be added on to the existing data at the target database.  
  
2.  **Use custom select:**  
     This option allows the user to modify the **select** statement present (**select** statement allows the users to select the data to be displayed at the target database).  
  
    1.  By default, this textbox is unchecked.  
  
    2.  If this textbox is checked, then it allows the users to modify the **select** statement present.  
  
There are two buttons present viz.:  
  
-   **Apply:** Click **Apply** to apply the settings that have been changed.  
  
-   **Cancel:** Click **Cancel** to restore the settings present before the changes were being made.  
  
## See Also  
[Migrating Sybase Data to SQL Server/SQL Azure](http://msdn.microsoft.com/en-us/54a39f5e-9250-4387-a3ae-eae47c799811)  
  
