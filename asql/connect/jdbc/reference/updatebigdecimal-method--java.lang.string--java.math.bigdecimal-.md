---
title: "updateBigDecimal Method (java.lang.String, java.math.BigDecimal) | Microsoft Docs"
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
  - "SQLServerResultSet.updateBigDecimal (java.lang.String, java.math.BigDecimal)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b844cd9d-3d2d-4385-ab01-ecc89692054f
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
# updateBigDecimal Method (java.lang.String, java.math.BigDecimal)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a BigDecimal object given the column name.  
  
## Syntax  
  
```  
  
public void updateBigDecimal(java.lang.String columnName,  
                             java.math.BigDecimal x)  
```  
  
#### Parameters  
 *columnName*  
  
 A **String** that contains the column name.  
  
 *x*  
  
 A BigDecimal object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateBigDecimal method is specified by the updateBigDecimal method in the java.sql.ResultSet interface.  
  
## See Also  
 [updateBigDecimal Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatebigdecimal-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  