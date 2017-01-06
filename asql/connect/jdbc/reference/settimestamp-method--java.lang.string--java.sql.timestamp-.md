---
title: "setTimestamp Method (java.lang.String, java.sql.Timestamp) | Microsoft Docs"
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
  - "SQLServerCallableStatement.setTimestamp (java.lang.String, java.sql.Timestamp)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: dc45b126-3196-47ff-956b-cbc897980ff8
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
# setTimestamp Method (java.lang.String, java.sql.Timestamp)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the given timestamp value.  
  
## Syntax  
  
```  
  
public void setTimestamp(java.lang.String sCol,  
                         java.sql.Timestamp t)  
```  
  
#### Parameters  
 *sCol*  
  
 A **String** that contains the parameter name.  
  
 *t*  
  
 A Timestamp object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setTimestamp method is specified by the setTimestamp method in the java.sql.CallableStatement interface.  
  
## See Also  
 [setTimestamp Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/settimestamp-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  