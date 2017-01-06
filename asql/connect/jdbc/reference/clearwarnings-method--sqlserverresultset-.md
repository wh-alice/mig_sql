---
title: "clearWarnings Method (SQLServerResultSet) | Microsoft Docs"
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
  - "SQLServerResultSet.clearWarnings"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: f55af4b6-ae5c-41c9-8aa3-8313773f5443
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
# clearWarnings Method (SQLServerResultSet)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Clears all warnings reported on this [SQLServerResultSet](../../../connect/jdbc/reference/sqlserverresultset-class.md) object.  
  
> [!NOTE]  
>  This method is not currently implemented by the Microsoft JDBC Driver for SQL Server. If called, it will always return null.  
  
## Syntax  
  
```  
  
public void clearWarnings()  
```  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This clearWarnings method is specified by the clearWarnings method in the java.sql.ResultSet interface.  
  
## See Also  
 [SQLServerResultSet Members](../../../connect/jdbc/reference/sqlserverresultset-members.md)   
 [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md)  
  
  