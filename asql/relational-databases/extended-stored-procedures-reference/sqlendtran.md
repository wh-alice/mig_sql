---
title: "SQLEndTran | Microsoft Docs"
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
  - "SQLEndTran function"
ms.assetid: 95cff841-c2d5-4e1e-a18d-f3d4696a5b85
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQLEndTran
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  By default, the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver closes a statement's associated cursor when **SQLEndTran** commits or rolls back an operation. Server cursors are closed unless they are static. When **SQLEndTran** commits or rolls back an operation, the behavior of the statement's associated cursor is determined by the value of the driver-specific ODBC connection attribute SQL_COPT_SS_PRESERVE_CURSORS, set by [SQLSetConnectAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetconnectattr.md).  
  
## See Also  
 [ODBC API Implementation Details](../../relational-databases/extended-stored-procedures-reference/odbc-api-implementation-details.md)   
 [SQLEndTran Function](http://go.microsoft.com/fwlink/?LinkId=59342)  
  
  