---
title: "valueOf Method (java.sql.Timestamp, java.util.Calendar) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7320c383-0b06-446d-963b-7005e50324a2
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
# valueOf Method (java.sql.Timestamp, java.util.Calendar)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Creates a **DateTimeOffset** object representing a point in time at a particular offset from GMT given a java.sql.Timestamp value and a java.util.Calendar value indicating the offset.  
  
## Syntax  
  
```  
  
public static DateTimeOffset valueOf(java.sql.Timestamp timestamp, java.util.Calendar calendar)  
```  
  
#### Parameters  
 *timestamp*  
  
 Ajava.sql.Timestamp value.  
  
 *calendar*  
  
 The offset value.  The date and time components of *calendar* will be set according to the *timestamp* value.  
  
## Return Value  
 Returns a DateTimeOffset object representing the point in time given by the java.sql.Timestamp object at the given java.util.Calendar object’s time zone.  
  
## Remarks  
 This method also sets the java.util.Calendar object to the point in time given by the java.sql.Timestamp object.  
  
## See Also  
 [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md)   
 [DateTimeOffset Members](../../../connect/jdbc/reference/datetimeoffset-members.md)  
  
  