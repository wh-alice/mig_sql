---
title: "Sparse Columns Support (ODBC) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 11ae959f-2fb6-4b85-ac5d-1476a82136d4
caps.latest.revision: 12
ms.author: "jhubbard"
manager: "jhubbard"
---
# Sparse Columns Support (ODBC)
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  This topic describes [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC support for sparse columns. For a sample demonstrating ODBC support for sparse columns, see [Call SQLColumns on a Table with Sparse Columns](../../../relational-databases/native-client-odbc-how-to/call-sqlcolumns-on-a-table-with-sparse-columns.md). For more information about sparse columns, see [Sparse Columns Support in SQL Server Native Client](../../../relational-databases/native-client/features/sparse-columns-support-in-sql-server-native-client.md).  
  
## Statement Metadata  
 The application parameter descriptor (APD) descriptor field and SQL_SOPT_SS_NAME_SCOPE statement attribute accepts the additional values SQL_SS_NAME_SCOPE_EXTENDED and SQL_SS_NAME_SCOPE_SPARSE_COLUMN_SET. These values specify which columns are included in the result set returned by [SQLColumns](../../../relational-databases/extended-stored-procedures-reference/sqlcolumns.md). For more information about SQL_SOPT_SS_NAME_SCOPE, see [SQLSetStmtAttr](../../../relational-databases/extended-stored-procedures-reference/sqlsetstmtattr.md).  
  
 A new implementation row descriptor (IRD), a read-only SQLSMALLINT field called SQL_CA_SS_IS_COLUMN_SET, can be used to determine if a column is an XML **column_set** value. SQL_CA_SS_IS_COLUMN_SET takes the values SQL_TRUE and SQL_FALSE.  
  
## Catalog Metadata  
 Two [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] specific columns (SS_IS_SPARSE and SS_IS_COLUMN_SET) have been added to the result set for [SQLColumns](../../../relational-databases/extended-stored-procedures-reference/sqlcolumns.md).  
  
## ODBC Function Support for Sparse Columns  
 The following ODBC functions have been updated to support sparse columns in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client:  
  
-   [SQLColAttribute](../../../relational-databases/extended-stored-procedures-reference/sqlcolattribute.md)  
  
-   [SQLColumns](../../../relational-databases/extended-stored-procedures-reference/sqlcolumns.md)  
  
-   [SQLGetDescField](../../../relational-databases/extended-stored-procedures-reference/sqlgetdescfield.md)  
  
-   [SQLSetDescField](../../../relational-databases/extended-stored-procedures-reference/sqlsetdescfield.md)  
  
-   [SQLSetStmtAttr](../../../relational-databases/extended-stored-procedures-reference/sqlsetstmtattr.md)  
  
## See Also  
 [SQL Server Native Client &#40;ODBC&#41;](../../../relational-databases/native-client/odbc/sql-server-native-client-odbc.md)  
  
  