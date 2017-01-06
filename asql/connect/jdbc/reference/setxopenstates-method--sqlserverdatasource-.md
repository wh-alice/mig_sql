---
title: "setXopenStates Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setXopenStates"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 9723591f-e987-426f-b70a-07f5c70dc094
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
# setXopenStates Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets a **Boolean** value that indicates if converting SQL states to XOPEN compliant states is enabled.  
  
## Syntax  
  
```  
  
public void setXopenStates(boolean xopenStates)  
```  
  
#### Parameters  
 *xopenStates*  
  
 **true** if converting SQL states to XOPEN compliant states is enabled. Otherwise, **false**.  
  
## Remarks  
 If the xopenStates property is set to **true**, the Microsoft JDBC Driver for SQL Server will convert SQL states to XOPEN compliant states. The default is **false**, which causes the JDBC driver to generate SQL 99 state codes. If xopenStates is not set, the [getXopenStates](../../../connect/jdbc/reference/getxopenstates-method--sqlserverdatasource-.md) method returns the default value of **false**.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  