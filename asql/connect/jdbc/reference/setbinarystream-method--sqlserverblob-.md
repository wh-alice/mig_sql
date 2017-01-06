---
title: "setBinaryStream Method (SQLServerBlob) | Microsoft Docs"
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
  - "SQLServerBlob.setBinaryStream"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: abcec31f-1a60-4765-9725-8cf7e9f1f8ab
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
# setBinaryStream Method (SQLServerBlob)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves a stream that can be used to write to the BLOB value.  
  
## Syntax  
  
```  
  
public java.io.OutputStream setBinaryStream(long pos)  
```  
  
#### Parameters  
 *Pos*  
  
 The position in the BLOB value at which to start writing)  
  
## Return Value  
 An output stream.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This setBinaryStream method is specified by the setBinaryStream method in the java.sql.Blob interface.  
  
 Data in the BLOB is overwritten by the output stream starting at the specified position and can over-run the initial length of the BLOB. Specifying a position+1 value will append bytes. Passing a position+2 or greater (or zero or less) value will cause a position error to be thrown.  
  
## See Also  
 [SQLServerBlob Methods](../../../connect/jdbc/reference/sqlserverblob-methods.md)   
 [SQLServerBlob Members](../../../connect/jdbc/reference/sqlserverblob-members.md)   
 [SQLServerBlob Class](../../../connect/jdbc/reference/sqlserverblob-class.md)  
  
  