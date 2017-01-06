---
title: "acceptsURL Method (SQLServerDriver) | Microsoft Docs"
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
  - "SQLServerDriver.acceptsURL"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: fc744566-7191-4b15-9f76-b4b8087fb14a
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
# acceptsURL Method (SQLServerDriver)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Checks if the given URL is valid.  
  
## Syntax  
  
```  
  
public boolean acceptsURL(java.lang.String url)  
```  
  
#### Parameters  
 *url*  
  
 A **String** value containing the URL used to connect to the database.  
  
## Return Value  
 **true** if the given URL is valid. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This acceptsURL method is specified by the acceptsURL method in the java.sql.Driver interface.  
  
## See Also  
 [SQLServerDriver Methods](../../../connect/jdbc/reference/sqlserverdriver-methods.md)   
 [SQLServerDriver Members](../../../connect/jdbc/reference/sqlserverdriver-members.md)   
 [SQLServerDriver Class](../../../connect/jdbc/reference/sqlserverdriver-class.md)  
  
  