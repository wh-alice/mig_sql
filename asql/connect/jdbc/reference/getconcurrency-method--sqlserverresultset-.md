---
title: "getConcurrency Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.getConcurrency"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 207e25f4-769c-4ff3-913c-3517b06208e4
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
# getConcurrency Method (SQLServerResultSet)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the concurrency mode of this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Syntax  
  
```  
  
public int getConcurrency()  
```  
  
## Return Value  
 An **int** that indicates the concurrency type, which can be one of the following values:  
  
 ResultSet.CONCUR_READ_ONLY  
  
 ResultSet.CONCUR_UPDATABLE  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getConcurrency method is specified by the getConcurrency method in the java.sql.ResultSet interface.  
  
 The concurrency used is determined by the [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object that created the result set.  
  
 This method can be used to determine the actual concurrency. If the application selected CONCUR_READ_ONLY or CONCUR_UPDATABLE, these will be returned. If the application used default concurrency, CONCUR_READ_ONLY will be returned.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  