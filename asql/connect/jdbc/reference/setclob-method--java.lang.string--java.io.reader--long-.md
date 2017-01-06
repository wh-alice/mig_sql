---
title: "setClob Method (java.lang.String, java.io.Reader, long) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: bc9fddea-134e-4440-ba54-a1f74bb40c46
caps.latest.revision: 16
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
# setClob Method (java.lang.String, java.io.Reader, long)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the specified Reader object, which is the specified number of characters long.  
  
## Syntax  
  
```  
  
public final void setClob(java.lang.String parameterName,  
            java.io.Reader value,  
            long length)  
```  
  
#### Parameters  
 *parameterName*  
  
 A **String** that contains the parameter name.  
  
 *value*  
  
 A Reader object.  
  
 *length*  
  
 A **long** that indicates the number of characters in the stream.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setClob method is specified by the setClob method in the java.sql.CallableStatement interface.  
  
## See Also  
 [setClob Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/setclob-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)  
  
  