---
title: "getBytes Method (SQLServerBlob) | Microsoft Docs"
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
  - "SQLServerBlob.getBytes"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: bea1b810-b5c1-466d-bdc4-561468214632
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
# getBytes Method (SQLServerBlob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Gets the BLOB data as an array of bytes.  
  
## Syntax  
  
```  
  
public byte[] getBytes(long pos,  
                       int length)  
```  
  
#### Parameters  
 *pos*  
  
 The starting position, starting at 1 (not 0).  
  
 *length*  
  
 The length of the data to get.  
  
## Return Value  
 A **byte** array containing the requested data.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getBytes method is specified by the getBytes method in the java.sql.Blob interface.  
  
 If you have a null or zero length BLOB, and try to get exactly zero bytes at position 1, an empty **byte** array is returned (byte array of length 0).  
  
 If you have a null or zero length BLOB, and try to get any length of bytes at a position other than 1, a position exception will be thrown.  
  
## See Also  
 [SQLServerBlob Methods](../../../connect/jdbc/reference/sqlserverblob-methods.md)   
 [SQLServerBlob Members](../../../connect/jdbc/reference/sqlserverblob-members.md)   
 [SQLServerBlob Class](../../../connect/jdbc/reference/sqlserverblob-class.md)  
  
  