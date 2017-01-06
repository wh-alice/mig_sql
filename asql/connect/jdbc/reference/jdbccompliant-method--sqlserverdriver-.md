---
title: "jdbcCompliant Method (SQLServerDriver) | Microsoft Docs"
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
  - "SQLServerDriver.jdbcCompliant"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b299b20d-d1cd-45b3-91dc-dcf579498570
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
# jdbcCompliant Method (SQLServerDriver)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Verifies that the Microsoft JDBC Driver for SQL Server is compliant with the JDBC specification.  
  
## Syntax  
  
```  
  
public boolean jdbcCompliant()  
```  
  
## Return Value  
 **true** if the JDBC driver meets the minimum requirements. Otherwise, **false**.  
  
## Remarks  
 This jdbcCompliant method is specified by the jdbcCompliant method in the java.sql.Driver interface.  
  
## See Also  
 [SQLServerDriver Methods](../../../connect/jdbc/reference/sqlserverdriver-methods.md)   
 [SQLServerDriver Members](../../../connect/jdbc/reference/sqlserverdriver-members.md)   
 [SQLServerDriver Class](../../../connect/jdbc/reference/sqlserverdriver-class.md)  
  
  