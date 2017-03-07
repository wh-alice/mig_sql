---
title: "Freeing a Statement Handle | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "reusing statement handles"
  - "freeing statement handles"
  - "statements [ODBC], statement handles"
  - "SQLFreeStmt function"
  - "ODBC applications, statements"
  - "statement handles [ODBC]"
ms.assetid: 96fdff84-0ca7-460a-a240-94ee826ea41c
caps.latest.revision: 32
ms.author: "jhubbard"
manager: "jhubbard"
---
# Freeing a Statement Handle
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  It is more efficient to reuse statement handles than to drop them and allocate new ones. Before executing a new SQL statement on a statement handle, applications should verify that the current statement settings are appropriate. These include statement attributes, parameter bindings, and result set bindings. Generally, parameters and result sets for the old SQL statement must be unbound by calling [SQLFreeStmt](../../relational-databases/extended-stored-procedures-reference/sqlfreestmt.md) with the SQL_RESET_PARAMS and SQL_UNBIND options and then re-bound for the new SQL statement.  
  
 When the application has finished using the statement, it calls [SQLFreeHandle](../../relational-databases/extended-stored-procedures-reference/sqlfreehandle.md) to free the statement. Note that **SQLDisconnect** automatically frees all statements on a connection.  
  
## See Also  
 [Executing Queries &#40;ODBC&#41;](../../relational-databases/native-client-odbc-queries/executing-queries-odbc.md)  
  
  