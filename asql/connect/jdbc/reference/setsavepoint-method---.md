---
title: "setSavepoint Method () | Microsoft Docs"
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
  - "SQLServerConnection.setSavepoint ()"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 11013055-4fd3-45a9-b2da-28b2908dad52
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
# setSavepoint Method ()
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Creates an unnamed savepoint in the current transaction, and returns the new [SQLServerSavepoint](../../../connect/jdbc/reference/sqlserversavepoint-class.md) object that represents it.  
  
## Syntax  
  
```  
  
public java.sql.Savepoint setSavepoint()  
```  
  
## Return Value  
 A SavePoint object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setSavePoint method is specified by the setSavePoint method in the java.sql.Connection interface.  
  
## See Also  
 [setSavepoint Method &#40;SQLServerConnection&#41;](../../../connect/jdbc/reference/setsavepoint-method--sqlserverconnection-.md)   
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  