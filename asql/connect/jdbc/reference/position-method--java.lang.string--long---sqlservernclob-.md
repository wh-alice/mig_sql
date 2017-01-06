---
title: "position Method (java.lang.String, long) (SQLServerNClob) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 46d4beec-831a-449f-98b6-322a80cc499a
caps.latest.revision: 12
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
# position Method (java.lang.String, long) (SQLServerNClob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the character position at which the specified substring *searchstr* appears in the **NCLOB** value represented by this **NClob** object.  
  
## Syntax  
  
```  
  
public long position(java.lang.String searchstr,  
              long start)  
```  
  
#### Parameters  
 *searchstr*  
  
 The substring for which to search.  
  
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
  
  