---
title: "getURL Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getURL"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: fcb66851-db5f-4ae8-b728-d129480b6f42
caps.latest.revision: 20
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
# getURL Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the URL for this database.  
  
## Syntax  
  
```  
  
public java.lang.String getURL()  
```  
  
## Return Value  
 A **String** that contains the URL.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getURL method is specified by the getURL method in the java.sql.DatabaseMetaData interface.  
  
 When using the Microsoft JDBC Driver for SQL Server with a SQL Server database, this method returns a **String** value that contains the following information:  
  
-   A URL value of "jdbc:sqlserver://"  
  
-   Optional connection properties, such as **serverName**, **instanceName**, and **portNumber**  
  
-   Other connection properties set by the user and all connection properties with non-empty or non-null driver default values except **userName**, **password**, and **integratedSecurity**.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  