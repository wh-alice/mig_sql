---
title: "refreshRow Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.refreshRow"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 048fe245-157f-4fd8-be75-ce54b83e02b3
caps.latest.revision: 11
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
# refreshRow Method (SQLServerResultSet)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Refreshes the current row with its most recent value in the database.  
  
## Syntax  
  
```  
  
public void refreshRow()  
```  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This refreshRow method is specified by the refreshRow method in the java.sql.ResultSet interface.  
  
 This method cannot be called when the cursor is on the insert row.  
  
 This method provides a way for an application to explicitly tell the JDBC driver to refetch rows from the database. An application might need to call this method when the Microsoft JDBC Driver for SQL Server is caching or prefetching to fetch the latest value of a row from the database. The JDBC driver might actually refresh multiple rows at the same time if the fetch size is greater than one.  
  
 All values are refetched subject to the transaction isolation level and cursor sensitivity. If this method is called after calling an updater method, but before calling the [updateRow](../../../connect/jdbc/reference/updaterow-method--sqlserverresultset-.md) method, the updates made to the row are lost. Calling this method frequently will probably slow performance.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  