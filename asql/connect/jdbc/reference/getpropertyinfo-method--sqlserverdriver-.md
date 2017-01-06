---
title: "getPropertyInfo Method (SQLServerDriver) | Microsoft Docs"
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
  - "SQLServerDriver.getPropertyInfo"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b5eaad8a-31ef-44ac-af11-d5caa13ac3e2
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
# getPropertyInfo Method (SQLServerDriver)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Used to discover the properties needed to connect to a database.  
  
## Syntax  
  
```  
  
public java.sql.DriverPropertyInfo[] getPropertyInfo(java.lang.String Url,  
                                                     java.util.Properties Info)  
```  
  
#### Parameters  
 *Url*  
  
 A **String** value that contains the URL that is used to connect to the database.  
  
 *Info*  
  
 A list of property value pairs, null on first use.  
  
## Return Value  
 An array of DriverPropertyInfo objects.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getPropertyInfo method is specified by the getPropertyInfo method in the java.sql.Driver interface.  
  
## See Also  
 [SQLServerDriver Methods](../../../connect/jdbc/reference/sqlserverdriver-methods.md)   
 [SQLServerDriver Members](../../../connect/jdbc/reference/sqlserverdriver-members.md)   
 [SQLServerDriver Class](../../../connect/jdbc/reference/sqlserverdriver-class.md)  
  
  