---
title: "SQLServerStatement Class | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ec24963c-8b51-4838-91e9-1fbfa2347451
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
# SQLServerStatement Class
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Represents the basic implementation of JDBC statement functionality.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Implements:** [ISQLServerStatement](../../../connect/jdbc/reference/isqlserverstatement-interface.md)  
  
## Syntax  
  
```  
  
public class SQLServerStatement  
```  
  
## Remarks  
 The SQLServerStatement class also provides a number of base class implementation methods for the JDBC prepared statement and callable statements. The basic role of the SQLServerStatement class is to run SQL statements, and then return update counts and result sets to the user application.  
  
 This class supports unwrapping to SQLServerStatement class, the ISQLServerStatement interface, and the java.sql.Statement interface. For more information, see [Wrappers and Interfaces](../../../connect/jdbc/wrappers-and-interfaces.md).  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  