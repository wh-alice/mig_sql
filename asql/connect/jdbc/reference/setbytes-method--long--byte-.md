---
title: "setBytes Method (long, byte) | Microsoft Docs"
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
  - "SQLServerBlob.setBytes (long.byte[])"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ffb8f107-0f9d-4410-957f-62b718e1e872
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
# setBytes Method (long, byte)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Writes the given array of bytes into the BLOB starting at the given position, and then returns the number of bytes written.  
  
## Syntax  
  
```  
  
public int setBytes(long pos,  
                    byte[] bytes)  
```  
  
#### Parameters  
 *pos*  
  
 The position (1-based) in the BLOB at which to start writing the data.  
  
 *bytes*  
  
 The array of bytes to be written into the BLOB.  
  
## Return Value  
 A **long** value that specifies the number of bytes written.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This setBytes method is specified by the setBytes method in the java.sql.Blob interface.  
  
 Data is overwritten starting at the specified position and can overrun the initial length of the BLOB. Specifying a position+1 values will append bytes. Passing a position+2 or greater (or zero or less) value will cause a position error to be thrown. Passing a zero-length **byte** array will return zero because no bytes were written.  
  
## See Also  
 [setBytes Method &#40;SQLServerBlob&#41;](../../../connect/jdbc/reference/setbytes-method--sqlserverblob-.md)   
 [SQLServerBlob Methods](../../../connect/jdbc/reference/sqlserverblob-methods.md)   
 [SQLServerBlob Members](../../../connect/jdbc/reference/sqlserverblob-members.md)   
 [SQLServerBlob Class](../../../connect/jdbc/reference/sqlserverblob-class.md)  
  
  