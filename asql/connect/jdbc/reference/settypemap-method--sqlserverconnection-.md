---
title: "setTypeMap Method (SQLServerConnection) | Microsoft Docs"
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
  - "SQLServerConnection.setTypeMap"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: bffd20a6-1310-44b0-9602-974500481fa6
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
# setTypeMap Method (SQLServerConnection)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Installs the given TypeMap object as the type map for this [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) object.  
  
> [!NOTE]  
>  This method is not currently supported by the Microsoft JDBC Driver for SQL Server.  
  
## Syntax  
  
```  
  
public void setTypeMap(java.util.Map map)  
```  
  
#### Parameters  
 *map*  
  
 A TypeMap object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setTypeMap method is specified by the setTypeMap method in the java.sql.Connection interface.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  