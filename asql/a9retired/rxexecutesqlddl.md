---
title: "rxExecuteSQLDDL | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-30"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "r-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
dev_langs: 
  - "R"
ms.assetid: a34cb257-9fae-448c-a7ab-08a075a5e9fb
caps.latest.revision: 4
ms.author: "jeannt"
manager: "jhubbard"
robots: noindex,nofollow
---
# rxExecuteSQLDDL
Executes a DDL command to define, manipulate, or control SQL data, but not return data.

## Usage

`rxExecuteSQLDDL(src, ...)`

## Arguments

_src_: An RxOdbcData data source object 

Other additional arguments are typically of the type `sSQLString=`, after which you would supply a  string containing a well-formed T-SQL DDL statement. 

For example, you could add create a table, add a column to a table, or truncate a table before inserting new data.

## Return Value
Returns NULL. 
If you need to verify that the DDL statement was executed successfully, you can use a try-catch statement with an ODBC call to check for table names, columns, etc.

## Example
The following example demonstrates how to load data from a text file into a new database table. 

~~~~
# Define the database where DDL statements will be executed
     
conString <- "Driver=SQL Server;Server=localhost;Database=RTest;Uid=tester;pwd=pwd;"
outOdbcDS <- RxOdbcData(table = "NewData", connectionString = conString, useFastRead=TRUE)         

# Open the ODBC connection and execute the DDL statement
rxOpen(outOdbcDS, "w")                       
rxExecuteSQLDDL(outOdbcDS, sSQLString = paste("CREATE TABLE [NewData]([Col1] [int] NULL, [Col2] [char](25) NULL, [Col3] [float] NULL);", sep=""))

# Get the new data from a text file
inTextData <- RxTextData(file = file.path("C:\\Temp"), "newdata.txt"), stringsAsFactors = TRUE, useFastRead = TRUE)
outOdbcDS <- RxOdbcData(table = "NewData",  connectionString = conString, useFastRead=TRUE) 

# Move the data from one data source to another
rxDataStep(inData = inTextData, outFile = outOdbcDS)   

~~~~

## See Also
[Comparison of rx Functions and CRAN R Functions](../a9retired/summary-of-rx-functions.md)

[ScaleR Functions for Working with SQL Server Data](../advanced-analytics/r-services/scaler-functions-for-working-with-sql-server-data.md)