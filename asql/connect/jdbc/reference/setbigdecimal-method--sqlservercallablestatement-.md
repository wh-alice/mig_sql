---
title: "setBigDecimal Method (SQLServerCallableStatement) | Microsoft Docs"
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
  - "SQLServerCallableStatement.setBigDecimal"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b50a920c-3839-40f0-9411-c60bbc2a9f34
caps.latest.revision: 10
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
# setBigDecimal Method (SQLServerCallableStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter number to the given BigDecimal object.  
  
## Syntax  
  
```  
  
public void setBigDecimal(java.lang.String sCol,  
                          java.math.BigDecimal bd)  
```  
  
#### Parameters  
 *sCol*  
  
 A **String** that contains the parameter name.  
  
 *bd*  
  
 A BigDecimal object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setBigDecimal method is specified by the setBigDecimal method in the java.sql.CallableStatement interface.  
  
## See Also  
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  