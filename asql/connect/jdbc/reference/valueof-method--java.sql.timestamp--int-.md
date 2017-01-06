---
title: "valueOf Method (java.sql.Timestamp, int) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 114f55af-62ab-4c60-8724-0affbbbbbcdc
caps.latest.revision: 6
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
# valueOf Method (java.sql.Timestamp, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Creates a **DateTimeOffset** object representing a point in time at a particular offset from GMT given a java.sql.Timestamp value and a value indicating the offset in minutes.  
  
## Syntax  
  
```  
  
public static DateTimeOffset valueOf(java.sql.Timestamp timestamp, int minutesOffset)  
```  
  
#### Parameters  
 *timestamp*  
  
 Ajava.sql.Timestamp value.  
  
 *minutesOffset*  
  
 The offset in minutes.  
  
## Return Value  
 Returns a DateTimeOffset object representing the point in time given by the java.sql.Timestamp object at the given offset, in minutes, from GMT.  
  
## See Also  
 [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md)   
 [DateTimeOffset Members](../../../connect/jdbc/reference/datetimeoffset-members.md)  
  
  