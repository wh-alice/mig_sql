---
title: "setHostNameInCertificate Method (SQLServerDataSource) | Microsoft Docs"
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
  - "setHostNameInCertificate Method (SQLServerDataSource)"
apilocation: 
  - "setHostNameInCertificate Method (SQLServerDataSource)"
apitype: "Assembly"
ms.assetid: 2bcf4f2e-a103-4374-abc4-ffad4ce8e3c0
caps.latest.revision: 14
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
# setHostNameInCertificate Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the host name to be used in validating the SQL Server Secure Sockets Layer (SSL) certificate.  
  
## Syntax  
  
```  
  
public void setHostNameInCertificate(java.lang.String hostNameInCertificate)  
```  
  
#### Parameters  
 *hostNameInCertificate*  
  
 A **String** that contains the host name.  
  
## Remarks  
 The hostNameInCertificate value is used to validate the SQL Server SSL certificate when the communication layer is encrypted by using SSL. The default value is null.  
  
 If the hostNameInCertificate property is set to null or unspecified, the Microsoft JDBC Driver for SQL Server will use the serverName property value to validate against the SQL Server SSL certificate. If the hostNameInCertificate property is set to a string or an empty string "", the driver will use that value to validate the server SSL certificate.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  