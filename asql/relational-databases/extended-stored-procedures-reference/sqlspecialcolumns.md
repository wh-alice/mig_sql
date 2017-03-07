---
title: "SQLSpecialColumns | Microsoft Docs"
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
  - "SQLSpecialColumns function"
ms.assetid: dffe02ed-8f79-4c9a-af34-98130bbe5462
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQLSpecialColumns
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  When requesting row identifiers (*IdentifierType* SQL_BEST_ROWID), **SQLSpecialColumns** returns an empty result set (no data rows) for any requested scope other than SQL_SCOPE_CURROW. The generated result set indicates that the columns are only valid within this scope.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not support pseudocolumns for identifiers. The **SQLSpecialColumns** result set will identify all columns as SQL_PC_NOT_PSEUDO.  
  
 **SQLSpecialColumns** can be executed on a static cursor. An attempt to execute **SQLSpecialColumns** on an updatable (keyset-driven or dynamic) returns SQL_SUCCESS_WITH_INFO indicating the cursor type has been changed.  
  
## SQLSpecialColumns Support for Enhanced Date and Time Features  
 For information about the values returned for the columns DATA_TYPE, TYPE_NAME, COLUMN_SIZE, BUFFER_LENGTH, and DECIMAL_DIGTS for date/time types, see [Catalog Metadata](../Topic/Catalog%20Metadata.md).  
  
 For more general information, see [Date and Time Improvements &#40;ODBC&#41;](../../relational-databases/native-client-odbc-date-time/date-and-time-improvements-odbc.md).  
  
## SQLSpecialColumns Support for Large CLR UDTs  
 **SQLSpecialColumns** supports large CLR user-defined types (UDTs). For more information, see [Large CLR User-Defined Types &#40;ODBC&#41;](../../relational-databases/native-client/odbc/large-clr-user-defined-types-odbc.md).  
  
## See Also  
 [SQLSpecialColumns Function](http://go.microsoft.com/fwlink/?LinkId=59371)   
 [ODBC API Implementation Details](../../relational-databases/extended-stored-procedures-reference/odbc-api-implementation-details.md)  
  
  