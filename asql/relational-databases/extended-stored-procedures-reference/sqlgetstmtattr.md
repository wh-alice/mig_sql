---
title: "SQLGetStmtAttr | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
apitype: "DLLExport"
helpviewer_keywords: 
  - "SQLGetStmtAttr function"
ms.assetid: e64f4f94-eb73-4477-9745-080b6cbdc751
caps.latest.revision: 43
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQLGetStmtAttr
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver extends SQLGetStmtAttr to expose driver-specific statement attributes.  
  
 [SQLSetStmtAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetstmtattr.md) lists statement attributes that are both read and write. This topic lists the read only statement attributes.  
  
## SQL_SOPT_SS_CURRENT_COMMAND  
 The SQL_SOPT_SS_CURRENT_COMMAND attribute exposes the current command of a command batch. The return is an integer that specifies the location of the command in the batch. The *ValuePtr* value is of type SQLLEN.  
  
## SQL_SOPT_SS_NOCOUNT_STATUS  
 The SQL_SOPT_SS_NOCOUNT_STATUS attribute indicates the current setting of the NOCOUNT option, which controls whether [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] reports the numbers of rows affected by a statement when [SQLRowCount](../../relational-databases/extended-stored-procedures-reference/sqlrowcount.md) is called. The *ValuePtr* value is of type SQLLEN.  
  
|Value|Description|  
|-----------|-----------------|  
|SQL_NC_OFF|NOCOUNT is OFF. SQLRowCount returns number of rows affected.|  
|SQL_NC_ON|NOCOUNT is ON. The number of rows affected is not returned by SQLRowCount and the returned value is 0.|  
  
 If SQLRowCount returns 0, the application should test SQL_SOPT_SS_NOCOUNT_STATUS. If SQL_NC_ON is returned, the value of 0 from SQLRowCount only indicates that [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] has not returned a row count. If SQL_NC_OFF is returned, it means that NOCOUNT is off and the value of 0 from SQLRowCount indicates that the statement did not affect any rows.  
  
 Applications should not display the value of SQLRowCount when SQL_SOPT_SS_NOCOUNT_STATUS is SQL_NC_OFF. Large batches or stored procedures can contain multiple SET NOCOUNT statements, so it cannot be assumed that SQL_SOPT_SS_NOCOUNT_STATUS remains constant. This option should be tested each time SQLRowCount returns 0.  
  
## SQL_SOPT_SS_QUERYNOTIFICATION_MSGTEXT  
 The SQL_SOPT_SS_QUERYNOTIFICATION_MSGTEXT attribute returns the message text for the query notification request.  
  
## SQLGetStmtAttr and Table-valued Parameters  
 SQLGetStmtAttr can be called to get the value of SQL_SOPT_SS_PARAM_FOCUS in the application parameter descriptor (APD) when working with table-valued parameters. For more information on SQL_SOPT_SS_PARAM_FOCUS, see [SQLSetStmtAttr](../../relational-databases/extended-stored-procedures-reference/sqlsetstmtattr.md).  
  
 For more information about table-valued parameters, see [Table-Valued Parameters &#40;ODBC&#41;](../../relational-databases/native-client-odbc-table-valued-parameters/table-valued-parameters-odbc.md).  
  
## See Also  
 [SQLSetStmtAttr Function](http://go.microsoft.com/fwlink/?LinkId=59370)   
 [ODBC API Implementation Details](../../relational-databases/extended-stored-procedures-reference/odbc-api-implementation-details.md)  
  
  