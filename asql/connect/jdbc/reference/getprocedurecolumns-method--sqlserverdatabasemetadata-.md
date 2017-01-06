---
title: "getProcedureColumns Method (SQLServerDatabaseMetaData) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
apiname: 
  - "SQLServerDatabaseMetaData.getProcedureColumns"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 4f0df8fe-3cd6-46e4-ae3c-dc23c35676b2
caps.latest.revision: 22
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# getProcedureColumns Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves a description of the stored procedure parameters and result columns.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet getProcedureColumns(java.lang.String sCatalog,  
                                              java.lang.String sSchema,  
                                              java.lang.String proc,  
                                              java.lang.String col)  
```  
  
#### Parameters  
 *sCatalog*  
  
 A **String** that contains the catalog name. Providing a null to this parameter indicates that the catalog name does not need to be used.  
  
 *sSchema*  
  
 A **String** that contains the schema name pattern. Providing a null to this parameter indicates that the schema name does not need to be used.  
  
 *proc*  
  
 A **String** that contains the procedure name pattern.  
  
 *col*  
  
 A **String** that contains the column name pattern. Providing a null to this parameter returns a row for each column.  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getProcedureColumns method is specified by the getProcedureColumns method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getProcedureColumns method will contain the following information:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|PROCEDURE_CAT|**String**|The name of the database in which the specified stored procedure resides.|  
|PROCEDURE_SCHEM|**String**|The schema for the stored procedure.|  
|PROCEDURE_NAME|**String**|The name of the stored procedure.|  
|COLUMN_NAME|**String**|The name of the column.|  
|COLUMN_TYPE|**short**|The type of the column. It can be one of the following values:<br /><br /> procedureColumnUnknown (0)<br /><br /> procedureColumnIn (1)<br /><br /> procedureColumnInOut (2)<br /><br /> procedureColumnOut (4)<br /><br /> procedureColumnReturn (5)<br /><br /> procedureColumnResult (3)|  
|DATA_TYPE|**smallint**|The SQL data type from java.sql.Types.|  
|TYPE_NAME|**String**|The name of the data type.|  
|PRECISION|**int**|The total number of significant digits.|  
|LENGTH|**int**|The length of the data in bytes.|  
|SCALE|**short**|The number of digits to the right of the decimal point.|  
|RADIX|**short**|The base for numeric types.|  
|NULLABLE|**short**|Indicates if the column can contain a null value. It can be one of the following values:<br /><br /> procedureNoNulls (0)<br /><br /> procedureNullable (1)<br /><br /> procedureNullableUnknown (2)|  
|REMARKS|**String**|The description of the procedure column.<br /><br /> <br /><br /> **Note:** SQL Server does not return a value for this column.|  
|COLUMN_DEF|**String**|The default value of the column.|  
|SQL_DATA_TYPE|**smallint**|This column is the same as the **DATA_TYPE** column, except for the **datetime** and ISO **interval** data types.|  
|SQL_DATETIME_SUB|**smallint**|The **datetime** ISO **interval** subcode if the value of **SQL_DATA_TYPE** is **SQL_DATETIME** or **SQL_INTERVAL**. For data types other than **datetime** and ISO **interval**, this column is NULL.|  
|CHAR_OCTET_LENGTH|**int**|The maximum number of bytes in the column.|  
|ORDINAL_POSITION|**int**|The index of the column within the table.|  
|IS_NULLABLE|**String**|Indicates if the column allows null values.|  
|SS_TYPE_CATALOG_NAME|**String**|The name of the catalog that contains the user-defined type (UDT).|  
|SS_TYPE_SCHEMA_NAME|**String**|The name of the schema that contains the user-defined type (UDT).|  
|SS_UDT_CATALOG_NAME|**String**|The fully-qualified name user-defined type (UDT).|  
|SS_UDT_SCHEMA_NAME|**String**|The name of the catalog where an XML schema collection name is defined. If the catalog name cannot be found, this variable contains an empty string.|  
|SS_UDT_ASSEMBLY_TYPE_NAME|**String**|The name of the schema where an XML schema collection name is defined. If the schema name cannot be found, this is an empty string.|  
|SS_XML_SCHEMACOLLECTION_CATALOG_NAME|**String**|The name of an XML schema collection. If the name cannot be found, this is an empty string.|  
|SS_XML_SCHEMACOLLECTION_SCHEMA_NAME|**String**|The name of the catalog that contains the user-defined type (UDT).|  
|SS_XML_SCHEMACOLLECTION_NAME|**String**|The name of the schema that contains the user-defined type (UDT).|  
|SS_DATA_TYPE|**tinyint**|The SQL Server data type that is used by extended stored procedures.<br /><br /> <br /><br /> **Note:** For more information about the data types returned by SQL Server, see "Data Types (Transact-SQL)" in SQL Server Books Online.|  
  
> [!NOTE]  
>  For more information about the data returned by the getProcedureColumns method, see "sp_sproc_columns (Transact-SQL)" in SQL Server Books Online.  
  
## Example  
 The following example demonstrates how to use the getProcedureColumns method to return information about the uspGetBillOfMaterials stored procedure in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database.  
  
```  
public static void executeGetProcedureColumns(Connection con) {  
   try {  
      DatabaseMetaData dbmd = con.getMetaData();  
      ResultSet rs = dbmd.getProcedureColumns(null, null, "uspGetBillOfMaterials", null);  
      ResultSetMetaData rsmd = rs.getMetaData();  
  
      // Display the result set data.  
      int cols = rsmd.getColumnCount();  
      while(rs.next()) {  
         for (int i = 1; i <= cols; i++) {  
            System.out.println(rs.getString(i));  
         }  
      }  
      rs.close();  
   }   
  
   catch (Exception e) {  
      e.printStackTrace();  
   }  
}  
```  
  
## See Also  
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  