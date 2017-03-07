---
title: "Process Results (ODBC) | Microsoft Docs"
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
  - "processing results [ODBC]"
ms.assetid: 4810fe3f-78ee-4f0d-8bcc-a4659fbcf46f
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# Processing Results - Process Results
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

Processing results in an ODBC application involves first determining the characteristics of the result set, then retrieving the data into program variables by using either [SQLBindCol](../../relational-databases/extended-stored-procedures-reference/sqlbindcol.md) or [SQLGetData](../../relational-databases/extended-stored-procedures-reference/sqlgetdata.md).  
  
### To process results  
  
1.  Retrieve result set information.  
  
2.  If bound columns are used, for each column you want to bind to, call [SQLBindCol](../../relational-databases/extended-stored-procedures-reference/sqlbindcol.md) to bind a program buffer to the column.  
  
3.  For each row in the result set:  
  
    -   Call [SQLFetch](http://go.microsoft.com/fwlink/?LinkId=58401) to get the next row.  
  
    -   If bound columns are used, use the data now available in the bound column buffers.  
  
    -   If unbound columns are used, call [SQLGetData](../../relational-databases/extended-stored-procedures-reference/sqlgetdata.md) one or more times to get the data for unbound columns after the last bound column. Calls to **SQLGetData** should be in increasing order of column number.  
  
    -   Call **SQLGetData** multiple times to get data from a text or image column.  
  
4.  When [SQLFetch](http://go.microsoft.com/fwlink/?LinkId=58401) signals the end of the result set by returning SQL_NO_DATA, call [SQLMoreResults](../../relational-databases/extended-stored-procedures-reference/sqlmoreresults.md) to determine if another result set is available.  
  
    -   If it returns SQL_SUCCESS, another result set is available.  
  
    -   If it returns SQL_NO_DATA, no more result sets are available.  
  
    -   If it returns SQL_SUCCESS_WITH_INFO or SQL_ERROR, call [SQLGetDiagRec](http://go.microsoft.com/fwlink/?LinkId=58402) to determine if the output from a PRINT or RAISERROR statement is available.  
  
         If bound statement parameters are used for output parameters or the return value of a stored procedure, use the data now available in the bound parameter buffers. Also, when bound parameters are used, each call to [SQLExecute](http://go.microsoft.com/fwlink/?LinkId=58400) or [SQLExecDirect](http://go.microsoft.com/fwlink/?LinkId=58399) will have executed the SQL statement *S* times, where *S* is the number of elements in the array of bound parameters. This means that there will be *S* sets of results to process, where each set of results comprises all of the result sets, output parameters, and return codes usually returned by a single execution of the SQL statement.  
  
    > [!NOTE]  
    >  When a result set contains compute rows, each compute row is made available as a separate result set. These compute result sets are interspersed within the normal rows and break normal rows into multiple result sets.  
  
5.  Optionally, call [SQLFreeStmt](../../relational-databases/extended-stored-procedures-reference/sqlfreestmt.md) with SQL_UNBIND to release any bound column buffers.  
  
6.  If another result set is available, go to Step 1.  
  
> [!NOTE]  
>  To cancel processing a result set before [SQLFetch](http://go.microsoft.com/fwlink/?LinkId=58401) returns SQL_NO_DATA, call [SQLCloseCursor](../../relational-databases/extended-stored-procedures-reference/sqlclosecursor.md).  
  
## See Also  
[Retrieve Result Set Information &#40;ODBC&#41;](../Topic/Retrieve%20Result%20Set%20Information%20\(ODBC\).md)   
  
  