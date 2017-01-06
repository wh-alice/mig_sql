---
title: "Mapping Source and Target Databases (AccessToSQL) | Microsoft Docs"
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
  - "database schemas"
  - "mapping, databases"
  - "schemas, mapping to"
  - "schemas, SQL Azure"
  - "schemas, SQL Server"
  - "source database"
  - "target database"
ms.assetid: 69bee937-7b2c-49ee-8866-7518c683fad4
caps.latest.revision: 17
ms.author: "lonnyb"
manager: "lonnyb"
---
# Mapping Source and Target Databases (AccessToSQL)
When you connect to SQL Server or SQL Azure, you need to specify a target database for migration. If you have multiple Access databases you can map them to multiple SQL Server databases (or schemas) or to multiple schemas under the connected SQL Azure database.  
  
## SQL Server or SQL Azure Database Schemas  
SQL Server databases use the concept of schemas to separate objects within a database into logical groups. For example, a library database could use three schemas named **books**, **audio**, and **video** to separate book, audio, and video objects from each other. By default, the access database is mapped to **master** database and **dbo** schema in SQL Server and to connected database and **dbo** schema in SQL Azure.  
  
Unless you customize the mapping between each Access database and the SQL Server database and schema, SSMA will migrate all the schemas and data associated with the access database to the default database mapped.  
  
## Modifying the Target Database and Schema  
SSMA lets you map each Access database to SQL Server or SQL Azure database and schema. The following procedure describes how to customize the mapping per database.  
  
**To modify the target database and schema**  
  
1.  In the Access Metadata Explorer pane, select **access-metadata**.  
  
    Schema mapping is also available when you select the **Databases** node or any database node. The schema mapping list is customized for the selected object.  
  
2.  In the right pane, click the **Schema Mapping** tab.  
  
    You will see a table containing access database names and its corresponding ssNoVersion or Sql Azure schema. The target schema is denoted in a two part notation (database.schema).  
  
3.  Select the row that contains the mapping you want to customize, and then click **Modify**.  
  
4.  In the **Choose Target Schema** dialog box, you may browse for available target database and schema or type the database and schema name in the textbox in a two part notation (database.schema) and then click **OK**.  
  
**Modes of Mapping**  
  
-   Mapping to SQL Server  
  
You can map source database to any target database. By default source database is mapped to target SQL Server database with which you have connected using SSMA. If the target database being mapped does not exist on SQL Server, then you will be prompted with a message **“The Database and/or schema does not exist in target SQL Server metadata. It would be created during synchronization. Do you wish to continue?”** Click Yes. Similarly, you can map schema to non-existing schema under target SQL Server database which will be created during synchronization.  
  
-   Mapping to SQL Azure  
  
You can map the source database to the connected target SQL Server database or to the any schema in the connected target SQL Server database. If you map source Schema to any non-existing schema under connected target database, then you will be prompted with a message **”Schema does not exist in target metadata. It would be created during synchronization. Do you wish to continue? ”** Click Yes.  
  
## Reverting to Your Initial Database and Schema  
If you customize the mapping between an Access database and a SQL Server or SQL Azure database and schema, you can revert the mapping back to the database that you specified when you connected to SQL Server or SQL Azure.  
  
**To reset to default database and schema**  
  
1.  Under the schema mapping tab, select any row and click **Reset to Default** to revert to the default database and schema.  
  
## Next Step  
The next step in the migration process is [converting database objects](http://msdn.microsoft.com/en-us/e0ef67bf-80a6-4e6c-a82d-5d46e0623c6c)  
  
## See Also  
[Migrating Access Databases to SQL Server](http://msdn.microsoft.com/en-us/76a3abcf-2998-4712-9490-fe8d872c89ca)  
  
