---
title: "Conversion Settings (MySQLToSQL) | Microsoft Docs"
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
ms.assetid: f551cf6e-1575-4206-9cca-975b5b43a6b8
caps.latest.revision: 10
ms.author: "lonnyb"
manager: "lonnyb"
---
# Conversion Settings (MySQLToSQL)
The **‘Settings’** tab allows the user to set node level settings. The tab will be available at the following Metabase nodes:  
  
-   Database Node  
  
-   Functions Category  
  
-   Function Node  
  
-   Tables Category  
  
-   Table Node  
  
## Specifications:  
The **Settings** tab has two user settings, viz.:  
  
1.  Function Conversion  
  
2.  Table Conversion  
  
These settings will be available based on the type of Metabase node. For example, Function Conversion related setting will not be available at the Table Node  
  
> [!NOTE]  
> -   The changes made by the user will be saved in the Project Workspace as a separate preference file.  
> -   The extension of this file will be **ccprefs**.  
  
1.  **Function Conversion Setting:**  
  
    1.  This tab contains **‘Force function conversion’** option. The option can have one of the following four values:  
  
        -   Convert according to project settings [inherited]  
  
        -   Always Convert to a Function  
  
        -   Always Convert to a Procedure  
  
        -   Convert according to project settings  
  
    2.  Based on the settings, the function will be converted either to a function or to a stored procedure.  
  
    3.  The settings made by the user are saved in the cascaded preferences file on clicking **Apply** button.  
  
2.  **Table Conversion Setting:**  
  
    1.  This tab contains **‘Suppress ROWID auxiliary column generation’** option. The option can have one of the following four values:  
  
        -   Convert according to project settings [inherited]  
  
        -   Yes  
  
        -   No  
  
        -   Convert according to project settings  
  
    2.  If **‘Yes’**, this setting prohibits creation of ROWID auxiliary column creation on target tables.  
  
    3.  The settings made by the user are saved in cascaded preferences file on clicking **Apply** button.  
  
## See Also  
[Project Settings (Conversion) (MySQL to SQL)](http://msdn.microsoft.com/en-us/7ad5fe44-6445-4ba8-a457-5af792631f11)  
  
