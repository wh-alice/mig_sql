---
title: "getSelectMethod Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getSelectMethod"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b6255d2e-0028-474a-afa8-553ef092243e
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
# getSelectMethod Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns the default cursor type used for all result sets that are created by using this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.  
  
## Syntax  
  
```  
  
public java.lang.String getSelectMethod()  
```  
  
## Return Value  
 A **String** value that contains the default cursor type.  
  
## Remarks  
 The selectMethod property specifies the default cursor type that is used for a result set. This property is useful when you are dealing with large result sets and do not want to store the entire result set in memory on the client side. By setting the property to "cursor," you can create a server-side cursor that can fetch smaller chunks of data at a time. If the selectMethod property is not set, getSelectMethod returns the default value of "direct".  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  