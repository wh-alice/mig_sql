---
title: "getRef Method (int) (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.getRef (int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: fc3f2d79-7cc3-47fa-a05e-4f7939d7f090
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
# getRef Method (int) (SQLServerResultSet)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the value of the designated column index in the current row of this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object as a Ref object in the Java programming language.  
  
## Syntax  
  
```  
  
public java.sql.Ref getRef(int i)  
```  
  
#### Parameters  
 *i*  
  
 An **int** that indicates the column index.  
  
## Return Value  
 A Ref object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getRef method is specified by the getRef method in the java.sql.ResultSet interface.  
  
## See Also  
 [getRef Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/getref-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  