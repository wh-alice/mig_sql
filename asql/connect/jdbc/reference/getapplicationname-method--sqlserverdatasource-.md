---
title: "getApplicationName Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getApplicationName"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: f71e501c-ccd7-4a1e-b6ea-4d47a81c18c6
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
# getApplicationName Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns the application name.  
  
## Syntax  
  
```  
  
public java.lang.String getApplicationName()  
```  
  
## Return Value  
 A **String** that contains the application name, or "Microsoft JDBC Driver for SQL Server" if no value is set.  
  
## Remarks  
 The application name is used to identify the specific application in various SQL Server profiling and logging tools. If the application name is not set, the getApplicationName method returns the non-localized string "Microsoft JDBC Driver for SQL Server".  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  