---
title: "getBigDecimal Method (int, int) | Microsoft Docs"
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
  - "SQLServerCallableStatement.getBigDecimal (int, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: d9351b35-7046-4852-a612-72d4c46b2bbb
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
# getBigDecimal Method (int, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated parameter as java.math.BigDecimal given the parameter index and scale.  
  
> [!NOTE]  
>  This method has been deprecated from the JDBC specification. Instead, you should use the [getBigDecimal (int)](../../../connect/jdbc/reference/getbigdecimal-method--int-.md) method.  
  
## Syntax  
  
```  
  
public java.math.BigDecimal getBigDecimal(int index,  
                                          int scale)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the parameter index.  
  
 *scale*  
  
 An **int** that indicates the number of digits to the right of the decimal point.  
  
## Return Value  
 A BigDecimal object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getBigDecimal method is specified by the getBigDecimal method in the java.sql.CallableStatement interface.  
  
## See Also  
 [getBigDecimal Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/getbigdecimal-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  