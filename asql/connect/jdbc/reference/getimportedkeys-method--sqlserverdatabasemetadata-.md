---
title: "getImportedKeys Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getImportedKeys"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: dc8c1a5e-700e-4059-a5ed-5013bbb87fb6
caps.latest.revision: 14
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
# getImportedKeys Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves a description of the primary key columns that are referenced by the foreign key columns in a table.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet getImportedKeys(java.lang.String cat,  
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
 This getImportedKeys method is specified by the getImportedKeys method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getImportedKeys method will contain the following information:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|PKTABLE_CAT|**String**|The name of the catalog that contains the primary key table.|  
|PKTABLE_SCHEM|**String**|The name of the schema of the primary key table.|  
|PKTABLE_NAME|**String**|The name of the primary key table.|  
|PKCOLUMN_NAME|**String**|The column name of the primary key.|  
|FKTABLE_CAT|**String**|The name of the catalog that contains the foreign key table.|  
|FKTABLE_SCHEM|**String**|The name of the schema of the foreign key table.|  
|FKTABLE_NAME|**String**|The name of the foreign key table.|  
|FKCOLUMN_NAME|**String**|The column name of the foreign key.|  
|KEY_SEQ|**short**|The sequence number of the column in a multicolumn primary key.|  
|UPDATE_RULE|**short**|The action applied to the foreign key when the SQL operation is an update. It can be one of the following values:<br /><br /> importedKeyNoAction (3)<br /><br /> importedKeyCascade (0)<br /><br /> importedKeySetNull (2)<br /><br /> importedKeySetDefault (4)<br /><br /> importedKeyRestrict (1)|  
|DELETE_RULE|**short**|The action applied to the foreign key when the SQL operation is a deletion. It can be one of the following values:<br /><br /> importedKeyNoAction (3)<br /><br /> importedKeyCascade (0)<br /><br /> importedKeySetNull (2)<br /><br /> importedKeySetDefault (4)<br /><br /> importedKeyRestrict (1)|  
|FK_NAME|**String**|The name of the foreign key.|  
|PK_NAME|**String**|The name of the primary key.|  
|DEFERRABILITY|**short**|Indicates if the evaluation of the foreign key constraint can be deferred until a commit. It can be one of the following values:<br /><br /> importedKeyInitiallyDeferred (5)<br /><br /> importedKeyInitiallyImmediate (6)<br /><br /> importedKeyNotDeferrable (7)|  
  
> [!NOTE]  
>  For more information about the data returned by the getImportedKeys method, see "sp_fkeys (Transact-SQL)" in SQL Server Books Online.  
  
## Example  
 The following example demonstrates how to use the getImportedKeys method to return information about all the primary keys that reference the foreign keys of the Person.Address table in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database.  
  
```  
public static void executeGetImportedKeys(Connection con) {  
   try {  
      DatabaseMetaData dbmd = con.getMetaData();  
      ResultSet rs = dbmd.getImportedKeys("AdventureWorks", "Person", "Address");  
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
  
  