---
title: "getCrossReference Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getCrossReference"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 099dd0bf-b017-479d-9696-f5b06f4c6bf9
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
# getCrossReference Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves a description of the foreign key columns in the given foreign key table that references the primary key columns of the given primary key table.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet getCrossReference(java.lang.String cat1,  
                                            java.lang.String schem1,  
                                            java.lang.String tab1,  
                                            java.lang.String cat2,  
                                            java.lang.String schem2,  
                                            java.lang.String tab2)  
```  
  
#### Parameters  
 *cat1*  
  
 A **String** that contains the catalog name of the table that contains the primary key.  
  
 *schem1*  
  
 A **String** that contains the schema name of the table that contains the primary key.  
  
 *tab1*  
  
 A **String** that contains the table name of the table that contains the primary key.  
  
 *cat2*  
  
 A **String** that contains the catalog name of the table that contains the foreign key.  
  
 *schem2*  
  
 A **String** that contains the schema name of the table that contains the foreign key.  
  
 *tab2*  
  
 A **String** that contains the table name of the table that contains the foreign key.  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getCrossReference method is specified by the getCrossReference method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getCrossReference method will contain the following information:  
  
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
>  For more information about the data returned by the getCrossReference method, see "sp_fkeys (Transact-SQL)" in SQL Server Books Online.  
  
## Example  
 The following example demonstrates how to use the getCrossReference method to return information about the primary and foreign key relationship between the Person.Contact and HumanResources.Employee tables in the [AdventureWorks](http://msftdbprodsamples.codeplex.com/) sample database.  
  
```  
public static void executeGetCrossReference(Connection con) {  
   try {  
      DatabaseMetaData dbmd = con.getMetaData();  
      ResultSet rs = dbmd.getCrossReference("AdventureWorks", "Person", "Contact", null, "HumanResources", "Employee");  
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
  
  