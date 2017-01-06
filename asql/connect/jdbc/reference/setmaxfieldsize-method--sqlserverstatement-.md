---
title: "setMaxFieldSize Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.setMaxFieldSize"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 38f7fc1d-acad-4d10-9fc8-3c0669d93b07
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
# setMaxFieldSize Method (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the limit for the maximum number of bytes in a [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) column storing character or binary values to the given number of bytes.  
  
## Syntax  
  
```  
  
public final void setMaxFieldSize(int max)  
```  
  
#### Parameters  
 *max*  
  
 An **int** that indicates the maximum number of bytes.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setMaxFieldSize method is specified by the setMaxFieldSize method in the java.sql.Statement interface.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  