---
title: "updateRef Method (int, java.sql.Ref) | Microsoft Docs"
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
  - "SQLServerResultSet.updateRef (int, java.sql.Ref)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: eab3ebae-3f68-4303-869a-fee06e3a9c71
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
# updateRef Method (int, java.sql.Ref)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Updates the designated column with a java.sql.Ref value given the column index.  
  
## Syntax  
  
```  
  
public void updateRef(int columnIndex,  
                      java.sql.Ref x)  
```  
  
#### Parameters  
 *columnIndex*  
  
 An **int** that indicates the column index.  
  
 *x*  
  
 A Ref object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This updateRef method is specified by the updateRef method in the java.sql.ResultSet interface.  
  
## See Also  
 [updateRef Method &#40;SQLServerResultSet&#41;](../../../connect/jdbc/reference/updateref-method--sqlserverresultset-.md)   
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  