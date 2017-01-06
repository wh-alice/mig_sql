---
title: "supportsResultSetHoldability Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.supportsResultSetHoldability"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ab575792-fd11-4ff3-8847-1368e7a322c5
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
# supportsResultSetHoldability Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves whether this database supports the given result set holdability.  
  
## Syntax  
  
```  
  
public boolean supportsResultSetHoldability(int holdability)  
```  
  
#### Parameters  
 *holdability*  
  
 An **int** that indicates the result set holdability, which can be one of the following values:  
  
 ResultSet.HOLD_CURSORS_OVER_COMMIT  
  
 ResultSet.CLOSE_CURSORS_AT_COMMIT  
  
## Return Value  
 **true** if supported. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This supportsResultSetHoldability method is specified by the supportsResultSetHoldability method in the java.sql.DatabaseMetaData interface.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  