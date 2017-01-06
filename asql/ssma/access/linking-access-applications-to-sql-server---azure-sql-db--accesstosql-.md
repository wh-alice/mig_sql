---
title: "Linking Access Applications to SQL Server - Azure SQL DB (AccessToSQL) | Microsoft Docs"
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
  - "Access databases, linking to SQL Azure"
  - "Access databases, linking to SQL Server"
  - "auto-increment columns"
  - "data types, unsupported"
  - "hyperlink columns"
  - "linking tables"
  - "migrating databases, post-migration issues"
  - "post-migration issues"
  - "reference, post-migration issues"
  - "refreshing linked tables"
  - "slow performance"
  - "unlinking tables"
ms.assetid: 82374ad2-7737-4164-a489-13261ba393d4
caps.latest.revision: 19
ms.author: "lonnyb"
manager: "lonnyb"
---
# Linking Access Applications to SQL Server - Azure SQL DB (AccessToSQL)
If you want to use your existing Access applications with SQL Server, you can link your original Access tables to the migrated SQL Server or SQL Azure tables. Linking modifies your Access database so that your queries, forms, reports, and data access pages use the data in the SQL Server or SQL Azure database instead of the data in your Access database.  
  
> [!NOTE]  
> Your Access tables remain in Access, but are not updated together with SQL Server or SQL Azure updates. After you link the tables and verify functionality, you might want to delete your Access tables.  
  
## Linking Access and SQL Server Tables  
When you link an Access table to a SQL Server or SQL Azure table, the Jet database engine stores connection information and table metadata, but the data is stored in SQL Server or SQL Azure. This lets your Access applications operate against the Access tables even though the actual tables and data are in SQL Server or SQL Azure.  
  
> [!NOTE]  
> If you use SQL Server Authentication, your password will be stored in clear text on the linked Access tables. We recommend using Windows Authentication.  
  
**To link tables**  
  
1.  In Access Metadata Explorer, select the tables that you want to link.  
  
2.  Right-click **Tables**, and then select **Link**.  
  
SQL Server Migration Assistant (SSMA) for Access backs up the original Access table and creates a linked table.  
  
After you link the tables, the tables in SSMA will appear with a small link icon. In Access, the tables will appear with a "linked" icon. This is a globe with an arrow pointing to it.  
  
When you open a table in Access, the data is retrieved using a keyset cursor. For large tables, this means that all the data is not retrieved at one time. However, as you browse through the table, Access will retrieve additional data as necessary.  
  
> [!IMPORTANT]  
> In order to link access tables with azure database, we need SQL Server Native Client(SNAC) version 10.5 or above.   
> You can obtain the latest version of SNAC from [Microsoft® SQL Server® 2008 R2 Feature Pack](http://go.microsoft.com/fwlink/?LinkId=196940).  
  
## Unlinking Access Tables  
When you unlink an Access table from a SQL Server or SQL Azure table, SSMA restores the original Access table and its data.  
  
**To unlink tables**  
  
1.  In Access Metadata Explorer, select the tables that you want to unlink.  
  
2.  Right-click **Tables**, and then select **Unlink**.  
  
## Linking Tables to a Different Server  
If you have linked the Access tables to one SQL Server instance, and then you want to change the links to another instance, you must relink the tables.  
  
**To link tables to a different server**  
  
1.  In Access Metadata Explorer, select the tables that you want to unlink.  
  
2.  Right-click **Tables** and then select **Unlink**.  
  
3.  Click the **Reconnect to SQL Server** button.  
  
4.  Connect to the instance of SQL Server or SQL Azure to which you want to link the Access tables.  
  
5.  In Access Metadata Explorer, select the tables that you want to link.  
  
6.  Right-click **Tables**, and then select **Link**.  
  
## Updating Linked Tables  
If the SQL Server or SQL Azure table definitions are altered, you can unlink and then re-link the tables in SSMA by using the procedures shown earlier in this topic. Or, you can update the tables by using Access.  
  
**To update linked tables by using Access**  
  
1.  Open the Access database.  
  
2.  In the **Objects** list, click **Tables**.  
  
3.  Right-click a linked table, and then select **Linked Table Manager**.  
  
4.  Select the check box next to each linked table that you want to update, and then click **OK**.  
  
## Possible Post-Migration Issues  
The following sections list issues that might occur in existing Access applications after you migrate databases from Access to SQL Server or SQL Azure and then link the tables, providing the causes and the resolutions.  
  
### Slow performance with linked tables  
**Cause:** Some queries might be slow after upsizing for the following reasons:  
  
-   The application depends on functions that do not exist in SQL Server or SQL Azure. This causes Jet to pull down tables locally to run a SELECT query.  
  
-   Queries that update or delete many rows are sent by Jet as a parameterized query for each row.  
  
**Resolution:** Convert the slow-running queries to pass-through queries, stored procedures, or views. Converting to pass-through queries will have the following issues:  
  
-   Pass-through queries cannot be modified. Modifying the query result or adding new records must be done in an alternative way, such as by having explicit **Modify** or **Add** buttons on your form that is bound to the query.  
  
-   Some queries require user input, but pass-through queries do not support user input. User input can be obtained by Visual Basic for Applications (VBA) code that prompts for parameters, or by a form that is used as an input control. In both cases, the VBA code submits the query with the user input to the server.  
  
### Auto-increment columns are not updated until the record is updated  
**Cause:** After calling RecordSet.AddNew in Jet, the auto increment column is available before the record is updated. This is not true in SQL Server or SQL Azure. The new value of the identity column new value is available only after saving the new record.  
  
**Resolution:** Run the following Visual Basic for Applications (VBA) code before accessing the identity field:  
  
```  
Recordset.Update  
Recordset.Move 0,  
Recordset.LastModified  
```  
  
### New records are not available  
**Cause:** When you add a record to a SQL Server or SQL Azure table by using VBA, if the table's unique index field has a default value, and you do not assign a value to that field, the new record does not appear until you reopen the table in SQL Server or SQL Azure. If you try to obtain a value from the new record, you receive the following error message:  
  
`Run-time error '3167' Record is deleted.`  
  
**Resolution:** When you open the SQL Server or SQL Azure table by using VBA code, include the `dbSeeChanges` option, as in the following example:  
  
`Set rs = db.OpenRecordset("TestTable", dbOpenDynaset, dbSeeChanges)`  
  
### After migration, some queries will not let the user add a new record  
**Cause:** If a query does not include all columns that are included in a unique index, you cannot add new values by using the query.  
  
**Resolution:** Ensure that all columns that are included in at least one unique index are part of the query.  
  
### You cannot modify a linked table schema with Access  
**Cause:** After migrating data and linking tables, the user cannot modify the schema of a table in Access.  
  
**Resolution:** Modify the table schema by using SQL Server Management Studio, and then update the link in Access.  
  
### Hyperlink functionality is lost after migrating data  
**Cause:** After migrating data, hyperlinks in columns lose their functionality and become simple **nvarchar(max)** columns.  
  
**Resolution:** None.  
  
### Some SQL Server data types are not supported by Access  
**Cause:** If you later update your SQL Server or SQL Azure tables to contain data types that are not supported by Access, you cannot open the table in Access.  
  
**Resolution:** You can define an Access query that returns only those rows with supported data types.  
  
## See Also  
[Migrating Access Databases to SQL Server](http://msdn.microsoft.com/en-us/76a3abcf-2998-4712-9490-fe8d872c89ca)  
  
