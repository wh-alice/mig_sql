---
title: "ISQLServerResultSet Interface | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 002496f7-8ec0-4267-b4e6-ba095e2ef306
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
# ISQLServerResultSet Interface
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Represents a JDBC result set. This interface was added in SQL Server JDBC Driver 3.0.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** java.sql.ResultSet  
  
## Syntax  
  
```  
  
public interface ISQLServerResultSet  
```  
  
## Remarks  
 This interface is implemented by [SQLServerResultSet Class](../../../connect/jdbc/reference/sqlserverresultset-class.md).  
  
 This interface exposes the Microsoft JDBC Driver for SQL Server-specific methods:  
  
|Method|For more information, see|  
|------------|-------------------------------|  
|public microsoft.sql.DateTimeOffset getDateTimeOffset(int)|[getDateTimeOffset](../../../connect/jdbc/reference/getdatetimeoffset-int---sqlserverresultset-.md)|  
|public microsoft.sql.DateTimeOffset getDateTimeOffset(String)|[getDateTimeOffset](../../../connect/jdbc/reference/getdatetimeoffset-java.lang.string---sqlserverresultset-.md)|  
|public void updateDateTimeOffset(int, microsoft.sql.DateTimeOffset)|[updateDateTimeOffset](../../../connect/jdbc/reference/updatedatetimeoffset-int--microsoft.sql.datetimeoffset---sqlserverresultset-.md)|  
|public void updateDateTimeOffset(String, microsoft.sql.DateTimeOffset)|[updateDateTimeOffset](../../../connect/jdbc/reference/updatedatetimeoffset-string--microsoft.sql.datetimeoffset---sqlserverresultset-.md)|  
  
 This interface exposes the following Microsoft JDBC Driver for SQL Server-specific fields:  
  
|Field|For more information, see|  
|-----------|-------------------------------|  
|public static final int CONCUR_SS_OPTIMISTIC_CC|[CONCUR_SS_OPTIMISTIC_CC](../../../connect/jdbc/reference/concur_ss_optimistic_cc-field--sqlserverresultset-.md)|  
|public static final int CONCUR_SS_OPTIMISTIC_CCVAL|[CONCUR_SS_OPTIMISTIC_CCVAL](../../../connect/jdbc/reference/concur_ss_optimistic_ccval-field--sqlserverresultset-.md)|  
|public static final int CONCUR_SS_SCROLL_LOCKS|[CONCUR_SS_SCROLL_LOCKS](../../../connect/jdbc/reference/concur_ss_scroll_locks-field--sqlserverresultset-.md)|  
|public static final int TYPE_SS_DIRECT_FORWARD_ONLY|[TYPE_SS_DIRECT_FORWARD_ONLY](../../../connect/jdbc/reference/type_ss_direct_forward_only-field--sqlserverresultset-.md)|  
|public static final int TYPE_SS_SCROLL_DYNAMIC|[TYPE_SS_SCROLL_DYNAMIC](../../../connect/jdbc/reference/type_ss_scroll_dynamic-field--sqlserverresultset-.md)|  
|public static final int TYPE_SS_SCROLL_KEYSET|[TYPE_SS_SCROLL_KEYSET](../../../connect/jdbc/reference/type_ss_scroll_keyset-field--sqlserverresultset-.md)|  
|public static final int TYPE_SS_SCROLL_STATIC|[TYPE_SS_SCROLL_STATIC](../../../connect/jdbc/reference/type_ss_scroll_static-field--sqlserverresultset-.md)|  
|public static final int TYPE_SS_SERVER_CURSOR_FORWARD_ONLY|[TYPE_SS_SERVER_CURSOR_FORWARD_ONLY](../../../connect/jdbc/reference/type_ss_server_cursor_forward_only-field--sqlserverresultset-.md)|  
  
## See Also  
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  