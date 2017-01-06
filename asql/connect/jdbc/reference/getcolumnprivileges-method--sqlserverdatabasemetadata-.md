---
title: "getColumnPrivileges Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getColumnPrivileges"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 4ab6a671-9573-4b95-8c23-364306c60d25
caps.latest.revision: 16
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
# getColumnPrivileges Method (SQLServerDatabaseMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves a description of the access rights for the columns in a table.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet getColumnPrivileges(java.lang.String catalog,  
                                              java.lang.String schema,  
                                              java.lang.String table,  
                                              java.lang.String col)  
```  
  
#### Parameters  
 *catalog*  
  
 A **String** that contains the catalog name.  
  
 *schema*  
  
 A **String** that contains the schema name.  
  
 *table*  
  
 A **String** that contains the table name.  
  
 *col*  
  
 A **String** that contains the column name pattern.  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getColumnPrivileges method is specified by the getColumnPrivileges method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getColumnPrivileges method will contain the following information:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|TABLE_CAT|**String**|The catalog name.|  
|TABLE_SCHEM|**String**|The table schema name.|  
|TABLE_NAME|**String**|The table name.|  
|COLUMN_NAME|**String**|The column name.|  
|GRANTOR|**String**|The object granting the access.|  
|GRANTEE|**String**|The object receiving the access.|  
|PRIVILEGE|**String**|The type of access granted.|  
|IS_GRANTABLE|**String**|Indicates if the grantee is allowed to grant access to other users.|  
  
> [!NOTE]  
>  For more information about the data returned by the getColumnPrivileges method, see "sp_column_privileges (Transact-SQL)" in SQL Server Books Online.  
  
## Example  
 The following example demonstrates how to use the getColumnPrivileges method to return the access rights for the FirstName column in the Person.Contact table in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database.  
  
```  
public static void executeGetColumnPrivileges(Connection con) {  
   try {  
      DatabaseMetaData dbmd = con.getMetaData();  
      ResultSet rs = dbmd.getColumnPrivileges("AdventureWorks", "Person", "Contact", "FirstName");  
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
  
  