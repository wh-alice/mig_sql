---
title: "getTables Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getTables"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: a7514673-3457-4541-9560-28a8284ad9e3
caps.latest.revision: 15
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
# getTables Method (SQLServerDatabaseMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves a description of the tables that are available in the given catalog, schema, or table name pattern.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet getTables(java.lang.String catalog,  
                                    java.lang.String schema,  
                                    java.lang.String table,  
                                    java.lang.String[] types)  
```  
  
#### Parameters  
 *catalog*  
  
 A **String** that contains the catalog name. Providing a null to this parameter indicates that the catalog name does not need to be used.  
  
 *schema*  
  
 A **String** that contains the schema name pattern. Providing a null to this parameter indicates that the schema name does not need to be used.  
  
 *tableName*  
  
 A **String** that contains the table name pattern.  
  
 *types*  
  
 An array of strings that contain the types of tables to include. Null indicates that all types of tables should be included.  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getTables method is specified by the getTables method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getTables method will contain the following information:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|TABLE_CAT|**String**|The name of the database in which the specified table resides.|  
|TABLE_SCHEM|**String**|The table schema name.|  
|TABLE_NAME|**String**|The table name.|  
|TABLE_TYPE|**String**|The table type.|  
|REMARKS|**String**|The description of the table.<br /><br /> **Note:**  SQL Server does not return a value for this column.|  
|TYPE_CAT|**String**|Not supported by the JDBC driver.|  
|TYPE_SCHEM|**String**|Not supported by the JDBC driver.|  
|TYPE_NAME|**String**|Not supported by the JDBC driver.|  
|SELF_REFERENCING_COL_NAME|**String**|Not supported by the JDBC driver.|  
|REF_GENERATION|**String**|Not supported by the JDBC driver.|  
  
> [!NOTE]  
>  For more information about the data returned by the getTables method, see "sp_tables (Transact-SQL)" in SQL Server Books Online.  
  
## Example  
 The following example demonstrates how to use the getTables method to return the table description information for the Person.Contact table in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database.  
  
```  
public static void executeGetTables(Connection con) {  
   try {  
      DatabaseMetaData dbmd = con.getMetaData();  
      ResultSet rs = dbmd.getTables("AdventureWorks", "Person", "Contact", null);  
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
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  