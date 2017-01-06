---
title: "Getting Started with SQL Server Migration Assistant for Access (AccessToSQL) | Microsoft Docs"
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
helpviewer_keywords: 
  - "error list pane"
  - "getting started"
  - "menus"
  - "metadata explorers"
  - "output pane"
  - "toolbars"
  - "user interface"
  - "user interface overview"
ms.assetid: 462a731f-08f1-44e1-9eeb-4deac6d2f6c5
caps.latest.revision: 24
ms.author: "lonnyb"
manager: "lonnyb"
---
# Getting Started with SQL Server Migration Assistant for Access (AccessToSQL)
SQL Server Migration Assistant (SSMA) for Access lets you quickly convert Access database objects to SQL Server or Azure SQL DB objects, upload the resulting objects into SQL Server or Azure SQL DB, and migrate data from Access to SQL Server or Azure SQL DB. If it is necessary, you can also link Access tables to SQL Server or Azure SQL DB tables so that you can continue to use your existing Access front-end applications with SQL Server or Azure SQL DB.  
  
This topic introduces the installation process, and then helps familiarize you with the SSMA user interface.  
  
## Installing SSMA  
To use SSMA, you first must install the SSMA client program on a computer that can access both the databases that you want to migrate and the target instance of SQL Server or Azure SQL DB. For installation instructions, see [Installing SQL Server Migration Assistant for Access &#40;AccessToSQL&#41;](../../ssma/access/installing-sql-server-migration-assistant-for-access--accesstosql-.md).  
  
To start SSMA, click **Start**, point to **All Programs**, point to **SQL Server Migration Assistant for Access**, and then select **SQL Server Migration Assistant for Access**.  
  
## Using SSMA  
After SSMA is installed, you can use SSMA to migrate Access databases to SQL Server or Azure SQL DB. It helps to become familiar with the SSMA user interface before you start. The following diagram shows the user interface for SSMA. This includes the metadata explorers, metadata, toolbars, output pane, and error list pane:  
  
![SSMA for Access Graphical User Interface](../../ssma/access/media/ssmaforaccessgui.gif "SSMA for Access Graphical User Interface")  
  
To start a migration, create a new project, and then add Access databases to Access Metadata Explorer. You can then right-click objects in Access Metadata Explorer to do tasks such as export an inventory of Access database objects to SQL Server or Azure SQL DB, create reports that assess conversions to SQL Server or Azure SQL DB, and convert Access schemas to SQL Server or Azure SQL DB schemas. You can also do these tasks through the toolbars and menus.  
  
You must also connect to an instance of SQL Server. After a successful connection, a hierarchy of SQL Server databases will appear in SQL Server Metadata Explorer. After you convert Access schemas to SQL Server schemas, you can select those converted schemas in SQL Server Metadata Explorer, and then load the schemas into SQL Server.  
  
You must connect to Azure SQL DB if you have selected Azure SQL DB from the Migrate to dropdown in new project dialog box. After a successful connection, a hierarchy of Azure SQL DB databases will appear in Azure SQL DB Metadata Explorer. After you convert Access schemas to Azure SQL DB schemas, you can select those converted schemas in Azure SQL DB Metadata Explorer, and then load the schemas into SQL Server.  
  
After you load converted schemas into SQL Server or Azure SQL DB, you can return to Access Metadata Explorer and migrate data from Access databases into SQL Server or Azure SQL DB databases. If it is necessary, you can also link Access tables to SQL Server or Azure SQL DB tables.  
  
For more information about these tasks and how to perform them, see the following sections:  
  
-   [Preparing Access Databases for Migration](http://msdn.microsoft.com/en-us/9b80a9e0-08e7-4b4d-b5ec-cc998d3f5114)  
  
-   [Migrating Access Databases to SQL Server](http://msdn.microsoft.com/en-us/76a3abcf-2998-4712-9490-fe8d872c89ca)  
  
-   [Linking Access Applications to SQL Server](http://msdn.microsoft.com/en-us/82374ad2-7737-4164-a489-13261ba393d4)  
  
The following sections describe the features of the SSMA user interface.  
  
### Metadata Explorers  
SSMA contains two metadata explorers to browse and perform actions on Access and SQL Server or Azure SQL DB databases.  
  
#### Access Metadata Explorer  
Access Metadata Explorer shows information about Access databases that have been added to the project. When you add an Access database, SSMA retrieves metadata about that database. This is the metadata that is available in Access Metadata Explorer.  
  
By using Access Metadata Explorer, you can perform the following tasks:  
  
-   Browse the tables in each Access database.  
  
-   Select objects for conversion, and then convert the objects to SQL Server syntax. For more information, see [Converting Access Database Objects](http://msdn.microsoft.com/en-us/e0ef67bf-80a6-4e6c-a82d-5d46e0623c6c).  
  
-   Select objects for data migration, and then migrate the data from those objects to SQL Server. For more information, see [Migrating Access Data into SQL Server](http://msdn.microsoft.com/en-us/f3b18af7-1af0-499d-a00d-a0af94895625).  
  
-   Link and unlink Access and SQL Server tables.  
  
#### SQL Server or Azure SQL DB Metadata Explorer  
SQL Server or Azure SQL DB Metadata Explorer shows information about an instance of SQL Server or Azure SQL DB. When you connect to an instance of SQL Server or Azure SQL DB, SSMA retrieves metadata about that instance and stores it in the project file.  
  
You can use this Metadata Explorer to select converted Access database objects and then load (synchronize) those objects into the instance of SQL Server or Azure SQL DB.  
  
For more information, see [Loading Converted Database Objects into SQL Server](http://msdn.microsoft.com/en-us/4e854eee-b10c-4f0b-9d9e-d92416e6f2ba).  
  
### Metadata  
To the right of each metadata explorer are tabs that describe the selected object. For example, if you select a table in Access Metadata Explorer, four tabs will appear: **Table**, **Type Mapping,Properties**, and **Data**. If you select a table in SQL Server Metadata Explorer, three tabs will appear: **Table**, **SQL**, and **Data**.  
  
Most metadata settings are read-only. However, you can alter the following metadata:  
  
-   In Access Metadata Explorer, you can alter type mappings. You should make these changes before you create reports or convert schemas.  
  
-   In SQL Server Metadata Explorer, you can alter table and index properties on the **Table** tab. You should make these changes before you load the schemas into SQL Server. For more information, see [Converting Access Database Objects](http://msdn.microsoft.com/en-us/e0ef67bf-80a6-4e6c-a82d-5d46e0623c6c).  
  
### Toolbars  
SSMA has two toolbars: a project toolbar and a migration toolbar.  
  
#### The Project Toolbar  
The project toolbar contains buttons for working with projects, adding Access database files, and connecting to SQL Server or Azure SQL DB. These buttons resemble the commands on the **File** menu.  
  
#### The Migration Toolbar  
The migration toolbar contains the following commands:  
  
|Button|Function|  
|----------|------------|  
|**Convert, Load, and Migrate**|Converts Access databases, loads the converted objects into SQL Server or Azure SQL DB, and migrates data into SQL Server or Azure SQL DB all in one step.|  
|**Create Report**|Converts the selected Access schema to SQL Server or Azure SQL DB syntax, and then creates a report that shows how successful the conversion was.<br /><br />This command is available only when objects are selected in Access Metadata Explorer.|  
|**Convert Schema**|Converts the selected Access schema to SQL Server or Azure SQL DB schemas.<br /><br />This command is available only when objects are selected in Access Metadata Explorer.|  
|**Migrate Data**|Migrates data from the Access database to SQL Server or Azure SQL DB. Before you run this command, you must convert the Access schemas to SQL Server or Azure SQL DB schemas, and then load the objects into SQL Server or Azure SQL DB.<br /><br />This command is available only when objects are selected in Access Metadata Explorer.|  
|**Stop**|Stops the current process, such as converting objects to SQL Server or Azure SQL DB syntax.|  
  
### Menus  
SSMA contains the following menus:  
  
|Menu|Description|  
|--------|---------------|  
|**File**|Contains commands for the Migration Wizard, working with projects, adding and removing Access database files, and connecting to SQL Server or Azure SQL DB.|  
|**Edit**|Contains commands for finding and working with text in the details pages, such as copying Transact-SQL from the SQL details pane. To open **Manage Bookmarks** dialog, on the Edit menu click Manage Bookmarks. In the dialog you will see a list of existing bookmarks. You can use the buttons on the right side of the dialog to manage the bookmarks.|  
|**View**|Contains the **Synchronize Metadata Explorers** command. This synchronizes the objects between Access Metadata Explorer and SQL Server or Azure SQL DB Metadata Explorer. Also contains commands to display and hide the **Output** and **Error List** panes and an option **Layouts** to manage with the Layouts.|  
|**Tools**|Contains commands to create reports, export data, migrate objects and data, link tables, and provides access to global and project settings dialog boxes.|  
|**Help**|Provides access to SSMA Help and to the **About** dialog box.|  
  
### Output Pane and Error List Pane  
The **View** menu provides commands to toggle the visibility of the Output pane and the Error List pane:  
  
-   The Output pane shows status messages from SSMA during object conversion, object synchronization, and data migration.  
  
-   The Error List pane shows error, warning, and informational messages in a list that you can sort.  
  
## See Also  
[Migrating Access Databases to SQL Server](http://msdn.microsoft.com/en-us/76a3abcf-2998-4712-9490-fe8d872c89ca)  
  
