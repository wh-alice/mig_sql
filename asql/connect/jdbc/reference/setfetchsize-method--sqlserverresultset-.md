---
title: "setFetchSize Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.setFetchSize"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 233bf4f8-4758-42d0-a80b-33e34fa78027
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
# setFetchSize Method (SQLServerResultSet)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Gives the JDBC driver a hint as to the number of rows that should be fetched from the database when more rows are needed for this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
## Syntax  
  
```  
  
public void setFetchSize(int rows)  
```  
  
#### Parameters  
 *rows*  
  
 An **int** indicating the number of rows to fetch.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setFetchSize method is specified by the setFetchSize method in the java.sql.ResultSet interface.  
  
 If the fetch size specified is zero, the JDBC driver ignores the value and estimates what the fetch size should be. The default value is set by the [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object that created the result set. The fetch size can be changed at any time.  
  
 This method changes the block fetch size for server cursors, and takes effect the next time the JDBC driver needs to call sp_cursorfetch. Setting the fetch size to zero restores the default fetch size for the cursor type that is currently in use  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  