---
title: "Batches of Statements | Microsoft Docs"
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
  - "statements [ODBC], batches"
  - "batches [ODBC]"
  - "ODBC applications, statements"
  - "multiple statements, batches"
  - "SQLMoreResults function"
  - "SQLExecDirect function"
ms.assetid: 057d7c1c-1428-4780-9447-a002ea741188
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# Batches of Statements
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  A batch of [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] statements contains two or more statements, separated by a semicolon (;), built into a single string passed to **SQLExecDirect** or [SQLPrepare Function](http://go.microsoft.com/fwlink/?LinkId=59360). For example:  
  
```  
SQLExecDirect(hstmt,   
    "SELECT * FROM Authors; SELECT * FROM Titles",  
    SQL_NTS);  
```  
  
 Batches can be more efficient than submitting statements separately because network traffic is often reduced. Use [SQLMoreResults](../../../relational-databases/extended-stored-procedures-reference/sqlmoreresults.md) to get positioned on the next result set when finished with the current result set.  
  
 Batches can always be used when the ODBC cursor attributes are set to the defaults of a forward-only, read-only cursor with a rowset size of 1.  
  
 If a batch is executed when using server cursors against [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the server cursor is implicitly converted to a default result set. **SQLExecDirect** or **SQLExecute** return SQL_SUCCESS_WITH_INFO, and a call to **SQLGetDiagRec** returns:  
  
```  
szSqlState = "01S02", pfNativeError = 0  
szErrorMsg = "[Microsoft][SQL Server Native Server Native Client]Cursor type changed."  
```  
  
## See Also  
 [Executing Statements &#40;ODBC&#41;](../../../relational-databases/native-client-odbc-queries/executing-statements/executing-statements-odbc.md)  
  
  