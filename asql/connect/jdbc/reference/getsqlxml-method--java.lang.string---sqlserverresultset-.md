---
title: "getSQLXML Method (java.lang.String) (SQLServerResultSet) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ab9c7b10-026f-4a51-8d60-e6871d1abd02
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
# getSQLXML Method (java.lang.String) (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of a designated column in the current row of the [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object as a SQLXML object.  
  
## Syntax  
  
```  
  
public final java.sql.SQLXML getSQLXML(java.lang.String columnLabel)  
```  
  
#### Parameters  
 *columnName*  
  
 A **String** that indicates the column label.  
  
## Return Value  
 ASQLXMLobject.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getSQLXML method is specified by the getSQLXML method in the java.sql.ResultSet interface.  
  
## See Also  
 [getSQLXML Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/getsqlxml-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)  
  
  