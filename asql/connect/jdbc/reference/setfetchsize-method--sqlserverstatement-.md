---
title: "setFetchSize Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.setFetchSize"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 760e555e-9667-4b40-b0ba-778026ff2923
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
# setFetchSize Method (SQLServerStatement)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Gives the Microsoft JDBC Driver for SQL Server a hint as to the number of rows that should be fetched from the database when more rows are needed.  
  
## Syntax  
  
```  
  
public final void setFetchSize(int rows)  
```  
  
#### Parameters  
 *rows*  
  
 An **int** that indicates the number of rows to fetch.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setFetchSize method is specified by the setFetchSize method in the java.sql.Statement interface.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  