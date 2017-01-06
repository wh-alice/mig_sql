---
title: "getTrustServerCertificate Method (SQLServerDataSource) | Microsoft Docs"
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
  - "getTrustServerCertificate Method (SQLServerDataSource)"
apilocation: 
  - "getTrustServerCertificate Method (SQLServerDataSource)"
apitype: "Assembly"
ms.assetid: e4f443cc-b5d7-4859-81df-836a8642ed07
caps.latest.revision: 15
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
# getTrustServerCertificate Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns a **Boolean** value that indicates if the trustServerCertificate property is enabled.  
  
## Syntax  
  
```  
  
public boolean getTrustServerCertificate()  
```  
  
## Return Value  
 **true** if trustServerCertificate is enabled. Otherwise, **false**.  
  
## Remarks  
 If the trustServerCertificate property is set to **true**, the SQL Server Secure Sockets Layer (SSL) certificate is automatically trusted when the communication layer is encrypted using SSL. In other words, the Microsoft JDBC Driver for SQL Server will not validate the SQL Server SSL certificate. The default value is **false**.  
  
 If the trustServerCertificate property is set to **false**, the Microsoft JDBC Driver for SQL Server will validate the server SSL certificate.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  