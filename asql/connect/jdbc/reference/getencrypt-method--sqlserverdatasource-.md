---
title: "getEncrypt Method (SQLServerDataSource) | Microsoft Docs"
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
  - "getEncrypt Method (SQLServerDataSource)"
apilocation: 
  - "getEncrypt Method (SQLServerDataSource)"
apitype: "Assembly"
ms.assetid: 1cdb12dd-6e6f-4bbd-8f5f-9e630f3ee2c9
caps.latest.revision: 19
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
# getEncrypt Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns a **Boolean** value that indicates if the encrypt property is enabled.  
  
## Syntax  
  
```  
  
public boolean getEncypt()  
```  
  
## Return Value  
 **true** if encrypt is enabled. Otherwise, **false**.  
  
## Remarks  
 If the encrypt property is set to **true**, the Microsoft JDBC Driver for SQL Server ensures that SQL Server uses SSL encryption for all data sent between the client and the server if the server has a certificate installed.  
  
 If the encrypt property is unspecified or set to **false**, the driver will not enforce the SQL Server to support SSL encryption. If the SQL Server instance is not configured to force the SSL encryption, a connection is established without any encryption. If the SQL Server instance is configured to force the SSL encryption, the Microsoft JDBC Driver for SQL Server will automatically enable SSL encryption when running on properly configured Java Virtual Machine (JVM), or else the connection is terminated and the driver will raise an error. If the encryption property is not set, the [getEncrypt](../../../connect/jdbc/reference/getencrypt-method--sqlserverdatasource-.md) method returns the default value of **false**.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  