---
title: "position Method (java.sql.Clob, long) | Microsoft Docs"
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
  - "SQLServerClob.position (java.sql.Clob, long)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b2fb34d5-1d34-4764-a795-712d9c6aa313
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
# position Method (java.sql.Clob, long)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns the character position of the specified CLOB object in the CLOB based on the given starting position.  
  
## Syntax  
  
```  
  
public long position(java.sql.Clob searchstr,  
                     long start)  
```  
  
#### Parameters  
 *searchstr*  
  
 The substring to search for.  
  
 *start*  
  
 The position at which to begin searching. The first position is 1.  
  
## Return Value  
 The position at which the substring appears, or -1 if it is not present. The first position is 1.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This position method is specified by the position method in the java.sql.Clob interface.  
  
## See Also  
 [position Method &#40;SQLServerClob&#41;](../../../connect/jdbc/reference/position-method--sqlserverclob-.md)   
 [SQLServerClob Methods](../../../connect/jdbc/reference/sqlserverclob-methods.md)   
 [SQLServerClob Members](../../../connect/jdbc/reference/sqlserverclob-members.md)   
 [SQLServerClob Class](../../../connect/jdbc/reference/sqlserverclob-class.md)  
  
  