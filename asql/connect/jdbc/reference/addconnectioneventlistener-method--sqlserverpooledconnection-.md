---
title: "addConnectionEventListener Method (SQLServerPooledConnection) | Microsoft Docs"
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
  - "SQLServerPooledConnection.addConnectionEventListener"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 142830a8-8d4e-48ca-911d-85bf195ca4fe
caps.latest.revision: 5
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
# addConnectionEventListener Method (SQLServerPooledConnection)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Registers the given event listener so that it will be notified when an event occurs on this [SQLServerPooledConnection](../../../connect/jdbc/reference/sqlserverpooledconnection-class.md) object.  
  
## Syntax  
  
```  
  
public void addConnectionEventListener(javax.sql.ConnectionEventListener listener)  
```  
  
#### Parameters  
 *listener*  
  
 A ConnectionEventListener object.  
  
## Remarks  
 This addConnectionEventListener method is specified by the addConnectionEventListener method in the javax.sql.PooledConnection interface.  
  
## See Also  
 [SQLServerPooledConnection Methods](../../../connect/jdbc/reference/sqlserverpooledconnection-methods.md)   
 [SQLServerPooledConnection Members](../../../connect/jdbc/reference/sqlserverpooledconnection-members.md)   
 [SQLServerPooledConnection Class](../../../connect/jdbc/reference/sqlserverpooledconnection-class.md)  
  
  