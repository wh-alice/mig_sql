---
title: "getPrimaryKeys Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getPrimaryKeys"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ebfe236a-dc02-493e-a3ab-5353d3769e36
caps.latest.revision: 13
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
# getPrimaryKeys Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves a description of the primary key columns of the given table.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet getPrimaryKeys(java.lang.String cat,  
                                         java.lang.String schema,  
                                         java.lang.String table)  
```  
  
#### Parameters  
 *cat*  
  
 A **String** that contains the catalog name.  
  
 *schema*  
  
 A **String** that contains the schema name.  
  
 *table*  
  
 A **String** that contains the table name.  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getPrimaryKeys method is specified by the getPrimaryKeys method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getPrimaryKeys method will contain the following information:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|TABLE_CAT|String|The name of the database in which the specified table resides.|  
|TABLE_SCHEM|String|The schema for the table.|  
|TABLE_NAME|String|The name of the table.|  
|COLUMN_NAME|String|The name of the column.|  
|KEY_SEQ|short|The sequence number of the column in a multicolumn primary key.|  
|PK_NAME|String|The name of the primary key.|  
  
> [!NOTE]  
>  For more information about the data returned by the getPrimaryKeys method, see "sp_pkeys (Transact-SQL)" in SQL Server Books Online.  
  
## Example  
 The following example demonstrates how to use the getPrimaryKeys method to return information about the primary keys of the Person.Contact table in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database.  
  
```  
public static void executeGetPrimaryKeys(Connection con) {  
   try {  
      DatabaseMetaData dbmd = con.getMetaData();  
      ResultSet rs = dbmd.getPrimaryKeys("AdventureWorks", "Person", "Contact");  
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
  
  