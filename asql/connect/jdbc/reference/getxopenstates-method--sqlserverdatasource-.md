---
title: "getXopenStates Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getXopenStates"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: de6fdf6b-8345-4490-b35e-7115b61e782e
caps.latest.revision: 12
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
# getXopenStates Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns a **boolean** value that indicates if converting SQL states to XOPEN compliant states is enabled.  
  
## Syntax  
  
```  
  
public boolean getXopenStates()  
```  
  
## Return Value  
 **true** if converting SQL states to XOPEN compliant states is enabled. Otherwise, **false**.  
  
## Remarks  
 If the xopenStates property is set to **true**, the Microsoft JDBC Driver for SQL Server will convert SQL states to XOPEN compliant states. The default is **false**, which causes the JDBC driver to generate SQL 99 state codes. If xopenStates is not set, the getXopenStates method returns the default value of **false**.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  