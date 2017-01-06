---
title: "getBigDecimal Method (java.lang.String, int) (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.getBigDecimal (java.lang.String, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 572a1799-c232-400f-b8d8-37a5719a8d5e
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
# getBigDecimal Method (java.lang.String, int) (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated column name in the current row of this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object using the given scale.  
  
> [!NOTE]  
>  This method has been deprecated from the JDBC specification. Instead, you should use the [getBigDecimal (java.lang.String)](../../../connect/jdbc/reference/getbigdecimal-method--java.lang.string---sqlserverresultset-.md) method.  
  
## Syntax  
  
```  
  
public java.math.BigDecimal getBigDecimal(java.lang.String columnName,  
                                          int scale)  
```  
  
#### Parameters  
 *columnName*  
  
 A **String** that contains the column name.  
  
 *scale*  
  
 An **int** that indicates the number of digits to the right of the decimal point.  
  
## Return Value  
 A BigDecimal object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getBigDecimal method is specified by the getBigDecimal method in the java.sql.ResultSet interface.  
  
## See Also  
 [getBigDecimal Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/getbigdecimal-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  