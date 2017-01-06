---
title: "createStatement Method (int, int) | Microsoft Docs"
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
  - "SQLServerConnection.createStatement (int, int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 90dbf639-c3d8-4519-9300-5447c79aec17
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
# createStatement Method (int, int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Creates a [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object that generates [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) objects with the given type and concurrency.  
  
## Syntax  
  
```  
  
public java.sql.Statement createStatement(int resultSetType,  
                                          int resultSetConcurrency)  
```  
  
#### Parameters  
 *resultSetType*  
  
 The **int** value representing the result set type.  
  
 *resultSetConcurrency*  
  
 The **int** value representing the result set concurrency type.  
  
## Return Value  
 The Statement object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This createStatement method is specified by the createStatement method in the java.sql.Connection interface.  
  
## See Also  
 [createStatement Method &#40;SQLServerConnection&#41;](../../../connect/jdbc/reference/createstatement-method--sqlserverconnection-.md)   
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  