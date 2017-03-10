---
title: "ODBC SQL Type for Table-Valued Parameters | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
helpviewer_keywords: 
  - "SQL_SS_TABLE"
ms.assetid: 6725bfb9-5f10-4115-be09-fd9c9f5779ea
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
---
# ODBC SQL Type for Table-Valued Parameters
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  Support for table-valued parameters is provided by a new ODBC SQL type, SQL_SS_TABLE.  
  
## Remarks  
 SQL_SS_TABLE cannot be converted to any other ODBC or [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] data type.  
  
 If SQL_SS_TABLE is used as a C data type in the *ValueType* parameter of SQLBindParameter, or an attempt is made to set SQL_DESC_TYPE in an application parameter descriptor (APD) record to SQL_SS_TABLE, SQL_ERROR is returned and a diagnostic record is generated with SQLSTATE=HY003, "Invalid application buffer type".  
  
 If SQL_DESC_TYPE is set to SQL_SS_TABLE in an IPD record and the corresponding application parameter descriptor record is not SQL_C_DEFAULT, SQL_ERROR is returned and a diagnostic record is generated with SQLSTATE=HY003, "Invalid application buffer type". This can occur with the *ParameterType* of a SQLSetDescField, SQLSetDescRec or SQLBindParameter.  
  
 If the *TargetType* parameter is SQL_SS_TABLE when calling SQLGetData, SQL_ERROR is returned and a diagnostic record is generated with SQLSTATE=HY003, "Invalid application buffer type".  
  
 A table-valued parameter column cannot be bound as type SQL_SS_TABLE. If **SQLBindParameter** is called with *ParameterType* set to SQL_SS_TABLE, SQL_ERROR is returned and a diagnostic record is generated with SQLSTATE=HY004, "Invalid SQL data type". This can also occur with SQLSetDescField and SQLSetDescRec.  
  
 Table-valued parameter column values have the same data conversion options as parameters and result columns.  
  
 A table-valued parameter can only be an input parameter in [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] or later. If an attempt is made to set SQL_DESC_PARAMETER_TYPE to a value other than SQL_PARAM_INPUT via SQLBindParameter or SQLSetDescField, SQL_ERROR is returned and a diagnostic record is added to the statement with SQLSTATE=HY105 and the message "Invalid parameter type".  
  
 Table-valued parameter columns cannot use SQL_DEFAULT_PARAM in *StrLen_or_IndPtr*, because per-row default values are not supported with table-valued parameters. Instead, an application can set the column attribute SQL_CA_SS_COL_HAS_DEFAULT_VALUE to 1. This means that the column will have default values for all rows. If *StrLen_or_IndPtr* is set to SQL_DEFAULT_PARAM, SQLExecute or SQLExecDirect will return SQL_ERROR, and a diagnostic record will be added to the statement with SQLSTATE=HY090 and the message "Invalid string or buffer length".  
  
## See Also  
 [Table-Valued Parameters &#40;ODBC&#41;](../../relational-databases/native-client-odbc-table-valued-parameters/table-valued-parameters-odbc.md)  
  
  