---
title: "getBestRowIdentifier Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getBestRowIdentifier"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: c19e9ca6-2a53-4a0c-91ab-80090c3f7229
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
# getBestRowIdentifier Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves a description of the optimal set of columns of a table that uniquely identifies a row.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet getBestRowIdentifier(java.lang.String catalog,  
                                               java.lang.String schema,  
                                               java.lang.String table,  
                                               int scope,  
                                               boolean nullable)  
```  
  
#### Parameters  
 *catalog*  
  
 A **String** that contains the catalog name.  
  
 *schema*  
  
 A **String** that contains the schema name.  
  
 *table*  
  
 A **String** that contains the table name.  
  
 *scope*  
  
 An **int** that indicates the scope of interest. Values can include the following:  
  
 bestRowTemporary (0)  
  
 bestRowTransaction (1)  
  
 bestRowSession (2)  
  
 *nullable*  
  
 **true** to include nullable columns. Otherwise, **false**.  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getBestRowIdentifier method is specified by the getBestRowIdentifier method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getBestRowIdentifier method will contain the following information:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|SCOPE|short|The scope of the returned results. It can be one of the following values:<br /><br /> bestRowTemporary (0)<br /><br /> bestRowTransaction (1)<br /><br /> bestRowSession (2)|  
|COLUMN_NAME|String|The name of the column.|  
|DATA_TYPE|short|The SQL data type from java.sql.Types.|  
|TYPE_NAME|String|The name of the data type.|  
|COLUMN_SIZE|int|The precision of the column.|  
|BUFFER_LENGTH|int|The buffer length.|  
|DECIMAL_DIGITS|short|The scale of the column.|  
|PSEUDO_COLUMN|short|Indicates if the column is a pseudo column. It can be one of the following values:<br /><br /> bestRowUnknown (0)<br /><br /> bestRowNotPseudo (1)<br /><br /> bestRowPseudo (2)|  
  
## Example  
 The following example demonstrates how to use the getBestRowIdentifier method to return information about the best row identifier for the Person.Contact table in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database.  
  
```  
public static void executeGetBestRowIdentifier(Connection con) {  
   try {  
      DatabaseMetaData dbmd = con.getMetaData();  
      ResultSet rs = dbmd.getBestRowIdentifier(null, "Person", "Contact", 0, true);  
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
  
  