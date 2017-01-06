---
title: "SQLServerParameterMetaData Class | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 546290e0-9411-4a2b-aa36-61251e70e9cf
caps.latest.revision: 10
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
# SQLServerParameterMetaData Class
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Represents the metadata for prepared statement parameters.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** java.lang.Object  
  
 **Implements:** java.sql.ParameterMetaData  
  
## Syntax  
  
```  
  
public class SQLServerParameterMetaData  
```  
  
## Remarks  
 To retrieve parameter metadata, prepared statements are run with SET FMT ONLY. Callable statements call sp_sproc_columns to retrieve names and metadata for the procedure parameters.  
  
## See Also  
 [SQLServerParameterMetaData Members](../../../connect/jdbc/reference/sqlserverparametermetadata-members.md)   
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  