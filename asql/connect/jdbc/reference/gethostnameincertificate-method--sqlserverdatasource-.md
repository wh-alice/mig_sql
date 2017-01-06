---
title: "getHostNameInCertificate Method (SQLServerDataSource) | Microsoft Docs"
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
  - "getHostNameInCertificate Method (SQLServerDataSource)"
apilocation: 
  - "getHostNameInCertificate Method (SQLServerDataSource)"
apitype: "Assembly"
ms.assetid: 45ea04e2-9ea5-4171-9136-d09f8a95e128
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
# getHostNameInCertificate Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns the host name used in validating the SQL Server Secure Sockets Layer (SSL) certificate.  
  
## Syntax  
  
```  
  
public java.lang.String getHostNameInCertificate()  
```  
  
## Return Value  
 A **String** that contains the host name, or null if no value is set.  
  
## Remarks  
 The host name is used to validate the SQL Server SSL certificate value when the communication layer is encrypted using SSL.  
  
 If the host name is not set, the [getHostNameInCertificate](../../../connect/jdbc/reference/gethostnameincertificate-method--sqlserverdatasource-.md) method returns null.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  