---
title: "setCharacterStream Method (SQLServerClob) | Microsoft Docs"
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
  - "SQLServerClob.setCharacterStream"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: c02778f2-6681-4a84-a58b-2bcfac4233e4
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
# setCharacterStream Method (SQLServerClob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns a stream to be used to write a stream of Unicode characters to the CLOB, starting at the given position.  
  
## Syntax  
  
```  
  
public java.io.Writer setCharacterStream(long pos)  
```  
  
#### Parameters  
 *pos*  
  
 The position at which to start writing to the CLOB object.  
  
## Return Value  
 A stream to which Unicode encoded characters can be written.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This setCharacterStream method is specified by the setCharacterStream method in the java.sql.Clob interface.  
  
 Character data in the CLOB is overwritten by the writer starting at the specified position and can over-run the initial length of the CLOB. Specifying a position+1 value will append characters. Specifying a position+2 or greater (or zero or less) value will cause a position error to be thrown.  
  
## See Also  
 [SQLServerClob Methods](../../../connect/jdbc/reference/sqlserverclob-methods.md)   
 [SQLServerClob Members](../../../connect/jdbc/reference/sqlserverclob-members.md)   
 [SQLServerClob Class](../../../connect/jdbc/reference/sqlserverclob-class.md)  
  
  