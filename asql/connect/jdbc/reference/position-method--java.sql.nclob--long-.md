---
title: "position Method (java.sql.NClob, long) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f2354278-d128-4cf4-a170-22c05fcb763b
caps.latest.revision: 13
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
# position Method (java.sql.NClob, long)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the character position at which the specified **NClob** object *searchstr* appears in this **NClob** object.  
  
## Syntax  
  
```  
  
long position(java.sql.NClob searchstr,  
              long start)  
```  
  
#### Parameters  
 *searchstr*  
  
 A NClob object for which to search.  
  
 *start*  
  
 The position at which to begin searching; the first position is 1.  
  
## Return Value  
 The position at which the substring appears, or -1 if it is not present. The first position is 1.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This position method is specified by the position method in the java.sql.NClob interface.  
  
## See Also  
 [position Method &#40;SQLServerNClob&#41;](../../../connect/jdbc/reference/position-method--sqlservernclob-.md)   
 [SQLServerNClob Methods](../../../connect/jdbc/reference/sqlservernclob-methods.md)   
 [SQLServerNClob Members](../../../connect/jdbc/reference/sqlservernclob-members.md)   
 [SQLServerNClob Class](../../../connect/jdbc/reference/sqlservernclob-class.md)  
  
  