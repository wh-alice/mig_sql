---
title: "SQLNumResultCols | Microsoft Docs"
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
  - "SQLNumResultCols function"
ms.assetid: f79d8b3c-521e-4e50-a564-21d73ae5767b
caps.latest.revision: 33
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQLNumResultCols
[!INCLUDE[SNAC_Deprecated](../../a9retired/includes/snac-deprecated.md)]

  For executed statements, the [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] Native Client ODBC driver does not visit the server to report the number of columns in a result set. In this case, **SQLNumResultCols** does not cause a server roundtrip. Like [SQLDescribeCol](../../relational-databases/extended-stored-procedures-reference/sqldescribecol.md) and [SQLColAttribute](../../relational-databases/extended-stored-procedures-reference/sqlcolattribute.md), calling **SQLNumResultCols** on prepared but not executed statements generates a server roundtrip.  
  
 When a [!INCLUDE[tsql](../../a9notintoc/includes/tsql-md.md)] statement or statement batch returns multiple result row sets, it is possible for the number of result set columns to change from one set to another. **SQLNumResultCols** should be called for each set. When the number of columns changes, the application should rebind data values prior to fetching row results. For more information about handling multiple result set returns, see [SQLMoreResults](../../relational-databases/extended-stored-procedures-reference/sqlmoreresults.md).  
  
 Improvements in the database engine starting with [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)] allow SQLNumResultCols to obtain more accurate descriptions of the expected results. These more accurate results may differ from the values returned by SQLNumResultCols in previous versions of [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)]. For more information, see [Metadata Discovery](../../relational-databases/native-client/features/metadata-discovery.md).  
  
## See Also  
 [SQLNumResultCols Function](http://go.microsoft.com/fwlink/?LinkId=59359)   
 [ODBC API Implementation Details](../../relational-databases/extended-stored-procedures-reference/odbc-api-implementation-details.md)  
  
  