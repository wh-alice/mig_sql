---
title: "executeUpdate Method () | Microsoft Docs"
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
  - "SQLServerPreparedStatement.executeUpdate ()"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ca534c6b-ef4d-4ae8-8cc3-514728623cff
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
# executeUpdate Method ()
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Runs the SQL statement in this [SQLServerPreparedStatement](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) object, which must be an SQL INSERT, UPDATE, MERGE, or DELETE statement; or an SQL statement that returns nothing, such as a DDL statement.  
  
## Syntax  
  
```  
  
public int executeUpdate()  
```  
  
## Return Value  
 An **int** that indicates the number of rows affected, or 0 if using a DDL statement.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This executeUpdate method is specified by the executeUpdate method in the java.sql.PreparedStatement interface.  
  
## See Also  
 [executeUpdate Method &#40;SQLServerPreparedStatement&#41;](../../../connect/jdbc/reference/executeupdate-method--sqlserverpreparedstatement-.md)   
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  