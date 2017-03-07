---
title: "rxSqlServerDropTable | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-31"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "R"
ms.assetid: 8c976bb0-06d3-4e4d-87cb-7a989236c325
caps.latest.revision: 5
ms.author: "jeannt"
manager: "jhubbard"
robots: noindex,nofollow
---
# rxSqlServerDropTable
Executes a SQL statement that deletes an existing table.  

## Usage

`rxSqlServerDropTable(table, connectionString)`

## Arguments

_table_: A string specifying a table name or an RxSqlServerData data source that uses the _table_ argument.

_connectionString_: A string specifying the connection information.  If NULL, the connection string from the currently active compute context will be used.


## Remarks
A SQL DDL statement is prepared and passed to the ODBC driver.

## Return Value
TRUE if the table is successfully dropped; FALSE if the table did not exist or could not be dropped.

## Example

The following example checks whether a table exists and deletes the table if it does exist. 
~~~~
if (rxSqlServerTableExists(tempTable)) rxSqlServerDropTable(tempTable)
~~~~


## See Also
[Comparison of rx Functions and CRAN R Functions](../a9retired/summary-of-rx-functions.md)

[ScaleR Functions for Working with SQL Server Data](../advanced-analytics/r-services/scaler-functions-for-working-with-sql-server-data.md)