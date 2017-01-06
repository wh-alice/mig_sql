---
title: "setClob Method (int, java.sql.Clob) | Microsoft Docs"
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
  - "SQLServerPreparedStatement.setClob"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 68d49f2c-fd8d-4abb-bfdc-e7b0fbd9a9da
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
# setClob Method (int, java.sql.Clob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the given Clob object.  
  
## Syntax  
  
```  
  
public final void setClob(int parameterIndex,  
                          java.sql.Clob clobValue)  
```  
  
#### Parameters  
 *parameterIndex*  
  
 An **int** that indicates the parameter number.  
  
 *clobValue*  
  
 A Clob object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setClob method is specified by the setClob method in the java.sql.PreparedStatement interface.  
  
## See Also  
 [SQLServerPreparedStatement Methods](../../../connect/jdbc/reference/sqlserverpreparedstatement-methods.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  