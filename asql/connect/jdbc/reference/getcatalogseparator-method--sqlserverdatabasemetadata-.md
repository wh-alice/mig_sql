---
title: "getCatalogSeparator Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getCatalogSeparator"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 0bbd6842-7210-432a-bef4-e15a63f5cc96
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
# getCatalogSeparator Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the **String** that this database uses as the separator between a catalog and table name.  
  
## Syntax  
  
```  
  
public java.lang.String getCatalogSeparator()  
```  
  
## Return Value  
 A **String** that contains the catalog separator.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getCatalogSeparator method is specified by the getCatalogSeparator method in the java.sql.DatabaseMetaData interface.  
  
 When using the Microsoft JDBC Driver for SQL Server with a SQL Server database, this method returns a period (".") as the catalog separator.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  