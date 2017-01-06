---
title: "nativeSQL Method (SQLServerConnection) | Microsoft Docs"
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
  - "SQLServerConnection.nativeSQL"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 2188a6e1-792f-47bd-b207-1d01741231b2
caps.latest.revision: 14
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
# nativeSQL Method (SQLServerConnection)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Converts the given SQL statement into the native SQL grammar of the database server.  
  
> [!NOTE]  
>  This method is not currently supported by the Microsoft JDBC Driver for SQL Server.  
  
## Syntax  
  
```  
  
public java.lang.String nativeSQL(java.lang.String sql)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** containing an SQL statement.  
  
## Return Value  
 A **String** containing the converted SQL statement.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This nativeSQL method is specified by the nativeSQL method in the java.sql.Connection interface.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  