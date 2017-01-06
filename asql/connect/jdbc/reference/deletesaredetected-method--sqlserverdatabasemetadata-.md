---
title: "deletesAreDetected Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.deletesAreDetected"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 73f3d994-bbd7-43d2-8b64-50057e278983
caps.latest.revision: 16
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
# deletesAreDetected Method (SQLServerDatabaseMetaData)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves whether or not a visible row delete can be detected by calling the [rowDeleted](../../../connect/jdbc/reference/rowdeleted-method--sqlserverresultset-.md) method of the [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) class.  
  
## Syntax  
  
```  
  
public boolean deletesAreDetected(int type)  
```  
  
#### Parameters  
 *type*  
  
 An **int** that indicates the result set type, which can be one of the following values as defined in java.sql.ResultSet or SQLServerResultSet:  
  
## java.sql.ResultSet Types  
 TYPE_FORWARD_ONLY  
  
 TYPE_SCROLL_SENSITIVE  
  
 TYPE_SCROLL_INSENSITIVE  
  
## SQLServerResultSet Types  
 TYPE_SS_SCROLL_STATIC  
  
 TYPE_SS_SCROLL_KEYSET  
  
 TYPE_SS_DIRECT_FORWARD_ONLY  
  
 TYPE_SS_SERVER_CURSOR_FORWARD_ONLY  
  
 TYPE_SS_SCROLL_DYNAMIC  
  
## Return Value  
 **true** if a hole replaces the deleted row. **false** if the deleted row is removed.  
  
 When using the Microsoft JDBC Driver for SQL Server with a SQL Server database, this method returns **true** for TYPE_SS_SCROLL_KEYSET cursors and **false** for all other result set types.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This deletesAreDetected method is specified by the deletesAreDetected method in the java.sql.DatabaseMetaData interface.  
  
> [!NOTE]  
>  SQL Server detects deleted rows for all updatable cursor types, although the detection is transient for forward and dynamic cursors.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  