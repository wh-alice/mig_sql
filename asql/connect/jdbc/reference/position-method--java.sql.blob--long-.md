---
title: "position Method (java.sql.Blob, long) | Microsoft Docs"
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
  - "SQLServerBlob.position (java.sql.Blob.long)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ebd005e5-f6c5-4789-87f9-d2fdacd35060
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
# position Method (java.sql.Blob, long)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns the position of a specified pattern in the BLOB based on the given pattern and starting index.  
  
## Syntax  
  
```  
  
public long position(java.sql.Blob pattern,  
                     long start)  
```  
  
#### Parameters  
 *pattern*  
  
 The pattern to search for.  
  
 *start*  
  
 The start index to search at.  
  
## Return Value  
 A **long** value of the position where the pattern was found, or -1 if it was not found.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This position method is specified by the position method in the java.sql.Blob interface.  
  
## See Also  
 [position Method &#40;SQLServerBlob&#41;](../../../connect/jdbc/reference/position-method--sqlserverblob-.md)   
 [SQLServerBlob Methods](../../../connect/jdbc/reference/sqlserverblob-methods.md)   
 [SQLServerBlob Members](../../../connect/jdbc/reference/sqlserverblob-members.md)   
 [SQLServerBlob Class](../../../connect/jdbc/reference/sqlserverblob-class.md)  
  
  