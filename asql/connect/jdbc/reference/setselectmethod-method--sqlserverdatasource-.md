---
title: "setSelectMethod Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setSelectMethod"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 7934276d-5ac9-4cbc-a2a0-2c65c93733ac
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
# setSelectMethod Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the default cursor type that is used for all result sets that are created by using this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.  
  
## Syntax  
  
```  
  
public void setSelectMethod(java.lang.String selectMethod)  
```  
  
#### Parameters  
 *selectMethod*  
  
 A **String** value that contains the default cursor type.  
  
## Remarks  
 The selectMethod is the default cursor type that is used for a result set. This property is useful when you are dealing with large result sets and do not want to store the whole result set in memory on the client side. By setting the property to "cursor," you can create a server-side cursor that can fetch smaller chunks of data at a time. If the selectMethod property is not set, [getSelectMethod](../../../connect/jdbc/reference/getselectmethod-method--sqlserverdatasource-.md) returns the default value of "direct".  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  