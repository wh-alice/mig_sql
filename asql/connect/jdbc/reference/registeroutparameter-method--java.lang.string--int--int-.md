---
title: "registerOutParameter Method (java.lang.String, int, int) | Microsoft Docs"
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
  - "SQLServerCallableStatement.registerOutParameter (java.lang.String, int, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 8bddc557-4526-4843-9804-05dc83c8832d
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
# registerOutParameter Method (java.lang.String, int, int)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Registers the OUT parameter with the specified name to the given JDBC type and scale.  
  
## Syntax  
  
```  
  
public void registerOutParameter(java.lang.String s,  
                                 int n,  
                                 int n1)  
```  
  
#### Parameters  
 *s*  
  
 A **String** that contains the parameter name.  
  
 *sqlType*  
  
 A JDBC type code as defined in java.sql.Types.  
  
 *scale*  
  
 An **int** that indicates the number of digits to be placed to the right of the decimal point.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This registerOutParameter method is specified by the registerOutParameter method in the java.sql.CallableStatement interface.  
  
## See Also  
 [registerOutParameter Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/registeroutparameter-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  