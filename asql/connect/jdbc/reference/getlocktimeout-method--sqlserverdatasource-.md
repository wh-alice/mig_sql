---
title: "getLockTimeout Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getLockTimeout"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 676094e9-ec18-4524-9b21-1f9c5b16dd52
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
# getLockTimeout Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns an **int** value that indicates the number of milliseconds that the database will wait before reporting a lock time out.  
  
## Syntax  
  
```  
  
public int getLockTimeout()  
```  
  
## Return Value  
 An **int** value that contains the number of milliseconds that the database will wait.  
  
## Remarks  
 The lock time out is the number of milliseconds to wait before the database reports a lock time out. The default value of -1 means that it will wait indefinitely. If specified, this value will be the default for all statements on the connection.  
  
> [!NOTE]  
>  A value of 0 means no wait. If the lockTimeout property is not set, the getLockTimeout method returns the default value of -1.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  