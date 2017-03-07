---
title: "SQLProcedureColumns | Microsoft Docs"
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
  - "SQLProcedureColumns function"
ms.assetid: 6671e180-0072-4de5-90f5-314306d2ba9c
caps.latest.revision: 50
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQLProcedureColumns
[!INCLUDE[SNAC_Deprecated](../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  **SQLProcedureColumns** returns one row reporting the return value attributes of all [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] stored procedures.  
  
 **SQLProcedureColumns** returns SQL_SUCCESS whether or not values exist for *CatalogName*, *SchemaName*, *ProcName*, or *ColumnName* parameters. **SQLFetch** returns SQL_NO_DATA when invalid values are used in these parameters.  
  
 **SQLProcedureColumns** can be executed on a static server cursor. An attempt to execute **SQLProcedureColumns** on an updatable (dynamic or keyset) cursor will return SQL_SUCCESS_WITH_INFO indicating that the cursor type has been changed.  
  
 The following table lists the columns returned by the result set and how they have been extended to handle the **udt** and **xml** data types through the [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client ODBC driver:  
  
|Column name|Description|  
|-----------------|-----------------|  
|SS_UDT_CATALOG_NAME|Returns the name of the catalog containing the UDT (user-defined type).|  
|SS_UDT_SCHEMA_NAME|Returns the name of the schema containing the UDT.|  
|SS_UDT_ASSEMBLY_TYPE_NAME|Returns the assembly-qualified name of the UDT.|  
|SS_XML_SCHEMACOLLECTION_CATALOG_NAME|Returns the name of the catalog where an XML schema collection name is defined. If the catalog name cannot be found, then this variable contains an empty string.|  
|SS_XML_SCHEMACOLLECTION_SCHEMA_NAME|Returns the name of the schema where an XML schema collection name is defined. If the schema name cannot be found, then this variable contains an empty string.|  
|SS_XML_SCHEMACOLLECTION_NAME|Returns the name of an XML schema collection. If the name cannot be found, then this variable contains an empty string.|  
  
## SQLProcedureColumns and Table-Valued Parameters  
 SQLProcedureColumns handles table-valued parameters in a manner similar to CLR user-defined types. In rows returned for table-valued parameters, columns have the following values:  
  
|Column name|Description/value|  
|-----------------|------------------------|  
|DATA_TYPE|SQL_SS_TABLE|  
|TYPE_NAME|The name of the table type for the table-valued parameter.|  
|COLUMN_SIZE|NULL|  
|BUFFER_LENGTH|0|  
|DECIMAL_DIGITS|The number of columns in the table-valued parameter.|  
|NUM_PREC_RADIX|NULL|  
|NULLABLE|SQL_NULLABLE|  
|REMARKS|NULL|  
|COLUMN_DEF|NULL. Table types might not have default values.|  
|SQL_DATA_TYPE|SQL_SS_TABLE|  
|SQL_DATEIME_SUB|NULL|  
|CHAR_OCTET_LENGTH|NULL|  
|IS_NULLABLE|"YES"|  
|SS_TYPE_CATALOG_NAME|Returns the name of the catalog that contains the table or CLR user-defined type.|  
|SS_TYPE_SCHEMA_NAME|Returns the name of the schema that contains the table or CLR user-defined type.|  
  
 The SS_TYPE_CATALOG_NAME and SS_TYPE_SCHEMA_NAME columns are available in [!INCLUDE[ssKatmai](../../analysis-services/data-mining/includes/sskatmai-md.md)] and later versions to return the catalog and schema, respectively, for table-valued parameters. These columns are populated for table-valued parameters, and also for CLR user-defined type parameters. (Existing schema and catalog columns for CLR user-defined type parameters are not affected by this additional functionality. They are also populated to maintain backward compatibility).  
  
 In conformance with the ODBC specification, SS_TYPE_CATALOG_NAME and SS_TYPE_SCHEMA_NAME appear before all driver-specific columns added in previous versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], and after all columns mandated by ODBC itself.  
  
 For more information about table-valued parameters, see [Table-Valued Parameters &#40;ODBC&#41;](../../relational-databases/native-client-odbc-table-valued-parameters/table-valued-parameters-odbc.md).  
  
## SQLProcedureColumns Support for Enhanced Date and Time Features  
 For the values returned for date/time types, see [Catalog Metadata](../Topic/Catalog%20Metadata.md).  
  
 For more general information, see [Date and Time Improvements &#40;ODBC&#41;](../../relational-databases/native-client-odbc-date-time/date-and-time-improvements-odbc.md).  
  
## SQLProcedureColumns Support for Large CLR UDTs  
 **SQLProcedureColumns** supports large CLR user-defined types (UDTs). For more information, see [Large CLR User-Defined Types &#40;ODBC&#41;](../../relational-databases/native-client/odbc/large-clr-user-defined-types-odbc.md).  
  
## See Also  
 [SQLProcedureColumns Function](http://go.microsoft.com/fwlink/?LinkId=59363)   
 [ODBC API Implementation Details](../../relational-databases/extended-stored-procedures-reference/odbc-api-implementation-details.md)  
  
  