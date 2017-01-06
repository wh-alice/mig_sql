---
title: "setTrustStore Method (SQLServerDataSource) | Microsoft Docs"
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
  - "setTrustStore Method (SQLServerDataSource)"
apilocation: 
  - "setTrustStore Method (SQLServerDataSource)"
apitype: "Assembly"
ms.assetid: bab5485d-4547-426c-adbe-44e2b5702d1d
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
# setTrustStore Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the path (including file name) to the certificate trustStore file.  
  
## Syntax  
  
```  
  
public void setTrustStore(java.lang.String trustStore)  
```  
  
#### Parameters  
 *trustStore*  
  
 A **String** that contains the path (including file name) to the certificate trustStore file.  
  
## Remarks  
 If the trustStore property is unspecified or set to null, the Microsoft JDBC Driver for SQL Server will rely on the trust manager factory's look up rules to determine which certificate store to use. The default SunX509 TrustManagerFactory tries to find the trust material in the following locations in this order:  
  
-   1. A file specified by the "javax.net.ssl.trustStore" Java Virtual Machine (JVM) system property.  
  
-   2. "\<java-home>/lib/security/jssecacerts" file.  
  
-   3. "\<java-home>/lib/security/cacerts" file.  
  
 For more information, see the SunX509 TrustManager Interface documentation on the Sun Microsystems Web site.  
  
 If the trustStore property is set to a string or an empty string "", the driver will use that value to find the trustStore file to validate the server SSL certificate.  
  
 The trustStorePassword property can be specified along with the trustStore property and its value is used to open the trustStore file. For more information, see [setTrustStorePassword](../../../connect/jdbc/reference/settruststorepassword-method--sqlserverdatasource-.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  