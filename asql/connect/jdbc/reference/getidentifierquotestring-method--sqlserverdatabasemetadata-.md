---
title: "getIdentifierQuoteString Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getIdentifierQuoteString"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 6dea35a0-56a8-412c-8cd3-6539527ff597
caps.latest.revision: 8
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
# getIdentifierQuoteString Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the **String** that is used to quote SQL identifiers.  
  
## Syntax  
  
```  
  
public java.lang.String getIdentifierQuoteString()  
```  
  
## Return Value  
 A **String** that contains the quote identifiers.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getIdentifierQuoteString method is specified by the getIdentifierQuoteString method in the java.sql.DatabaseMetaData interface.  
  
 When using the Microsoft JDBC Driver with a SQL Server database, this method returns **double** quotation marks ("").  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  