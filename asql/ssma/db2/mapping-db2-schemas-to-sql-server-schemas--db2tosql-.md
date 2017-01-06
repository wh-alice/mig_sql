---
title: "Mapping DB2 Schemas to SQL Server Schemas (DB2ToSQL) | Microsoft Docs"
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
ms.assetid: 05ff7bd4-e60b-4f48-a893-bc2346aa9a8a
caps.latest.revision: 5
ms.author: "lonnyb"
manager: "lonnyb"
---
# Mapping DB2 Schemas to SQL Server Schemas (DB2ToSQL)
In DB2, each database has one or more schemas. By default, SSMA migrates all objects in an DB2 schema to a SQL Server database named for the schema. However, you can customize the mapping between DB2 schemas and SQL Server databases.  
  
## DB2 and SQL Server Schemas  
An DB2 database contains schemas. An instance of SQL Server contains multiple databases, each of which can have multiple schemas.  
  
The DB2 concept of a schema maps to the SQL Server concept of a database and one of its schemas. For example, DB2 might have a schema named **HR**. An instance of SQL Server might have a database named **HR**, and within that database are schemas. One schema is the **dbo** (or database owner) schema. By default, the DB2 schema **HR** will be mapped to the SQL Server database and schema **HR.dbo**. SSMA refers to the SQL Server combination of database and schema as a schema.  
  
You can modify the mapping between DB2 and SQL Server schemas.  
  
## Modifying the Target Database and Schema  
In SSMA, you can map an DB2 schema to any available SQL Server schema.  
  
**To modify the database and schema**  
  
1.  In DB2 Metadata Explorer, select **Schemas**.  
  
    The **Schema Mapping** tab is also available when you select an individual database, the **Schemas** folder, or individual schemas. The list in the **Schema Mapping** tab is customized for the selected object.  
  
2.  In the right pane, click the **Schema Mapping** tab.  
  
    You will see a list of all DB2 schemas, followed by a target value. This target is denoted in a two part notation (*database.schema*) in SQL Server where your objects and data will be migrated.  
  
3.  Select the row that contains the mapping that you want to change, and then click **Modify**.  
  
    In the **Choose Target Schema** dialog box, you may browse for available target database and schema or type the database and schema name in the textbox in a two part notation (database.schema) and then click **OK**.  
  
4.  The target changes on the **Schema Mapping** tab.  
  
**Modes of Mapping**  
  
-   Mapping to SQL Server  
  
You can map source database to any target database. By default source database is mapped to target SQL Server database with which you have connected using SSMA. If the target database being mapped is non-existing on SQL Server, then you will be prompted with a message **“The Database and/or schema does not exist in target SQL Server metadata. It would be created during synchronization. Do you wish to continue?”** Click Yes. Similarly, you can map schema to non-existing schema under target SQL Server database which will be created during synchronization.  
  
## Reverting to the Default Database and Schema  
If you customize the mapping between an DB2 schema and a SQL Server schema, you can revert the mapping back to the default values.  
  
**To revert to the default database and schema**  
  
1.  Under the schema mapping tab, select any row and click **Reset to Default** to revert to the default database and schema.  
  
## Next Steps  
If you want to analyze the conversion of DB2 objects into SQL Server objects, you can [Data Migration Report (SSMA Common)](http://msdn.microsoft.com/en-us/bbfb9d88-5a98-4980-8d19-c5d78bd0d241).  
  
## See Also  
[Connecting to SQL Server &#40;DB2eToSQL&#41;](../../ssma/db2/connecting-to-sql-server--db2etosql-.md)  
[Migrating DB2 Databases to SQL Server &#40;DB2ToSQL&#41;](../../ssma/db2/migrating-db2-databases-to-sql-server--db2tosql-.md)  
  
