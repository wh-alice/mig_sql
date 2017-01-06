---
title: "getMinutesOffset Method (DateTimeOffset) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 18ba844a-ea36-42de-87da-bbc222082efe
caps.latest.revision: 7
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
# getMinutesOffset Method (DateTimeOffset)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns the offset, in minutes from GMT, of this DateTimeOffset object.  
  
## Syntax  
  
```  
  
public int getMinutesOffset()  
```  
  
## Return Value  
 The offset in minutes.  
  
## Remarks  
 For a DateTimeOffset object representing 8 March 2010, 11:35:48 -0800, getMinutesOffset returns the value 480.  
  
## See Also  
 [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md)   
 [DateTimeOffset Members](../../../connect/jdbc/reference/datetimeoffset-members.md)  
  
  