---
title: "truncate Method (SQLServerClob) | Microsoft Docs"
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
  - "SQLServerClob.truncate"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ea3b2a03-387e-49d7-a4d6-ca6a6a354c90
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
# truncate Method (SQLServerClob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Truncates the CLOB to the given length.  
  
## Syntax  
  
```  
  
public void truncate(long len)  
```  
  
#### Parameters  
 *len*  
  
 The length, in characters, to which the CLOB should be truncated.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This truncate method is specified by the truncate method in the java.sql.Clob interface.  
  
## See Also  
 [SQLServerClob Methods](../../../connect/jdbc/reference/sqlserverclob-methods.md)   
 [SQLServerClob Members](../../../connect/jdbc/reference/sqlserverclob-members.md)   
 [SQLServerClob Class](../../../connect/jdbc/reference/sqlserverclob-class.md)  
  
  