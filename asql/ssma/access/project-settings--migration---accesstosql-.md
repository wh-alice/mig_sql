---
title: "Project Settings (Migration) (AccessToSQL) | Microsoft Docs"
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
helpviewer_keywords: 
  - "Migration settings"
  - "Project Settings dialog box, Migration"
ms.assetid: 4caebc9c-8680-4b99-a8fa-89c43161c95d
caps.latest.revision: 14
ms.author: "lonnyb"
manager: "lonnyb"
---
# Project Settings (Migration) (AccessToSQL)
The Migration project settings let you configure how data is migrated to SQL Server or SQL Azure.  
  
The Migration pane is available in the **Project Settings** and **Default Project Settings** dialog boxes.  
  
-   Use the **Project Settings** dialog box to set configuration options for the current project. To access the migration settings, on the **Tools** menu, select **Project Settings**, click **General** at the bottom of the left pane, and then click **Migration**.  
  
-   Use the **Default Project Settings** dialog box to set configuration options for all projects. To access the migration settings, on the **Tools** menu, select **Default Project Settings**, select the project type in **Migration Target Version** combo box of which you want to access the settings, click **General** at the bottom of the left pane, and then click **Migration**.  
  
## Options  
**Check constraints**  
Specifies whether SSMA should check constraints when it adds data to tables.  
  
-   **Default Mode**: False  
  
-   **Optimistic Mode**: True  
  
-   **Full Mode**: False  
  
**Fire triggers**  
Specifies whether SSMA should fire insertion triggers when it adds data to SQL Server tables.  
  
-   **Default Mode**: False  
  
-   **Optimistic Mode**: True  
  
-   **Full Mode**: False  
  
**Keep identity**  
Specifies whether SSMA preserves Access identity values when it adds data to SQL Server. If this value is False, SQL Server assigns identity values.  
  
-   **Default Mode**: True  
  
-   **Optimistic Mode**: True  
  
-   **Full Mode**: False  
  
**Keep nulls**  
Specifies whether SSMA preserves null values in the source data when it adds data to SQL Server, regardless of the default values that are specified in SQL Server.  
  
-   **Default Mode**: True  
  
-   **Optimistic Mode**: False  
  
-   **Full Mode**: True  
  
**Table locks**  
Specifies whether SSMA locks tables when it adds data to tables during data migration. If the value is False, SSMA uses row locks.  
  
-   **Default Mode**: True  
  
-   **Optimistic Mode**: True  
  
-   **Full Mode**: True  
  
**Replace unsupported dates**  
Specifies whether SSMA should correct Access dates that are earlier than the earliest SQL Server datetime date (01 January 1753).  
  
-   To keep the current date values, select **Do nothing**. SQL Server will not accept dates before 01 January 1753 in a datetime column. If you use older dates, you must convert the datetime values to character values.  
  
-   To convert dates before 01 January 1753 to NULL, select **Replace with NULL**.  
  
-   To replace dates before 01 January 1753 with a supported date, select **Replace with nearest supported date**. If you select this value, by default nearest supported date will be selected as 01 January 1753.  
  
**Batch size**  
Batch size used during data migration. A transaction is logged after each batch. By default, the batch size for all schemes is 10000.  
  
## See Also  
[User Interface Reference(Access)](http://msdn.microsoft.com/en-us/af24c303-4a41-449b-9c86-d6558a97e839)  
  
