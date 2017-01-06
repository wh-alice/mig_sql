---
title: "getResultSetHoldability Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData,getResultSetHoldability"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: f0bd6283-83ab-4a0a-b825-ec4cdccf03e1
caps.latest.revision: 11
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
# getResultSetHoldability Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the default holdability of result sets for this database.  
  
## Syntax  
  
```  
  
public int getResultSetHoldability()  
```  
  
## Return Value  
 An **int** that indicates the default holdability.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getResultSetHoldability method is specified by the getResultSetHoldability method in the java.sql.DatabaseMetaData interface.  
  
 When using the Microsoft JDBC Driver for SQL Server with a SQL Server database, this methods returns 1, which is equivalent to the ResultSet.HOLD_CURSORS_OVER_COMMIT constant.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  