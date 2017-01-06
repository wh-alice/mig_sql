---
title: "Assessment Report (MySQLToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "08/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "Azure SQL Database"
  - "SQL Server"
ms.assetid: 5525d989-024c-402d-9e84-faa4721cc5b9
caps.latest.revision: 4
ms.author: "lonnyb"
manager: "lonnyb"
---
# Assessment Report (MySQLToSQL)
The Assessment Report window shows the results of the conversion of database objects to Transact-SQL syntax, and can also help you estimate the complexity and cost of your migration projects.  
  
To access the Assessment Report, select objects to convert in source metadata explorer, right-click **Schemas**, and then select **Create Report**.  
  
## Options  
  
|||  
|-|-|  
|**Term**|**Definition**|  
|**Conversion statistics**|Shows the conversion statistics by statement type. This pane is visible when a group object, such as a schema, or an object without code is selected in the left pane.|  
|**Objects by Categories**|Shows the number of objects by category. This pane is visible only when a group object, such as a schema, or an object without code is selected in the left pane.|  
|**Statistics**|Shows the conversion statistics for the selected object. This pane is visible only when an individual object with code is selected in the left pane. You might have to expand **Statistics**, which is immediately above the **Source** pane, to view this pane.|  
|**Source**|Shows the MySQL code for the selected object, and highlights code that was not converted to Transact-SQL. This pane is visible only when an individual object with code is selected in the left pane.<br /><br />Click the line numbers to set or clear bookmarks. Use the buttons at the top of the pane to navigate through the code.|  
|**Target**|Shows the conversion's resulting Transact-SQL code for the selected object, and error messages for code that was not converted. This pane is visible only when an individual object with code is selected in the left pane.<br /><br />Click the line numbers to set or clear bookmarks. Use the buttons at the top of the pane to navigate through the code.|  
|**Messages pane**|Shows the errors, warnings, and informational messages that were generated while creating the assessment report. Messages are grouped by number. To view the code that caused the error, click **Errors**, **Warnings**, or **Info**, expand the category of messages, and then click a message.|  
  
