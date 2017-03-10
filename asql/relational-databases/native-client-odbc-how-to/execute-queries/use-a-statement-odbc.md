---
title: "Use a Statement (ODBC) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "statements [ODBC]"
ms.assetid: f7573f8f-6f21-4e03-8dd5-a5f2ea4878cc
caps.latest.revision: 15
ms.author: "jhubbard"
manager: "jhubbard"
---
# Use a Statement (ODBC)
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

    
### To use a statement  
  
1.  Call [SQLAllocHandle](http://go.microsoft.com/fwlink/?LinkId=58396) with a *HandleType* of SQL_HANDLE_STMT to allocate a statement handle.  
  
2.  Optionally, call [SQLSetStmtAttr](../../../relational-databases/extended-stored-procedures-reference/sqlsetstmtattr.md) to set statement options or [SQLGetStmtAttr](../../../relational-databases/extended-stored-procedures-reference/sqlgetstmtattr.md) to get statement attributes.  
  
     To use server cursors, you must set cursor attributes to values other than their defaults.  
  
3.  Optionally, if the statement will be executed several times, prepare the statement for execution with [SQLPrepare Function](http://go.microsoft.com/fwlink/?LinkId=59360).  
  
4.  Optionally, if the statement has bound parameter markers, bind the parameter markers to program variables by using [SQLBindParameter](../../../relational-databases/extended-stored-procedures-reference/sqlbindparameter.md). If the statement was prepared, you can call [SQLNumParams](http://go.microsoft.com/fwlink/?LinkId=58404) and [SQLDescribeParam](../../../relational-databases/extended-stored-procedures-reference/sqldescribeparam.md) to find the number and characteristics of the parameters.  
  
5.  Execute a statement directly by using SQLExecDirect.  
  
     \- or -  
  
     If the statement was prepared, execute it multiple times by using [SQLExecute](http://go.microsoft.com/fwlink/?LinkId=58400).  
  
     \- or -  
  
     Call a catalog function, which returns results.  
  
6.  Process the results by binding the result set columns to program variables, by moving data from the result set columns to program variables by using [SQLGetData](../../../relational-databases/extended-stored-procedures-reference/sqlgetdata.md), or a combination of the two methods.  
  
     Fetch through the result set of a statement one row at a time.  
  
     \- or -  
  
     Fetch through the result set several rows at a time by using a block cursor.  
  
     \- or -  
  
     Call [SQLRowCount](../../../relational-databases/extended-stored-procedures-reference/sqlrowcount.md) to determine the number of rows affected by an INSERT, UPDATE, or DELETE statement.  
  
     If the SQL statement can have multiple result sets, call [SQLMoreResults](../../../relational-databases/extended-stored-procedures-reference/sqlmoreresults.md) at the end of each result set to see if there are additional result sets to process.  
  
7.  After results are processed, the following actions may be necessary to make the statement handle available to execute a new statement:  
  
    -   If you did not call [SQLMoreResults](../../../relational-databases/extended-stored-procedures-reference/sqlmoreresults.md) until it returned SQL_NO_DATA, call [SQLCloseCursor](../../../relational-databases/extended-stored-procedures-reference/sqlclosecursor.md) to close the cursor.  
  
    -   If you bound parameter markers to program variables, call [SQLFreeStmt](../../../relational-databases/extended-stored-procedures-reference/sqlfreestmt.md) with *Option* set to SQL_RESET_PARAMS to free the bound parameters.  
  
    -   If you bound result set columns to program variables, call [SQLFreeStmt](../../../relational-databases/extended-stored-procedures-reference/sqlfreestmt.md) with *Option* set to SQL_UNBIND to free the bound columns.  
  
    -   To reuse the statement handle, go to Step 2.  
  
8.  Call [SQLFreeHandle](../../../relational-databases/extended-stored-procedures-reference/sqlfreehandle.md) with a *HandleType* of SQL_HANDLE_STMT to free the statement handle.  
  
## See Also  
 [Executing Queries How-to Topics &#40;ODBC&#41;](../../../relational-databases/native-client-odbc-how-to/execute-queries/executing-queries-how-to-topics-odbc.md)  
  
  