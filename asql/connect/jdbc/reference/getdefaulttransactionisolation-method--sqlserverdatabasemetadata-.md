---
title: "getDefaultTransactionIsolation Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getDefaultTransactionIsolation"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 85b867ed-de5a-4879-b3f8-bce897879077
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
# getDefaultTransactionIsolation Method (SQLServerDatabaseMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the default transaction isolation level for this database.  
  
## Syntax  
  
```  
  
public int getDefaultTransactionIsolation()  
```  
  
## Return Value  
 An **int** that indicates the default transaction isolation level.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getDefaultTransactionIsolation method is specified by the getDefaultTransactionIsolation method in the java.sql.DatabaseMetaData interface.  
  
 When using the Microsoft JDBC Driver for SQL Server with a SQL Server database, this method returns either a value of TRANSACTION_READ_COMMITTED, or the **int** value 2.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  