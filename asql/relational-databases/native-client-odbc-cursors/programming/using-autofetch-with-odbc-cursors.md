---
title: "Using Autofetch with ODBC Cursors | Microsoft Docs"
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
  - "ODBC cursors, autofetch"
  - "autofetch option"
  - "cursors [ODBC], autofetch"
ms.assetid: 57bd55f4-8945-4d8d-9f58-d30c81d2a514
caps.latest.revision: 30
ms.author: "jhubbard"
manager: "jhubbard"
---
# Using Autofetch with ODBC Cursors
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  When connected to an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver supports an autofetch option when using any server cursor type. With autofetch, the **SQLExecute** or **SQLExecDirect** function that opens the cursor also has an implicit [SQLFetchScroll](../../../relational-databases/extended-stored-procedures-reference/sqlfetchscroll.md)(SQL_FIRST) function. The rows comprising the first rowset are returned to the bound application variables as part of the statement execution, saving another roundtrip across the network to the server. [SQLGetData](../../../relational-databases/extended-stored-procedures-reference/sqlgetdata.md) is not supported when the autofetch option is enabled; the result set columns must be bound to program variables.  
  
 Applications request autofetch by setting the driver-specific SQL_SOPT_SS_CURSOR_OPTIONS statement attribute to SQL_CO_AF.  
  
## See Also  
 [Cursor Programming Details &#40;ODBC&#41;](../../../relational-databases/native-client-odbc-cursors/programming/cursor-programming-details-odbc.md)  
  
  