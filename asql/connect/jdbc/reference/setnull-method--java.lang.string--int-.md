---
title: "setNull Method (java.lang.String, int) | Microsoft Docs"
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
  - "SQLServerCallableStatement.setNull (java.lang.String, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: e1d7e267-d9de-407a-b1a9-abdc2623478d
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
# setNull Method (java.lang.String, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to a null value, given the type of parameter to set.  
  
## Syntax  
  
```  
  
public void setNull(java.lang.String sCol,  
                    int nType)  
```  
  
#### Parameters  
 *sCol*  
  
 A **String** that contains the parameter name.  
  
 *nType*  
  
 A JDBC type code that is defined by java.sql.Types.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setNull method is specified by the setNull method in the java.sql.CallableStatement interface.  
  
## See Also  
 [setNull Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/setnull-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  