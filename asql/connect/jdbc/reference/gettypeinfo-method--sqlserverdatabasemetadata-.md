---
title: "getTypeInfo Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getTypeInfo"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 23208f01-c1bf-4235-b29c-9051d3df59a3
caps.latest.revision: 21
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
# getTypeInfo Method (SQLServerDatabaseMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves a description of all the standard SQL types that are supported by the current database.  
  
## Syntax  
  
```  
  
public java.sql.ResultSet getTypeInfo()  
```  
  
## Return Value  
 A [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getTypeInfo method is specified by the getTypeInfo method in the java.sql.DatabaseMetaData interface.  
  
 The result set returned by the getTypeInfo method will contain the following information:  
  
|Name|Type|Description|  
|----------|----------|-----------------|  
|TYPE_NAME|**String**|The name of the data type.|  
|DATA_TYPE|**short**|The SQL data type from java.sql.Types.|  
|PRECISION|**int**|The total number of significant digits.|  
|LITERAL_PREFIX|**String**|The character or characters used before a constant.|  
|LITERAL_SUFFIX|**String**|The character or characters used to terminate a constant.|  
|CREATE_PARAMS|**String**|The description of the creation parameters for the data type.|  
|NULLABLE|**short**|Indicates if the column can contain a null value. It can be one of the following values:<br /><br /> typeNoNulls (0)<br /><br /> typeNullable (1)<br /><br /> typeNullableUnknown (2)|  
|CASE_SENSITIVE|**boolean**|Indicates if the data type is case sensitive. "**true**" if the type is case sensitive; otherwise, "**false**".|  
|SEARCHABLE|**short**|Indicates if the column can be used in a SQL WHERE clause. It can be one of the following values:<br /><br /> typePredNone (0)<br /><br /> typePredChar (1)<br /><br /> typePredBasic (2)<br /><br /> typeSeachable (3)|  
|UNSIGNED_ATTRIBUTE|**boolean**|Indicates the sign of the data type. "**true**" if the type is unsigned; otherwise, "**false**".|  
|FIXED_PREC_SCALE|**boolean**|Indicates that the data type can be a money value. "**true**" if the data type is money type; otherwise, "**false**".|  
|AUTO_INCREMENT|**boolean**|Indicates that the data type can be automatically incremented. "**true**" if the type can be auto incremented; otherwise, "**false**".|  
|LOCAL_TYPE_NAME|**String**|The localized name of the data type.|  
|MINIMUM_SCALE|**short**|The maximum number of digits to the right of the decimal point.|  
|MAXIMUM_SCALE|**short**|The minimum number of digits to the right of the decimal point.|  
|SQL_DATA_TYPE|**int**|Not supported by the JDBC driver.|  
|SQL_DATETIME_SUB|**int**|Not supported by the JDBC driver.|  
|NUM_PREC_RADIX|**int**|The number of bits or digits for calculating the maximum number that a column can hold.|  
|INTERVAL_PRECISION|**smallint**|The value of interval leading precision.|  
|USERTYPE|**smallint**|The **usertype** value from the **systypes** table. For more information, see SQL Server Books Online.|  
  
> [!NOTE]  
>  For more information about the data returned by the getTypeInfo method, see "sp_datatype_info (Transact-SQL)" in SQL Server Books Online.  
  
## Example  
 The following example demonstrates how to use the getTypeInfo method to return information about the data types used in a SQL Server 2005 (or later) database.  
  
```  
public static void executeGetTypeInfo(Connection con) {  
   try {  
      DatabaseMetaData dbmd = con.getMetaData();  
      ResultSet rs = dbmd.getTypeInfo();  
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
  
  