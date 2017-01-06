---
title: "ISQLServerStatement Interface | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 7f83b514-6e76-4f37-baf3-a10db2010e7c
caps.latest.revision: 9
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
# ISQLServerStatement Interface
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Represents the basic implementation of JDBC statement functionality. This interface was added in SQL Server JDBC Driver 3.0.  
  
 **Package:** com.microsoft.sqlserver.jdbc  
  
 **Extends:** java.sql.Statement  
  
## Syntax  
  
```  
  
public interface ISQLServerStatement  
```  
  
## Remarks  
 This interface is implemented by [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md).  
  
 This interface exposes the following Microsoft JDBC Driver for SQL Server-specific methods:  
  
|Method|For more information, see|  
|------------|-------------------------------|  
|public String getResponseBuffering|[getResponseBuffering](../../../connect/jdbc/reference/getresponsebuffering-method--sqlserverstatement-.md)|  
|public void setResponseBuffering|[setResponseBuffering](../../../connect/jdbc/reference/setresponsebuffering-method--sqlserverstatement-.md)|  
  
## See Also  
 [JDBC Driver API Reference](../../../connect/jdbc/reference/jdbc-driver-api-reference.md)  
  
  