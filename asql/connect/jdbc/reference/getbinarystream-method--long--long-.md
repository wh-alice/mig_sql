---
title: "getBinaryStream Method (long, long) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 30bc8882-04b4-4efd-95e4-7d3a2a8c1d47
caps.latest.revision: 11
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
# getBinaryStream Method (long, long)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns an input stream object that contains a partial BLOB value by using the specified starting position and the length.  
  
## Syntax  
  
```  
  
public java.io.InputStream getBinaryStream(long pos, long length)  
```  
  
#### Parameters  
 *pos*  
  
 The offset to the first byte of the partial value to be retrieved.  
  
 *length*  
  
 The length in bytes of the partial value to be retrieved.  
  
## Return Value  
 An input stream that contains the BLOB data.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getBinaryStream method is specified by the getBinaryStream method in the java.sql.Blob interface.  
  
## See Also  
 [SQLServerBlob Methods](../../../connect/jdbc/reference/sqlserverblob-methods.md)   
 [SQLServerBlob Members](../../../connect/jdbc/reference/sqlserverblob-members.md)   
 [SQLServerBlob Class](../../../connect/jdbc/reference/sqlserverblob-class.md)  
  
  