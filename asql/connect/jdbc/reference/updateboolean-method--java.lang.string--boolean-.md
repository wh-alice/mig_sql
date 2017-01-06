---
title: "updateBoolean Method (java.lang.String, boolean) | Microsoft Docs"
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
  - "SQLServerResultSet.updateBoolean (java.lang.String, boolean)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 5fed9ebb-d9a3-4d1a-9212-1057a603c4e5
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
# updateBoolean Method (java.lang.String, boolean)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Updates the designated column with a **boolean** value given the column name.  
  
## Syntax  
  
```  
  
public void updateBoolean(java.lang.String columnName,  
                          boolean x)  
```  
  
#### Parameters  
 *columnName*  
  
 A **String** that contains the column name.  
  
 *x*  
  
 A **boolean** value.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateBoolean method is specified by the updateBoolean method in the java.sql.ResultSet interface.  
  
## See Also  
 [updateBoolean Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updateboolean-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  