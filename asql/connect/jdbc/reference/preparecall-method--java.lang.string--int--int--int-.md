---
title: "prepareCall Method (java.lang.String, int, int, int) | Microsoft Docs"
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
  - "SQLServerConnection.prepareCall (java.lang.String, int, int, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 81104fd5-75b0-4540-9f48-c3dbf59a8564
caps.latest.revision: 9
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
# prepareCall Method (java.lang.String, int, int, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Creates a [SQLServerCallableStatement](../../../connect/jdbc/reference/sqlservercallablestatement-class.md) object that generates [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) objects with the given type, concurrency, and holdability.  
  
## Syntax  
  
```  
  
public java.sql.CallableStatement prepareCall(java.lang.String sql,  
                                              int nType,  
                                              int nConcur,  
                                              int nHold)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** containing an SQL statement.  
  
 *nType*  
  
 An **int** that indicates the result set type.  
  
 *nConcur*  
  
 An **int** that indicates the result set concurrency type.  
  
 *nHold*  
  
 An **int** that indicates the result set holdability.  
  
## Return Value  
 A CallableStatement object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This prepareCall method is specified by the prepareCall method in the java.sql.Connection interface.  
  
## See Also  
 [prepareCall Method &#40;SQLServerConnection&#41;](../../../connect/jdbc/reference/preparecall-method--sqlserverconnection-.md)   
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  