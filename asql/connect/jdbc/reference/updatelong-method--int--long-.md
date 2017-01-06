---
title: "updateLong Method (int, long) | Microsoft Docs"
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
  - "SQLServerResultSet.updateLong (int, long)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: f6363288-1415-4b25-8bb3-c34d6211c6d7
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
# updateLong Method (int, long)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a **long** value given the column index.  
  
## Syntax  
  
```  
  
public void updateLong(int index,  
                       long x)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the column index.  
  
 *x*  
  
 A **long** value.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateLong method is specified by the updateLong method in the java.sql.ResultSet interface.  
  
## See Also  
 [updateLong Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updatelong-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  