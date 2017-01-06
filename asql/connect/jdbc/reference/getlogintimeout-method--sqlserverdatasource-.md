---
title: "getLoginTimeout Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getLoginTimeout"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 316f067c-9e08-456a-af19-b80b0bbd4a5c
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
# getLoginTimeout Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns the number of seconds that this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object will wait while trying to make a connection.  
  
## Syntax  
  
```  
  
public int getLoginTimeout()  
```  
  
## Return Value  
 An **int** value that represents the number of seconds to wait.  
  
## Remarks  
 If the application does not specify a timeout value explicitly, this method returns a default value of 15 seconds.  
  
 This getLoginTimeout method is specified by the getLoginTimeout method in the javax.sql.DataSource interface.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  