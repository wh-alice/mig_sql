---
title: "Asynchronous Mode and SQLCancel | Microsoft Docs"
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
  - "asynchronous operations [SQL Server Native Client]"
  - "SQLCancel function"
  - "SQLSetConnectAttr function"
  - "SQL Server Native Client, asynchronous operations"
  - "ODBC functions"
  - "ODBC applications, asynchronous operations"
  - "SQL Server Native Client ODBC driver, asynchronous mode"
ms.assetid: f31702a2-df76-4589-ac3b-da5412c03dc2
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# Creating a Driver Application - Asynchronous Mode and SQLCancel
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  Some ODBC functions can operate either synchronously or asynchronously. The application can enable asynchronous operations for either a statement handle or a connection handle. If the option is set for a connection handle, it affects all statement handles on the connection handle. The application uses the following statements to enable or disable asynchronous operations:  
  
```  
SQLSetConnectAttr(hdbc, SQL_ATTR_ASYNC_ENABLE,  
                        SQL_ASYNC_ENABLE_ON, SQL_IS_INTEGER);  
SQLSetConnectAttr(hdbc, SQL_ATTR_ASYNC_ENABLE,  
                        SQL_ASYNC_ENABLE_OFF, SQL_IS_INTEGER);  
SQLSetStmtAttr(hstmt, SQL_ATTR_ASYNC_ENABLE,  
                        SQL_ASYNC_ENABLE_ON, SQL_IS_INTEGER);  
SQLSetStmtAttr(hstmt, SQL_ATTR_ASYNC_ENABLE,  
                        SQL_ASYNC_ENABLE_OFF, SQL_IS_INTEGER);  
```  
  
 When an application calls an ODBC function in synchronous mode, the driver does not return control to the application until it is notified that the server has completed the command.  
  
 When operating asynchronously, the driver immediately returns control to the application, even before sending the command to the server. The driver sets the return code to SQL_STILL_EXECUTING. The application can then perform other work.  
  
 When the application tests for completion of the command, it makes the same function call with the same parameters to the driver. If the driver has not yet received an answer from the server, it will again return SQL_STILL_EXECUTING. The application must test the command periodically until the return code is something other than SQL_STILL_EXECUTING. When the application gets some other return code, even SQL_ERROR, it can determine that the command has completed.  
  
 Sometimes a command is outstanding for a long time. If the application needs to cancel the command without waiting for a reply, it can do so by calling **SQLCancel** with the same statement handle as the outstanding command. This is the only time **SQLCancel** should be used. Some programmers use **SQLCancel** when they have processed part way through a result set and want to cancel the rest of the result set. [SQLMoreResults](../../../relational-databases/extended-stored-procedures-reference/sqlmoreresults.md) or [SQLCloseCursor](../../../relational-databases/extended-stored-procedures-reference/sqlclosecursor.md) should be used to cancel the remainder of an outstanding result set, not **SQLCancel**.  
  
## See Also  
 [Creating a SQL Server Native Client ODBC Driver Application](../../../relational-databases/native-client/odbc/creating-a-driver-application.md)  
  
  