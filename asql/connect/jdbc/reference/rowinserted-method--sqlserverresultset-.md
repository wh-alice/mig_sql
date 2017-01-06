---
title: "rowInserted Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.rowInserted"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: e7c10372-0be8-4baa-87f7-ed6b66003357
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
# rowInserted Method (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves whether the current row has had an insertion.  
  
## Syntax  
  
```  
  
public boolean rowInserted()  
```  
  
## Return Value  
 **true** if a row has had an insertion and insertions are detected. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This rowUpdated method is specified by the rowUpdated method in the java.sql.ResultSet interface.  
  
 The value that is returned depends on whether this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object can detect visible inserts.  
  
> [!NOTE]  
>  SQL Server does not detect inserted rows for any cursor type.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  