---
title: "releaseSavepoint Method (SQLServerConnection) | Microsoft Docs"
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
  - "SQLServerConnection.releaseSavepoint"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b6b625ea-c7ce-4a32-a9e0-6d2b4321bfd8
caps.latest.revision: 13
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
# releaseSavepoint Method (SQLServerConnection)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Removes the given [SQLServerSavepoint](../../../connect/jdbc/reference/sqlserversavepoint-class.md) object from the current transaction.  
  
> [!NOTE]  
>  This method is not currently supported by the Microsoft JDBC Driver for SQL Server.  
  
## Syntax  
  
```  
  
public void releaseSavepoint(java.sql.Savepoint savepoint)  
```  
  
#### Parameters  
 *savepoint*  
  
 The SavePoint object to remove.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This releaseSavepoint method is specified by the releaseSavepoint method in the java.sql.Connection interface.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  