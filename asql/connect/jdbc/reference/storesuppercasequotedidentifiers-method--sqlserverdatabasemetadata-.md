---
title: "storesUpperCaseQuotedIdentifiers Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.storesUpperCaseQuotedIdentifiers"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 936ec140-2597-44e6-82d3-3994a676ee35
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
# storesUpperCaseQuotedIdentifiers Method (SQLServerDatabaseMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves whether this database treats mixed-case SQL identifiers that are enclosed in quotation marks as case-insensitive and stores them in uppercase.  
  
## Syntax  
  
```  
  
public boolean storesUpperCaseQuotedIdentifiers()  
```  
  
## Return Value  
 **true** if the identifiers are stored in uppercase. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This storesUpperCaseQuotedIdentifiers method is specified by the storesUpperCaseQuotedIdentifiers method in the java.sql.DatabaseMetaData interface.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  