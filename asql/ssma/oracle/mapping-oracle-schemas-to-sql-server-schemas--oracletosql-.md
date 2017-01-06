---
title: "Mapping Oracle Schemas to SQL Server Schemas (OracleToSQL) | Microsoft Docs"
ms.custom: ""
ms.date: "07/18/2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "sql-ssma"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0edeaa08-9c5d-4e3a-bc15-b9a1f0c8a9dc
caps.latest.revision: 8
ms.author: "v-pelars"
manager: "v-thobro"
---
# Mapping Oracle Schemas to SQL Server Schemas (OracleToSQL)
In Oracle, each database has one or more schemas. By default, SSMA migrates all objects in an Oracle schema to a SQL Server database named for the schema. However, you can customize the mapping between Oracle schemas and SQL Server databases.  
  
## Oracle and SQL Server Schemas  
An Oracle database contains schemas. An instance of SQL Server contains multiple databases, each of which can have multiple schemas.  
  
The Oracle concept of a schema maps to the SQL Server concept of a database and one of its schemas. For example, Oracle might have a schema named **HR**. An instance of SQL Server might have a database named **HR**, and within that database are schemas. One schema is the **dbo** (or database owner) schema. By default, the Oracle schema **HR** will be mapped to the SQL Server database and schema **HR.dbo**. SSMA refers to the SQL Server combination of database and schema as a schema.  
  
You can modify the mapping between Oracle and SQL Server schemas.  
  
## Modifying the Target Database and Schema  
In SSMA, you can map an Oracle schema to any available SQL Server schema.  
  
**To modify the database and schema**  
  
1.  In Oracle Metadata Explorer, select **Schemas**.  
  
    The **Schema Mapping** tab is also available when you select an individual database, the **Schemas** folder, or individual schemas. The list in the **Schema Mapping** tab is customized for the selected object.  
  
2.  In the right pane, click the **Schema Mapping** tab.  
  
    You will see a list of all Oracle schemas, followed by a target value. This target is denoted in a two part notation (*database.schema*) in SQL Server where your objects and data will be migrated.  
  
3.  Select the row that contains the mapping that you want to change, and then click **Modify**.  
  
    In the **Choose Target Schema** dialog box, you may browse for available target database and schema or type the database and schema name in the textbox in a two part notation (database.schema) and then click **OK**.  
  
4.  The target changes on the **Schema Mapping** tab.  
  
**Modes of Mapping**  
  
-   Mapping to SQL Server  
  
You can map source database to any target database. By default source database is mapped to target SQL Server database with which you have connected using SSMA. If the target database being mapped is non-existing on SQL Server, then you will be prompted with a message **“The Database and/or schema does not exist in target SQL Server metadata. It would be created during synchronization. Do you wish to continue?”** Click Yes. Similarly, you can map schema to non-existing schema under target SQL Server database which will be created during synchronization.  
  
## Reverting to the Default Database and Schema  
If you customize the mapping between an Oracle schema and a SQL Server schema, you can revert the mapping back to the default values.  
  
**To revert to the default database and schema**  
  
1.  Under the schema mapping tab, select any row and click **Reset to Default** to revert to the default database and schema.  
  
## Next Steps  
If you want to analyze the conversion of Oracle objects into SQL Server objects, you can [Create a conversion report](http://msdn.microsoft.com/en-us/4de9bcf6-1346-4740-87f9-7f24a8226357). Otherwise you can [Convert the Oracle database object definitions](http://msdn.microsoft.com/en-us/e021182d-31da-443d-b110-937f5db27272) into SQL Server object definitions.  
  
## See Also  
[Connecting to SQL Server &#40;OracleToSQL&#41;](../../ssma/oracle/connecting-to-sql-server--oracletosql-.md)  
[Migrating Oracle Databases to SQL Server &#40;OracleToSQL&#41;](../../ssma/oracle/migrating-oracle-databases-to-sql-server--oracletosql-.md)  
  
