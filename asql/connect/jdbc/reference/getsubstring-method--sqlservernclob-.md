---
title: "getSubString Method (SQLServerNClob) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 1d91c930-1bac-4da9-b9a5-ac2cfd31541b
caps.latest.revision: 10
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
# getSubString Method (SQLServerNClob)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves a copy of the specified substring in the **NCLOB** based on the specified starting position and the number of characters to copy.  
  
## Syntax  
  
```  
  
public java.lang.String getSubString(long pos,  
                                  int length)  
```  
  
#### Parameters  
 *pos*  
  
 The first character of the substring to be extracted. The first character is at position 1.  
  
 *length*  
  
 The number of consecutive characters to be copied.  
  
## Return Value  
 A **String** that is the specified substring in the **NCLOB**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getSubString method is specified by the getSubString method in the java.sql.NClob interface.  
  
 Trying to get zero characters from a null or zero-length NCLOB returns an empty string. Trying to get any length of characters at any position other than position 1 in a zero-length NCLOB will cause a position exception to be thrown.  
  
## See Also  
 [SQLServerNClob Methods](../../../connect/jdbc/reference/sqlservernclob-methods.md)   
 [SQLServerNClob Members](../../../connect/jdbc/reference/sqlservernclob-members.md)   
 [SQLServerNClob Class](../../../connect/jdbc/reference/sqlservernclob-class.md)  
  
  