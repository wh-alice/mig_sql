---
title: "getSearchStringEscape Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getSearchStringEscape"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ea0f95d0-0238-4dc8-9f26-7ff9b65f30c3
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
# getSearchStringEscape Method (SQLServerDatabaseMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the **String** that can be used to escape wildcard characters.  
  
## Syntax  
  
```  
  
public java.lang.String getSearchStringEscape()  
```  
  
## Return Value  
 A **String** that contains the escape wildcard character String.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getSearchStringEscape method is specified by the getSearchStringEscape method in the java.sql.DatabaseMetaData interface.  
  
 This method is used only for metadata pattern searches. It returns "\\". A **String** search pattern can escape wildcards ("%" and "_") and provide them as literals by prepending a backslash. This translates "\\%" to "[%]" and "\\\_" to "[\_]".  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  