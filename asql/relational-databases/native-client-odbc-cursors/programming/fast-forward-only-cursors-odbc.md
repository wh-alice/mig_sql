---
title: "Fast Forward-Only Cursors (ODBC) | Microsoft Docs"
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
  - "fast forward-only cursors"
  - "forward-only cursors"
  - "cursors [ODBC], fast forward-only"
  - "ODBC cursors, fast forward-only"
ms.assetid: 0707d07e-fc95-42ed-9280-b7e508ac8c62
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# Fast Forward-Only Cursors (ODBC)
[!INCLUDE[SNAC_Deprecated](../../../a9retired/includes/snac-deprecated.md)]

  When connected to an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver supports performance optimizations for forward-only, read-only cursors. Fast forward-only cursors are implemented internally by the driver and server in a manner very similar to default result sets. Besides having high performance, fast forward-only cursors also have these characteristics:  
  
-   [SQLGetData](../../../relational-databases/extended-stored-procedures-reference/sqlgetdata.md) is not supported. The result set columns must be bound to program variables.  
  
-   The server automatically closes the cursor when the end of the cursor is detected. The application must still call [SQLCloseCursor](../../../relational-databases/extended-stored-procedures-reference/sqlclosecursor.md) or [SQLFreeStmt](../../../relational-databases/extended-stored-procedures-reference/sqlfreestmt.md)(SQL_CLOSE), but the driver does not have to send the close request to the server. This saves a roundtrip across the network to the server.  
  
 The application requests fast forward-only cursors using the driver-specific statement attribute SQL_SOPT_SS_CURSOR_OPTIONS. When set to SQL_CO_FFO, fast forward-only cursors are enabled without autofetch. When set to SQL_CO_FFO_AF, the autofetch option is also enabled. For more information about autofetch, see [Using Autofetch with ODBC Cursors](../../../relational-databases/native-client-odbc-cursors/programming/using-autofetch-with-odbc-cursors.md).  
  
 Fast forward-only cursors with autofetch can be used to retrieve a small result set with only one roundtrip to the server. In these steps, *n* is the number of rows to be returned:  
  
1.  Set SQL_SOPT_SS_CURSOR_OPTIONS to SQL_CO_FFO_AF.  
  
2.  Set SQL_ATTR_ROW_ARRAY_SIZE to *n* + 1.  
  
3.  Bind the result columns to arrays of *n* + 1 elements (to be safe if *n* + 1 rows are actually fetched).  
  
4.  Open the cursor with either **SQLExecDirect** or **SQLExecute**.  
  
5.  If the return status is SQL_SUCCESS, then call **SQLFreeStmt** or **SQLCloseCursor** to close the cursor. All data for the rows will be in the bound program variables.  
  
 With these steps, the **SQLExecDirect** or **SQLExecute** sends a cursor open request with the autofetch option enabled. On that single request from the client, the server:  
  
-   Opens the cursor.  
  
-   Builds the result set and sends the rows to the client.  
  
-   Because the rowset size was set to 1 more than the number of rows in the result set, the server detects the end of the cursor and closes the cursor.  
  
## See Also  
 [Cursor Programming Details &#40;ODBC&#41;](../../../relational-databases/native-client-odbc-cursors/programming/cursor-programming-details-odbc.md)  
  
  