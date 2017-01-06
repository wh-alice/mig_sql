---
title: "setCatalog Method (SQLServerConnection) | Microsoft Docs"
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
  - "SQLServerConnection.setCatalog"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 553c0603-c07d-436a-86eb-3ba6b51bd696
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
# setCatalog Method (SQLServerConnection)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the given catalog name to select a subspace of this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object's database in which to work.  
  
## Syntax  
  
```  
  
public void setCatalog(java.lang.String catalog)  
```  
  
#### Parameters  
 *catalog*  
  
 A **String** that contains the catalog name.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setCatalog method is specified by the setCatalog method in the java.sql.Connection interface.  
  
 The *catalog* argument is escaped by the Microsoft JDBC Driver for SQL Server automatically. Using this method sets the catalog property for the Connection object. It is not set implicitly in any other way.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  