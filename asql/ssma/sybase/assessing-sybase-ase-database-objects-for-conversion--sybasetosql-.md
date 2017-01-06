---
title: "Assessing Sybase ASE Database Objects for Conversion (SybaseToSQL) | Microsoft Docs"
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
ms.assetid: eb996b7c-1eef-4f73-b5e6-2fa6faf7336c
caps.latest.revision: 7
ms.author: "lonnyb"
manager: "lonnyb"
---
# Assessing Sybase ASE Database Objects for Conversion (SybaseToSQL)
Before you load objects and migrate data to SQL Server or SQL Azure, you should determine how complex the migration will be and how much time the migration will take. SSMA can create an assessment report that shows the percentage of objects and procedures that will be successfully converted to Transact-SQL. SSMA also lets you view the specific issues that will cause conversion failures.  
  
## Creating Assessment Reports  
When it creates this assessment report, SSMA converts the selected Sybase Adaptive Server Enterprise (ASE) database objects to SQL Server or SQL Azure syntax, and then shows the results.  
  
**To create an assessment report**  
  
1.  In Sybase Metadata Explorer, select the databases that you want to assess.  
  
2.  To omit individual objects, clear the check boxes next to the objects that you do not want to assess.  
  
3.  Right-click **Databases**, and then select **Create Report**.  
  
    You can also analyze individual objects by right-clicking an object, and then selecting **Create Report**.  
  
    SSMA will show progress in the status bar at the bottom of the window. If the Output pane is visible, you will also see messages in the Output pane.  
  
    When the assessment is complete, the SQL Server Migration Assistant for Sybase : Assessment Report window will appear.  
  
## Using Assessment Reports  
The Assessment Report window contains three panes:  
  
-   The left pane contains the hierarchy of objects that are included in the assessment report. You can browse the hierarchy and select objects and categories of objects to view conversion statistics and code.  
  
-   The contents of the right pane depends on the item selected in the left pane.  
  
    If a group of objects is selected, such a schema, or a table is selected the right pane contains a Conversion statistics pane and an Objects by Categories pane. The Conversion Statistics pane shows the conversion statistics for the selected objects. The Objects by Categories pane shows the conversion statistics for the object or categories of objects.  
  
    If a stored procedure, view, or trigger is selected, the right pane contains statistics, source code, and target code.  
  
    -   The top area shows the overall statistics for the object. You might have to expand **Statistics** to view this information.  
  
    -   The Source area shows the source code of the object that is selected in the left pane. The highlighted areas show problematic source code.  
  
    -   The Target area shows the converted code. Red text shows problematic code and error messages.  
  
-   The bottom pane shows conversion messages, grouped by message number. You can click **Errors**, **Warnings**, or **Info** to view categories of messages, and then expand a group of messages. Click an individual message to select the object in the left pane and display the details in the right pane.  
  
## Analyzing Conversion Problems Using the Assessment Report  
The Conversion Statistics panes show the conversion statistics. If the percentage for any category is less than 100 percent, you should determine why the conversion was not successful.  
  
**To view conversion problems**  
  
1.  Create the assessment report by using the instructions in the previous procedure.  
  
2.  In the left pane, expand schemas or folders that have a red error icon. Continue expanding items until you select an individual item that failed conversion.  
  
3.  At the top of the Source pane, click **Next Problem**.  
  
    The problematic code is highlighted, as is the related code in the Target Navigation pane.  
  
4.  Review any error messages, and then determine what you want to do with the object that caused the conversion problem:  
  
    -   Update the ASE syntax in SSMA. You can update the syntax only for stored procedures and triggers. To update the syntax, select the object in the Sybase Metadata Explorer pane, click the **SQL** tab, and then edit the SQL code. When you navigate away from the item, you will be prompted to save the updated syntax. You can view the reported errors for the object on the **Report** tab.  
  
    -   In ASE, you can alter the ASE object to remove or revise problematic code. To load the updated code into SSMA, you will have to update the metadata. For more information, see [Connecting to Sybase ASE &#40;SybaseToSQL&#41;](../../ssma/sybase/connecting-to-sybase-ase--sybasetosql-.md).  
  
    -   You can exclude the object from migration. In SQL Server or SQL Azure Metadata Explorer and Sybase Metadata Explorer, clear the check box next to the item before you load the objects into SQL Server or SQL Azure and migrate data from ASE.  
  
## Next Step  
[Converting Sybase ASE Database Objects &#40;SybaseToSQL&#41;](../../ssma/sybase/converting-sybase-ase-database-objects--sybasetosql-.md)  
  
## See Also  
[Migrating Sybase ASE Databases to SQL Server - Azure SQL DB &#40;SybaseToSQL&#41;](../../ssma/sybase/migrating-sybase-ase-databases-to-sql-server---azure-sql-db--sybasetosql-.md)  
  
