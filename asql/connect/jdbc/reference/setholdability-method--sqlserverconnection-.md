---
title: "setHoldability Method (SQLServerConnection) | Microsoft Docs"
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
  - "SQLServerConnection.setHoldability"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 552eebd0-4c38-43f0-961f-35244f99109b
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
# setHoldability Method (SQLServerConnection)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Changes the holdability of [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) objects that are created by using this [SQLServerSavepoint](../../../connect/jdbc/reference/sqlserversavepoint-class.md) object to the given holdability.  
  
## Syntax  
  
```  
  
public void setHoldability(int nNewHold)  
```  
  
#### Parameters  
 *nNewHold*  
  
 An **int** value that contains one of the following holdability levels:  
  
 HOLD_CURSORS_OVER_COMMIT  
  
 CLOSE_CURSORS_AT_COMMIT  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setHoldability method is specified by the setHoldability method in the java.sql.Connection interface.  
  
## See Also  
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  