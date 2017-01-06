---
title: "connect Method (SQLServerDriver) | Microsoft Docs"
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
  - "SQLServerDriver.connect"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 43813a4c-1cc7-4659-ba27-f1786f1371eb
caps.latest.revision: 7
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
# connect Method (SQLServerDriver)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Makes a connection to the database.  
  
## Syntax  
  
```  
  
public java.sql.Connection connect(java.lang.String Url,  
                                   java.util.Properties suppliedProperties)  
```  
  
#### Parameters  
 *Url*  
  
 A **String** value that contains the URL that is used to connect to the database.  
  
 *suppliedProperties*  
  
 A set of string value pairs used as connection arguments.  
  
## Return Value  
 A Connection object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This connect method is specified by the connect method in the java.sql.Driver interface.  
  
## See Also  
 [SQLServerDriver Methods](../../../connect/jdbc/reference/sqlserverdriver-methods.md)   
 [SQLServerDriver Members](../../../connect/jdbc/reference/sqlserverdriver-members.md)   
 [SQLServerDriver Class](../../../connect/jdbc/reference/sqlserverdriver-class.md)  
  
  