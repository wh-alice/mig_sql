---
title: "updateDouble Method (java.lang.String, double) | Microsoft Docs"
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
  - "SQLServerResultSet.updateDouble (java.lang.String, double)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: f70971d5-34cc-4f70-8a91-5d46356b24ae
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
# updateDouble Method (java.lang.String, double)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Updates the designated column with a **double** value given the column name.  
  
## Syntax  
  
```  
  
public void updateDouble(java.lang.String columnName,  
                         double x)  
```  
  
#### Parameters  
 *columnName*  
  
 A **String** that contains the column name.  
  
 *x*  
  
 A **double** value.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateDouble method is specified by the updateDouble method in the java.sql.ResultSet interface.  
  
## See Also  
 [updateDouble Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatedouble-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  