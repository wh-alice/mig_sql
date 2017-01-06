---
title: "Mapping MySQL Databases to SQL Server Schemas (MySQLToSQL) | Microsoft Docs"
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
  - "Mapping, Modifying target database and schema"
  - "Mapping, reverting to default database and schema"
ms.assetid: 5c6fb445-92ae-4933-b77d-80230931c024
caps.latest.revision: 7
ms.author: "lonnyb"
manager: "lonnyb"
---
# Mapping MySQL Databases to SQL Server Schemas (MySQLToSQL)
By default, SSMA for MySQL migrates all objects in a MySQL schema to a SQL Server or SQL Azure database named for the schema. However, you can customize the mapping between MySQL schemas and SQL Server or SQL Azure databases.  
  
## MySQL and SQL Server or SQL Azure Schemas  
The MySQL concept of a schema maps to the SQL Server  concept of a database and one of its schemas. SSMA refers to the SQL Server combination of database and schema as a schema.  
  
The MySQL concept of a schema maps to the SQL Server concept of a database and one of its schemas. For example, MySQL might have a schema named **HR**. An instance of SQL Server might have a database named **HR**, and within that database are schemas. One schema is the **dbo** (or database owner) schema. By default, the MySQL schema **HR** will be mapped to the SQL Server database and schema **HR.dbo**. SSMA refers to the SQL Server combination of database and schema as a schema.  
  
You can modify the mapping between MySQL and SQL Server or Azure schemas.  
  
## Modifying the Target Database and Schema  
In SSMA, you can map a MySQL schema to any available SQL Server or SQL Azure schema.  
  
**To modify the database and schema**  
  
1.  In MySQL Metadata Explorer, select **Schemas**.  
  
    The **Schema Mapping** tab is also available when you select individual schemas. The list in the **Schema Mapping** tab is customized for the selected object.  
  
2.  In the right pane, click the **Schema Mapping** tab.  
  
    You will see a list of all MySQL schemas, followed by a target value. This target is denoted in a two part notation (*database.schema*) in SQL Server or SQL Azure where your objects and data will be migrated.  
  
3.  Select the row that contains the mapping that you want to change, and then click **Modify**.  
  
    In the **Choose Target Schema** dialog box, you may browse for available target database and schema or type the database and schema name in the textbox in a two part notation (database.schema) and then click **OK**.  
  
4.  The target changes on the **Schema Mapping** tab.  
  
**Modes of Mapping**  
  
-   Mapping to SQL Server  
  
You can map source database to any target database. By default source database is mapped to target SQL Server database with which you have connected using SSMA. If the target database being mapped is non-existing on SQL Server, then you will be prompted with a message **“The Database and/or schema does not exist in target SQL Server metadata. It would be created during synchronization. Do you wish to continue?”** Click Yes. Similarly, you can map schema to non-existing schema under target SQL Server database which will be created during synchronization.  
  
-   Mapping to SQL Azure  
  
You can map the source database to the connected target SQL Server database or to the any schema in the connected target SQL Server database. If you map source Schema to any non-existing schema under connected target database, then you will be prompted with a message **”Schema does not exist in target metadata. It would be created during synchronization. Do you wish to continue? ”** Click Yes.  
  
## Reverting to the Default Database and Schema  
If you customize the mapping between a MySQL schema and a SQL Server schema, you can revert the mapping back to the default values.  
  
**To revert to the default database and schema**  
  
1.  Under the schema mapping tab, select any row and click **Reset to Default** to revert to the default database and schema.  
  
## Next Steps  
If you want to analyze the conversion of MySQL objects into SQL Server or SQL Azure objects, you can [create a conversion report](http://msdn.microsoft.com/en-us/2a56a003-3b0f-453a-963c-00c9e40933ec) otherwise you can [Convert the MySQL database object definitions](http://msdn.microsoft.com/en-us/ac21850b-fb32-4704-9985-5759b7c688c7) into SQL Server or SQL Azure schemas  
  
## See Also  
[Project Settings &#40;Conversion&#41; &#40;MySQLToSQL&#41;](../../ssma/mysql/project-settings--conversion---mysqltosql-.md)  
[Connecting to Azure SQL DB &#40;MySQLToSQL&#41;](../../ssma/mysql/connecting-to-azure-sql-db--mysqltosql-.md)  
[Migrating MySQL Databases to SQL Server - Azure SQL DB &#40;MySQLToSql&#41;](../../ssma/mysql/migrating-mysql-databases-to-sql-server---azure-sql-db--mysqltosql-.md)  
[Connecting to SQL Server &#40;MySQLToSQL&#41;](../../ssma/mysql/connecting-to-sql-server--mysqltosql-.md)  
  
