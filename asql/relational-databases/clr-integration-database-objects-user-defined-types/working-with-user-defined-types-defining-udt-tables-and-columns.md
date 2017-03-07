---
title: "Defining UDT Tables and Columns | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "user-defined types [CLR integration], columns"
  - "UDTs [CLR integration], columns"
  - "columns [CLR integration]"
  - "user-defined types [CLR integration], tables"
  - "tables [CLR integration]"
  - "UDTs [CLR integration], tables"
  - "UDTs [CLR integration], indexes"
  - "user-defined types [CLR integration], indexes"
  - "indexes [CLR integration]"
ms.assetid: aea495f4-ce26-4952-b019-38f012625f3f
caps.latest.revision: 11
ms.author: "jhubbard"
manager: "jhubbard"
---
# Working with User-Defined Types - Defining UDT Tables and Columns
  Once the assembly containing the user-defined type (UDT) definition has been registered in a [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] database, it can be used in a column definition.  
  
## Creating Tables with UDTs  
 There is no special syntax for creating a UDT column in a table. You can use the name of the UDT in a column definition as though it were one of the intrinsic [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] data types. The following CREATE TABLE [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statement creates a table named **Points**, with a column named **ID,** which is defined as an **int** identity column and \ the primary key for the table. The second column is named **PointValue**, with a data type of **Point**. The schema name used in this example is **dbo**. Note that you must have the necessary permissions to specify a schema name. If you omit the schema name, the default schema for the database user is used.  
  
```  
CREATE TABLE dbo.Points   
(ID int IDENTITY(1,1) PRIMARY KEY, PointValue Point)  
```  
  
## Creating Indexes on UDT Columns  
 There are two options for indexing a UDT column:  
  
-   Index the full value. In this case, if the UDT is binary ordered, you can create an index over the entire UDT column by using the CREATE INDEX [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statement.  
  
-   Index UDT expressions. You can create indexes on persisted computed columns over UDT expressions. The UDT expression can be a field, method, or property of a UDT. The expression must be deterministic and must not perform data access.  
  
 For more information, see [CLR User-Defined Types](../../relational-databases/clr-integration-database-objects-user-defined-types/clr-user-defined-types.md) and [CREATE INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-index-transact-sql.md).  
  
## See Also  
 [Working with User-Defined Types in SQL Server](../../relational-databases/clr-integration-database-objects-user-defined-types/working-with-user-defined-types-in-sql-server.md)  
  
  