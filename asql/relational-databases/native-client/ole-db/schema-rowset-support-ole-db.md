---
title: "Schema Rowset Support (OLE DB) | Microsoft Docs"
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
  - "schema rowsets [OLE DB]"
  - "OLE DB, schema rowsets"
  - "OLE DB rowsets, schema"
  - "SQL Server Native Client OLE DB provider, schema rowsets"
  - "rowsets [OLE DB], schema"
ms.assetid: a75b4b69-b095-4690-9b31-a2b32a67489e
caps.latest.revision: 42
ms.author: "jhubbard"
manager: "jhubbard"
---
# Schema Rowset Support (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../../relational-databases/extended-stored-procedures-reference/includes/snac-deprecated.md)]

  The [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider also supports returning schema information from a linked server when processing [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] distributed queries.  
  
> [!NOTE]  
>  Although [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] supports synonyms, metadata for synonyms is not returned by [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client.  
  
 The following tables list schema rowsets and the restriction columns supported by the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client OLE DB provider.  
  
|Schema rowset|Restriction columns|  
|-------------------|-------------------------|  
|DBSCHEMA_CATALOGS|CATALOG_NAME|  
|DBSCHEMA_COLUMN_PRIVILEGES|All the restrictions are supported.<br /><br /> TABLE_CATALOG TABLE_SCHEMA TABLE_NAME COLUMN_NAME GRANTOR GRANTEE|  
|DBSCHEMA_COLUMNS|All the restrictions are supported.<br /><br /> TABLE_CATALOG TABLE_SCHEMA TABLE_NAME COLUMN_NAME<br /><br /> The following additional columns are specific to [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]:<br /><br /> COLUMN_LCID, which is the locale ID of the collation. COLUMN_LCID is the same value as a Windows LCID.<br /><br /> COLUMN_COMPFLAGS defines which comparisons are supported for the collation. The data format is the same as DBPROB_FINDCOMPAREOPS.<br /><br /> COLUMN_SORTID, which is the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] sorting style for the collation.<br /><br /> COLUMN_TDSCOLLATION, which is the [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] collation for the column.<br /><br /> IS_COMPUTED, which is VARIANT_TRUE if the column is a computed column and VARIANT_FALSE otherwise.|  
|DBSCHEMA_FOREIGN_KEYS|All restrictions are supported.<br /><br /> PK_TABLE_CATALOG PK_TABLE_SCHEMA PK_TABLE_NAME FK_TABLE_CATALOG FK_TABLE_SCHEMA FK_TABLE_NAME|  
|DBSCHEMA_INDEXES|Restrictions 1, 2, 3, and 5 are supported.<br /><br /> TABLE_CATALOG TABLE_SCHEMA INDEX_NAME TABLE_NAME|  
|DBSCHEMA_PRIMARY_KEYS|All restrictions are supported.<br /><br /> TABLE_CATALOG TABLE_SCHEMA TABLE_NAME|  
|DBSCHEMA_PROCEDURE_PARAMETERS|All restrictions are supported.<br /><br /> PROCEDURE_CATALOG PROCEDURE_SCHEMA PROCEDURE_NAME PARAMETER_NAME|  
|DBSCHEMA_PROCEDURES|Restrictions 1, 2, and 3 are supported.<br /><br /> PROCEDURE_CATALOG PROCEDURE_SCHEMA PROCEDURE_NAME<br /><br /> DBSCHEMA_PROCEDURES returns only procedures that can be executed by the current user, or for which the current user has been granted VIEW DEFINITION permission.|  
|DBSCHEMA_PROVIDER_TYPES|All restrictions are supported.<br /><br /> DATA_TYPE BEST_MATCH|  
|DBSCHEMA_SCHEMATA|All restrictions are supported.<br /><br /> CATALOG_NAME SCHEMA_NAME SCHEMA_OWNER|  
|DBSCHEMA_STATISTICS|All restrictions are supported.<br /><br /> TABLE_CATALOG TABLE_SCHEMA TABLE_NAME|  
|DBSCHEMA_TABLE_CONSTRAINTS|All restrictions are supported.<br /><br /> CONSTRAINT_CATALOG CONSTRAINT_SCHEMA CONSTRAINT_NAME TABLE_CATALOG TABLE_SCHEMA TABLE_NAME CONSTRAINT_TYPE|  
|DBSCHEMA_TABLE_PRIVILEGES|All restrictions are supported.<br /><br /> TABLE_CATALOG TABLE_SCHEMA TABLE_NAME GRANTOR GRANTEE|  
|DBSCHEMA_TABLES|All restrictions are supported.<br /><br /> TABLE_CATALOG TABLE_SCHEMA TABLE_NAME TABLE_TYPE|  
|DBSCHEMA_TABLES_INFO|All restrictions are supported.<br /><br /> TABLE_CATALOG TABLE_SCHEMA TABLE_NAME TABLE_TYPE|  
  
## In This Section  
 [Distributed Query Support in Schema Rowsets](../../../relational-databases/native-client/ole-db/schema-rowsets-distributed-query-support.md)  
  
 [LINKEDSERVERS Rowset &#40;OLE DB&#41;](../../../relational-databases/native-client/ole-db/schema-rowsets-linkedservers-rowset.md)  
  
## See Also  
 [SQL Server Native Client &#40;OLE DB&#41;](../../../relational-databases/native-client/ole-db/sql-server-native-client-ole-db.md)   
 [Using User-Defined Types](../../../relational-databases/native-client/features/using-user-defined-types.md)  
  
  