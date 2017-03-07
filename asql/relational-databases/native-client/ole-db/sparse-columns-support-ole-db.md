---
title: "Sparse Columns Support (OLE DB) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 918574b3-c62e-4937-9e5f-37310dedc8f9
caps.latest.revision: 16
ms.author: "jhubbard"
manager: "jhubbard"
---
# Sparse Columns Support (OLE DB)
[!INCLUDE[SNAC_Deprecated](../../../a9retired/includes/snac-deprecated.md)]

  This topic provides information about [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client OLE DB support for sparse columns. For more information about sparse columns, see [Sparse Columns Support in SQL Server Native Client](../../../relational-databases/native-client/features/sparse-columns-support-in-sql-server-native-client.md). For a sample, see [Display Column and Catalog Metadata for Sparse Columns &#40;OLE DB&#41;](../../../relational-databases/native-client-ole-db-how-to/display-column-and-catalog-metadata-for-sparse-columns-ole-db.md).  
  
## OLE DB Statement Metadata  
 Beginning with [!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)], a new DBCOLUMNFLAGS flag value, DBCOLUMNFLAGS_SS_ISCOLUMNSET, is available. This value should be set for columns that are **column_set** values. The DBCOLUMNFLAGS flag can be retrieved through the *dwFlags* parameter of IColumnsInfo::GetColumnsInfo and the DBCOLUMN_FLAGS column of the rowset returned by IColumnsRowset::GetColumnsRowset.  
  
## OLE DB Catalog Metadata  
 Two additional [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]-specific columns have been added to DBSCHEMA_COLUMNS.  
  
|Column name|Data type|Value/comments|  
|-----------------|---------------|---------------------|  
|SS_IS_SPARSE|DBTYPE_BOOL|If the column is a sparse column, this has the value VARIANT_TRUE; otherwise, VARIANT_FALSE.|  
|SS_IS_COLUMN_SET|DBTYPE_BOOL|If the column is the sparse **column_set** column, this has the value VARIANT_TRUE; otherwise, VARIANT_FALSE.|  
  
 Two additional schema rowsets have also been added. These rowsets have the same structure as DBSCHEMA_COLUMNS but return different content. DBSCHEMA_COLUMNS_EXTENDED returns all columns regardless of **column_set** membership. DBSCHEMA_SPARSE_COLUMN_SET returns only columns that are members of the sparse **column_set**.  
  
## OLE DB DataTypeCompatibility Behavior  
 Behavior with **DataTypeCompatibility=80** (in the connection string) is consistent with a [!INCLUDE[ssVersion2000](../../../a9notintoc/includes/ssversion2000-md.md)] client, as follows:  
  
-   The new schema rowsets are not visible, and there are no rows for them in the schema rowsets rowset.  
  
-   New columns in the COLUMNS rowset are not visible.  
  
-   DBCOLUMNFLAGS_SS_ISCOLUMNSET is not set for **column_set** columns.  
  
-   DBCOMPUTEMODE_NOTCOMPUTED is set for **column_set** columns.  
  
## OLE DB Support for Sparse Columns  
 The following OLE DB interfaces were modified in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] Native Client to support sparse columns:  
  
|Type or member function|Description|  
|-----------------------------|-----------------|  
|IColumnsInfo::GetColumnsInfo|A new DBCOLUMNFLAGS flag value DBCOLUMNFLAGS_SS_ISCOLUMNSET is set for **column_set** columns in *dwFlags*.<br /><br /> DBCOLUMNFLAGS_WRITE is set for **column_set** columns.|  
|IColumsRowset::GetColumnsRowset|A new DBCOLUMNFLAGS flag value, DBCOLUMNFLAGS_SS_ISCOLUMNSET, is set for **column_set** columns in DBCOLUMN_FLAGS.<br /><br /> DBCOLUMN_COMPUTEMODE is set to DBCOMPUTEMODE_DYNAMIC for **column_set** columns.|  
|IDBSchemaRowset::GetSchemaRowset|DBSCHEMA_COLUMNS returns two new columns: SS_IS_COLUMN_SET and SS_IS_SPARSE.<br /><br /> DBSCHEMA_COLUMNS returns only columns that are not members of a **column_set**.<br /><br /> Two new schema rowsets have been added: DBSCHEMA_COLUMNS_EXTENDED will return all columns regardless of sparseness of **column_set** membership. DBSCHEMA_SPARSE_COLUMN_SET returns only columns that are members of a **column_set**. These new rowsets have the same columns and restrictions as DBSCHEMA_COLUMNS.|  
|IDBSchemaRowset::GetSchemas|IDBSchemaRowset::GetSchemas includes the GUIDs for the new rowsets DBSCHEMA_COLUMNS_EXTENDED and DBSCHEMA_SPARSE_COLUMN_SET in the list of available schema rowsets.|  
|ICommand::Execute|If **select \* from** *table* is used, it returns all columns that are not members of the sparse **column_set**, plus an XML column that contains values of all non-null columns that are members of the sparse **column_set**, if present.|  
|IOpenRowset::OpenRowset|IOpenRowset::OpenRowset returns a rowset with the same columns as ICommand::Execute, with a **select \*** query on the same table.|  
|ITableDefinition|There is no change to this interface for sparse columns or for **column_set** columns. Applications that have to make schema modifications must execute the appropriate [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] directly.|  
  
## See Also  
 [SQL Server Native Client &#40;OLE DB&#41;](../../../relational-databases/native-client/ole-db/sql-server-native-client-ole-db.md)  
  
  