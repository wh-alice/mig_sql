---
title: "setNClob Method (java.lang.String, java.io.Reader, long) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c1b95ee7-7e82-418f-8f30-948589086f63
caps.latest.revision: 14
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
# setNClob Method (java.lang.String, java.io.Reader, long)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the specified Reader object, which is the specified number of characters long.  
  
## Syntax  
  
```  
  
public final void setNClob(java.lang.String parameterName,  
              java.io.Reader reader,  
              long length)  
```  
  
#### Parameters  
 *parameterName*  
  
 A **String** that contains the parameter name.  
  
 *reader*  
  
 A Reader object.  
  
 *length*  
  
 A **long** that indicates the number of characters in the stream.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This method should be used for **NCHAR**, **NVARCHAR**, **NTEXT**, and **XML** parameter data types.  
  
 This setNClob method is specified by the setNClob method in the java.sql.CallableStatement interface.  
  
## See Also  
 [setNClob Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/setnclob-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)  
  
  