---
title: "getConnection Method () | Microsoft Docs"
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
  - "SQLServerDataSource.getConnection ()"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 7f520e96-5313-468f-b987-535ddaea027e
caps.latest.revision: 9
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
# getConnection Method ()
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Tries to establish a connection with the data source that this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object represents.  
  
## Syntax  
  
```  
  
public java.sql.Connection getConnection()  
```  
  
## Return Value  
 A [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This getConnection method is specified by the getConnection method in the javax.sql.DataSource interface.  
  
## See Also  
 [getConnection Method &#40;SQLServerDataSource&#41;](../../../connect/jdbc/reference/getconnection-method--sqlserverdatasource-.md)   
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  