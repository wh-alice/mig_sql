---
title: "setQueryTimeout Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.setQueryTimeout"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 0c513265-cd0c-4b38-9494-94458c17a16d
caps.latest.revision: 8
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
# setQueryTimeout Method (SQLServerStatement)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the number of seconds the driver will wait for a [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object to run to the given number of seconds.  
  
## Syntax  
  
```  
  
public final void setQueryTimeout(int seconds)  
```  
  
#### Parameters  
 *seconds*  
  
 An **int** that indicates the number of seconds to wait, or 0 if there is no limit.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setQueryTimeout method is specified by the setQueryTimeout method in the java.sql.Statement interface.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  