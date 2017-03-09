---
title: "Metadata Discovery | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: ec3c0f4f-f838-43ce-85f2-cf2761e2aac5
caps.latest.revision: 13
ms.author: "jhubbard"
manager: "jhubbard"
---
# Metadata Discovery
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The metadata discovery improvement in [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] allows [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client applications to ensure that column or parameter metadata returned from the execution of a query is identical to or compatible with the metadata format you specified before you executed the query. You will receive an error if the metadata returned after query execution is not compatible with the metadata format you specified before query execution.  
  
 In bcp and ODBC functions, and IBCPSession and IBCPSession2 interfaces, you can now specify a delayed read (delayed metadata discovery) to avoid metadata discovery for query out operations. This improves performance and eliminates metadata discovery failures.  
  
 If you develop an application using [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client in [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] but connect to a server version earlier than [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)], metadata discovery functionality will correspond to the version of the server.  
  
## Remarks  
 The following bcp functions have been enhanced in [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] to provide improved metadata discovery:  
  
-   [bcp_columns](../../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-columns.md)  
  
-   [bcp_control](../../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-control.md)  
  
-   [bcp_getcolfmt](../../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-getcolfmt.md)  
  
-   [bcp_readfmt](../../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-readfmt.md)  
  
-   [bcp_setcolfmt](../../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-setcolfmt.md)  
  
 You will also see a performance improvement when specifying metadata format using [bcp_setbulkmode](../../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-setbulkmode.md).  
  
 [bcp_control](../../../relational-databases/native-client-odbc-extensions-bulk-copy-functions/bcp-control.md) has a new *eOption* to control the behavior of bcp_readfmt: **BCPDELAYREADFMT**.  
  
 The following ODBC functions have been enhanced in [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] to provide improved metadata discovery:  
  
-   [SQLNumResultCols](../../../relational-databases/extended-stored-procedures-reference/sqlnumresultcols.md)  
  
-   [SQLDescribeCol](../../../relational-databases/extended-stored-procedures-reference/sqldescribecol.md)  
  
-   [SQLNumParams](../../../relational-databases/extended-stored-procedures-reference/sqlnumparams.md)  
  
-   [SQLDescribeParam](../../../relational-databases/extended-stored-procedures-reference/sqldescribeparam.md)  
  
 The following OLE DB member functions have been enhanced in [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)] to provide improved metadata discovery:  
  
-   IColumnsInfo::GetColumnInfo  
  
-   IColumnsRowset::GetColumnsRowset  
  
-   ICommandWithParameters::GetParameterInfo (see [ICommandWithParameters](../../../relational-databases/native-client-ole-db-interfaces/icommandwithparameters.md) for more information)  
  
 You will also see a performance improvement when specifying metadata format using IBCPSession::BCPSetBulkMode  
  
 The improved metadata discovery in [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client is possible because of the addition of two stored procedures in [!INCLUDE[ssSQL11](../../../analysis-services/includes/sssql11-md.md)]:  
  
-   sp_describe_first_result_set  
  
-   sp_describe_undeclared_parameters  
  
## See Also  
 [SQL Server Native Client Features](../../../relational-databases/native-client/features/sql-server-native-client-features.md)  
  
  