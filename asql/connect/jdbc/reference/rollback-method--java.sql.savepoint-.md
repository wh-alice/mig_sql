---
title: "rollback Method (java.sql.Savepoint) | Microsoft Docs"
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
  - "SQLServerConnection.rollback (java.sql.Savepoint)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: d5dbd9ef-194f-4130-bfcc-7901a4fa8ded
caps.latest.revision: 10
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
# rollback Method (java.sql.Savepoint)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Undoes all changes made after the given [SQLServerSavepoint](../../../connect/jdbc/reference/sqlserversavepoint-class.md) object was set.  
  
## Syntax  
  
```  
  
public void rollback(java.sql.Savepoint s)  
```  
  
#### Parameters  
 *s*  
  
 The SavePoint object to rollback to.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This rollBack method is specified by the rollBack method in the java.sql.Connection interface.  
  
 This method should be used only when auto-commit mode has been disabled.  
  
## See Also  
 [rollback Method &#40;SQLServerConnection&#41;](../../../connect/jdbc/reference/rollback-method--sqlserverconnection-.md)   
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  