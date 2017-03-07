---
title: "SQLCancel | Microsoft Docs"
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
  - "SQLCancel function"
ms.assetid: d4c965ae-c1ac-4e9d-b4b9-32b561401106
caps.latest.revision: 5
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQLCancel
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  The [SQLCancel](http://go.microsoft.com/fwlink/?LinkId=203516) topic says that in ODBC 2.x, if an application calls **SQLCancel** when no processing is being done on the statement, **SQLCancel** has the same effect as **SQLFreeStmt** with the **SQL_CLOSE** option; this behavior is defined only for completeness and applications should call **SQLFreeStmt** or **SQLCloseCursor** to close cursors. But even if your [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client application sets the ODBC API version to be 3.5.x or later, the **SQLCancel** function will use the ODBC 2.x behavior.  
  
## See Also  
 [SQLCancel](http://go.microsoft.com/fwlink/?LinkId=203516)   
 [ODBC API Implementation Details](../../relational-databases/extended-stored-procedures-reference/odbc-api-implementation-details.md)  
  
  