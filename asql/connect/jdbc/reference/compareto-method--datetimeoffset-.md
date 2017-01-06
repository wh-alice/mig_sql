---
title: "compareTo Method (DateTimeOffset) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e4cf2ea4-0fe9-40ce-ba79-f2a2b616997e
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
# compareTo Method (DateTimeOffset)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Compares this **DateTimeOffset** object to another **DateTimeOffset** object based on the time at GMT.  
  
## Syntax  
  
```  
  
public int compareTo(DateTimeOffset other)  
```  
  
#### Parameters  
 A [DateTimeOffset](../../../connect/jdbc/reference/datetimeoffset-class.md) value that you want to compare to the current instance.  
  
## Return Value  
 The following table describes the return value of this method:  
  
|Return value|Description|  
|------------------|-----------------|  
|0|Both **DateTimeOffset** objects represent the same point in time.|  
|negative number|This **DateTimeOffset** object represents a point in time that is before *other*.|  
|positive number|This **DateTimeOffset** object represents a point in time that is after *other*.|  
  
## Remarks  
 When two **DateTimeOffset** objects have the same time at GMT, there is no additional ordering of the objects based on the offset.  
  
## See Also  
 [DateTimeOffset Class](../../../connect/jdbc/reference/datetimeoffset-class.md)   
 [DateTimeOffset Members](../../../connect/jdbc/reference/datetimeoffset-members.md)  
  
  