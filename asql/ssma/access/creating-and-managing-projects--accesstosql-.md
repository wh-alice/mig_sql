---
title: "Creating and Managing Projects (AccessToSQL) | Microsoft Docs"
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
helpviewer_keywords: 
  - "creating projects"
  - "new projects"
  - "opening projects"
  - "projects"
  - "projects, creating and managing"
  - "saving metadata"
  - "saving projects"
ms.assetid: f2d1f0b0-5394-4adb-b3f3-abd71eb68ca7
caps.latest.revision: 22
ms.author: "lonnyb"
manager: "lonnyb"
---
# Creating and Managing Projects (AccessToSQL)
To migrate Access databases to SQL Server or SQL Azure, you must first create an SSMA project. The project is a file that contains metadata about the Access databases that you want to migrate to SQL Server or SQL Azure, metadata about the target instance of SQL Server or SQL Azure that will receive the migrated objects and data, SQL Server connection information, and project settings.  
  
## Reviewing Default Project Settings  
SSMA contains several options for converting and synchronizing database objects and for converting data. The default setting for these options is appropriate for many users. However, before you create a new SSMA project, you should review the options and, if you want to, change the default settings that will be used for all your new projects.  
  
**To review default project settings**  
  
1.  On the **Tools** menu, select **Default Project Settings**.  
  
2.  Select the project type in **Migration Target Version** drop down for which settings are to be viewed/ changed and then click **General** tab.  
  
3.  In the left pane, click **Conversion**.  
  
4.  In the right pane, review the options. For more information about these options, see [Project Settings (Conversion)](http://msdn.microsoft.com/en-us/bcebc635-c638-4ddb-924c-b9ccfef86388).  
  
5.  Change options as necessary.  
  
6.  Repeat the previous steps for the **Migration**, **GUI**, and **Type Mapping** pages.  
  
    -   For information about migration options, see [Project Settings (Migration)](http://msdn.microsoft.com/en-us/4caebc9c-8680-4b99-a8fa-89c43161c95d).  
  
    -   For information about user interface options, see [Project Settings (GUI)](http://msdn.microsoft.com/en-us/cf06baf1-8714-48a3-95dc-781f6ca53693).  
  
    -   For more information about data type mapping settings, see [Project Settings (Type Mapping)](http://msdn.microsoft.com/en-us/b87b9683-abed-4677-8c50-18bdba704655).  
  
    -   For information about SQL Azure settings, see [Project Settings (SQL Azure)](http://msdn.microsoft.com/en-us/bbb8a204-d0e4-4f0b-9709-271feb1f136e).  
  
**Note** SQL Azure settings will be available only when you select Migration to SQL Azure while creating a project.  
  
## Creating New Projects  
SSMA starts without loading a default project. To migrate data from Access databases to SQL Server or SQL Azure, you must create a project.  
  
**To create a new project**  
  
1.  On the **File** menu, select **New Project**.  
  
    The **New Project** dialog box appears.  
  
2.  In the **Name** box, enter a name for your project.  
  
3.  In the **Location** box, enter or select a folder for the project  
  
4.  In the Migration To drop down, select one of SQL Server 2005/ SQL Server 2008/ SQL Server 2012/ SQL Server 2014/ SQL Server 2016/ Azure SQL DB, and then click **OK**.  
  
SSMA creates the project file. You can now perform the next step of [adding one or more Access databases](http://msdn.microsoft.com/en-us/e944c740-4c8a-4bc1-b0ed-be57bc06dced).  
  
## Customizing Project Settings  
In addition to defining default project settings, which apply to all new SSMA projects, you can also customize the settings for each project. For more information, see [Setting Conversion and Migration Options](http://msdn.microsoft.com/en-us/0a7304df-2f35-4453-96ef-7ac83dea1167).  
  
When you customize data type mappings between source and target databases, you can define mappings at the project, database, or object level. For more information about type mapping, see [Mapping Source and Target Data Types](http://msdn.microsoft.com/en-us/b362a075-16e7-423f-b63f-e1e9f02844a9).  
  
## Saving Projects  
When you save a project, SSMA persists the project settings, and optionally the database metadata, to the project file.  
  
**To save a project**  
  
-   On the **File** menu, select **Save Project**.  
  
    If databases within the project have changed or have not been converted, SSMA will prompt you to save metadata into the project. Saving metadata lets you work offline. It also lets you send a complete project file to other people, including technical support personnel. If you are prompted to save metadata, do the following:  
  
    1.  For each database that shows a status of **Metadata missing**, select the check box next to the database name.  
  
        Saving metadata might take several minutes. If you do not want to save metadata at this point, do not select any check boxes.  
  
    2.  Click **Save**.  
  
        SSMA will parse the Access schemas and save the metadata to the project file.  
  
## Opening Projects  
When you open a project, it is disconnected from SQL Server or SQL Azure. This lets you work offline. To update metadata load database objects into SQL Server or SQL Azure. To migrate data, you must reconnect to SQL Server or SQL Azure.  
  
**To open a project**  
  
1.  Use one of the following procedures:  
  
    -   On the **File** menu, point to **Recent Projects**, and then select the project you want to open.  
  
    -   On the **File** menu, select **Open Project**, locate the .a2ssproj project file, select the file, and then click **Open**.  
  
2.  To reconnect to SQL Server, on the **File** menu, select **Reconnect to SQL Server**.  
  
3.  To reconnect to SQL Azure, on the **File** menu, select **Reconnect to SQL Azure.**  
  
## Next Step  
The next step in the migration process is to [add one or more Access databases](http://msdn.microsoft.com/en-us/e944c740-4c8a-4bc1-b0ed-be57bc06dced).  
  
## See Also  
[Migrating Access Databases to SQL Server](http://msdn.microsoft.com/en-us/76a3abcf-2998-4712-9490-fe8d872c89ca)  
[Adding and Removing Access Database Files](http://msdn.microsoft.com/en-us/e944c740-4c8a-4bc1-b0ed-be57bc06dced)  
  
