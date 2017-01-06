---
title: "doesMaxRowSizeIncludeBlobs Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.doesMaxRowSizeIncludeBlobs"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 0c90a7a7-5a59-4858-bb26-3e725d8611d7
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
# doesMaxRowSizeIncludeBlobs Method (SQLServerDatabaseMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves whether the return value for the [getMaxRowSize](../../../connect/jdbc/reference/getmaxrowsize-method--sqlserverdatabasemetadata-.md) method includes the SQL data types LONGVARCHAR and LONGVARBINARY.  
  
## Syntax  
  
```  
  
public boolean doesMaxRowSizeIncludeBlobs()  
```  
  
## Return Value  
 **true** if the return value includes the data types. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This doesMoxRowSizeIncludeBlobs method is specified by the doesMoxRowSizeIncludeBlobs method in the java.sql.DatabaseMetaData interface.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  