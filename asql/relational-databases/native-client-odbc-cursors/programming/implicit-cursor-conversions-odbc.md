---
title: "Implicit Cursor Conversions (ODBC) | Microsoft Docs"
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
  - "ODBC cursors, implicit cursor conversions"
  - "implicit cursor conversions"
  - "cursors [ODBC], implicit cursor conversions"
ms.assetid: fe29a58d-8448-4512-9ffd-b414784ba338
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# Implicit Cursor Conversions (ODBC)
[!INCLUDE[SNAC_Deprecated](../../../a9retired/includes/snac-deprecated.md)]

  Applications can request a cursor type through [SQLSetStmtAttr](../../../relational-databases/extended-stored-procedures-reference/sqlsetstmtattr.md) and then execute an SQL statement that is not supported by server cursors of the type requested. A call to **SQLExecute** or **SQLExecDirect** returns SQL_SUCCESS_WITH_INFO and **SQLGetDiagRec** returns:  
  
```  
szSqlState = "01S02", *pfNativeError = 0,  
szErrorMsg="[Microsoft][SQL Server Native Client] Cursor type changed"  
```  
  
 The application can determine what type of cursor is now being used by calling **SQLGetStmtOption** set to SQL_CURSOR_TYPE. The cursor type conversion applies to only one statement. The next **SQLExecDirect** or **SQLExecute** will be done using the original statement cursor settings.  
  
## See Also  
 [Cursor Programming Details &#40;ODBC&#41;](../../../relational-databases/native-client-odbc-cursors/programming/cursor-programming-details-odbc.md)  
  
  