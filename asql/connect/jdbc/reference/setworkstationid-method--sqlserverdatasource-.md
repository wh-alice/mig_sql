---
title: "setWorkstationID Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setWorkstationID"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: c1093615-90bf-4918-9f05-8abd765ffb03
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
# setWorkstationID Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the name of the client computer name that is used to connect to the data source.  
  
## Syntax  
  
```  
  
public void setWorkstationID(java.lang.String workstationID)  
```  
  
#### Parameters  
 *workstationID*  
  
 A **String** that contains the client computer name.  
  
## Remarks  
 The workstationID is the name of the client computer or workstation. If the workstationID property is not set, the default value is constructed by calling InetAddress.getLocalHost().getHostName() method. If getHostName returns a blank value, the getHostAddress().toString() method is called.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  