---
title: "Using Cursors (ODBC) | Microsoft Docs"
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
  - "SQL Server Native Client ODBC driver, cursors"
  - "ODBC cursors, about ODBC cursors"
  - "ODBC applications, cursors"
  - "cursors [ODBC]"
  - "ODBC cursors"
ms.assetid: 51322f92-0d76-44c9-9c33-9223676cf1d3
caps.latest.revision: 36
ms.author: "jhubbard"
manager: "jhubbard"
---
# Using Cursors (ODBC)
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  ODBC supports a cursor model that allows:  
  
-   Several types of cursors.  
  
-   Scrolling and positioning within a cursor.  
  
-   Several concurrency options.  
  
-   Positioned updates.  
  
 ODBC applications rarely declare and open cursors or use any cursor-related [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements. ODBC automatically opens a cursor for every result set returned from an SQL statement. The characteristics of the cursors are controlled by statement attributes set with [SQLSetStmtAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetstmtattr.md) before the SQL statement is executed. The ODBC API functions for processing result sets support the full range of cursor functionality, including fetching, scrolling, and positioned updates.  
  
 This is a comparison of how [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] scripts and ODBC applications work with cursors.  
  
|Action|[!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)]|ODBC|  
|------------|------------------------|----------|  
|Define cursor behavior|Specify through DECLARE CURSOR parameters|Set cursor attributes by using [SQLSetStmtAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetstmtattr.md)|  
|Open a cursor|DECLARE CURSOR OPEN *cursor_name*|**SQLExecDirect** or **SQLExecute**|  
|Fetch rows|FETCH|**SQLFetch** or [SQLFetchScroll](../../relational-databases/extended-stored-procedures-reference/sqlfetchscroll.md)|  
|Positioned update|WHERE CURRENT OF clause on UPDATE or DELETE|**SQLSetPos**|  
|Close a cursor|CLOSE *cursor_name* DEALLOCATE|[SQLCloseCursor](../../relational-databases/extended-stored-procedures-reference/sqlclosecursor.md)|  
  
 The server cursors implemented in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] support the functionality of the ODBC cursor model. The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client driver uses server cursors to support the cursor functionality of the ODBC API.  
  
## In This Section  
  
-   [How Cursors Are Implemented](../../relational-databases/native-client-odbc-cursors/implementation/how-cursors-are-implemented.md)  
  
-   [Cursor Types](../../relational-databases/native-client-odbc-cursors/cursor-types.md)  
  
-   [Cursor Behaviors](../../relational-databases/native-client-odbc-cursors/cursor-behaviors.md)  
  
-   [Cursor Properties](../../relational-databases/native-client-odbc-cursors/properties/cursor-properties.md)  
  
-   [Cursor Programming Details &#40;ODBC&#41;](../../relational-databases/native-client-odbc-cursors/programming/cursor-programming-details-odbc.md)  
  
-   [Scrolling and Fetching Rows](../../relational-databases/native-client-odbc-cursors/scrolling-and-fetching-rows.md)  
  
-   [Positioned Updates &#40;ODBC&#41;](../../relational-databases/native-client-odbc-cursors/positioned-updates-odbc.md)  
  
## See Also  
 [SQL Server Native Client &#40;ODBC&#41;](../../relational-databases/native-client/odbc/sql-server-native-client-odbc.md)   
 [CLOSE &#40;Transact-SQL&#41;](../Topic/CLOSE%20\(Transact-SQL\).md)   
 [Cursors](../../relational-databases/cursors.md)   
 [DEALLOCATE &#40;Transact-SQL&#41;](../Topic/DEALLOCATE%20\(Transact-SQL\).md)   
 [DECLARE CURSOR &#40;Transact-SQL&#41;](../Topic/DECLARE%20CURSOR%20\(Transact-SQL\).md)   
 [FETCH &#40;Transact-SQL&#41;](../Topic/FETCH%20\(Transact-SQL\).md)   
 [OPEN &#40;Transact-SQL&#41;](../Topic/OPEN%20\(Transact-SQL\).md)  
  
  