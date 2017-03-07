---
title: "SQLCloseCursor | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apitype: "DLLExport"
helpviewer_keywords: 
  - "SQLCloseCursor function"
ms.assetid: e7134d65-5c1c-4ae2-b119-d9b4b9a42483
caps.latest.revision: 31
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQLCloseCursor
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  **SQLCloseCursor** replaces [SQLFreeStmt](../../relational-databases/extended-stored-procedures-reference/sqlfreestmt.md) with an *Option* value of SQL_CLOSE. On receipt of **SQLCloseCursor**, the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver discards pending result set rows. Note that the statement's column and parameter bindings (if any exist) are left unaltered by **SQLCloseCursor**.  
  
## See Also  
 [SQLCloseCursor](http://go.microsoft.com/fwlink/?LinkId=59331)   
 [ODBC API Implementation Details](../../relational-databases/extended-stored-procedures-reference/odbc-api-implementation-details.md)  
  
  