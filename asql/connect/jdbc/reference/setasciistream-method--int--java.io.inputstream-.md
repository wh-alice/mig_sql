---
title: "setAsciiStream Method (int, java.io.InputStream) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 02c2443d-44e1-4f16-a0d5-08d197838214
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
# setAsciiStream Method (int, java.io.InputStream)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter number to the given java.io.InputStream object.  
  
## Syntax  
  
```  
  
public final void setAsciiStream(int parameterIndex,  
                                 java.io.InputStream x)  
```  
  
#### Parameters  
 *parameterIndex*  
  
 An **int** that indicates the parameter number.  
  
 *x*  
  
 A java.io.InputStream object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setAsciiStream method is specified by the setAsciiStream method in the java.sql.PreparedStatement interface.  
  
## See Also  
 [setAsciiStream Method &#40;SQLServerPreparedStatement&#41;](../../../connect/jdbc/reference/setasciistream-method--sqlserverpreparedstatement-.md)   
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)  
  
  