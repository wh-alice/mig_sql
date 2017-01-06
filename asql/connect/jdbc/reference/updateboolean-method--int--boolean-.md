---
title: "updateBoolean Method (int, boolean) | Microsoft Docs"
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
  - "SQLServerResultSet.updateBoolean (int, boolean)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 7937f4bb-8537-4012-af81-837f9ac123a2
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
# updateBoolean Method (int, boolean)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a **boolean** value given the column index.  
  
## Syntax  
  
```  
  
public void updateBoolean(int index,  
                          boolean x)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the column index.  
  
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
  
  