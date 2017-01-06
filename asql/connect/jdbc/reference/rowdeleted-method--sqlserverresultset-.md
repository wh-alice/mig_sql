---
title: "rowDeleted Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.rowDeleted"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 9c6db315-e614-4604-b020-41af6a214cc1
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
# rowDeleted Method (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves whether a row has been deleted.  
  
## Syntax  
  
```  
  
public boolean rowDeleted()  
```  
  
## Return Value  
 **true** if a row was deleted and deletions are detected. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This rowDeleted method is specified by the rowDeleted method in the java.sql.ResultSet interface.  
  
 A deleted row might leave a visible hole in a result set. This method can be used to detect holes in a result set. The value that is returned depends on whether this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object can detect deletions.  
  
> [!NOTE]  
>  SQL Server detects deleted rows for all updatable cursor types, though the detection is transient for forward and dynamic cursors.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  