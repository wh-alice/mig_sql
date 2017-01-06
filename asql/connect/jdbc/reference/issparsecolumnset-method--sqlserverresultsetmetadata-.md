---
title: "isSparseColumnSet Method (SQLServerResultSetMetaData) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ac363670-78ae-49f1-aeda-4fba3329a258
caps.latest.revision: 7
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
# isSparseColumnSet Method (SQLServerResultSetMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Indicates if a column in a result set is a sparse column set.  
  
## Syntax  
  
```scr  
public boolean isSparseColumnSet(int column)  
```  
  
#### Parameters  
 *column*  
  
 The (one-based) index of the column.  
  
## Return Value  
 **true** if a column in a result set is a sparse column set, otherwise **false**.  
  
## Remarks  
 This method does not retrieve information from the database.  
  
## See Also  
 [SQLServerResultSetMetaData Methods](../../../connect/jdbc/reference/sqlserverresultsetmetadata-methods.md)   
 [SQLServerResultSetMetaData Members](../../../connect/jdbc/reference/sqlserverresultsetmetadata-members.md)   
 [SQLServerResultSetMetaData Class](../../../connect/jdbc/reference/sqlserverresultsetmetadata-class.md)  
  
  