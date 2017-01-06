---
title: "setTrustStorePassword Method (SQLServerDataSource) | Microsoft Docs"
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
  - "setTrustStorePassword Method (SQLServerDataSource)"
apilocation: 
  - "setTrustStorePassword Method (SQLServerDataSource)"
apitype: "Assembly"
ms.assetid: fa87cbde-71cc-4f21-bc07-f8ba2b6a0a3f
caps.latest.revision: 16
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
# setTrustStorePassword Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Sets the password that is used to check the integrity of the trustStore data.  
  
## Syntax  
  
```  
  
public void setTrustStorePassword(java.lang.String trustStorePassword)  
```  
  
#### Parameters  
 *trustStorePassword*  
  
 A **String** that contains the password that is used to check the integrity of the trustStore data.  
  
## Remarks  
 The trustStorePassword property can be specified along with the trustStore property and its value is used to check the integrity of the trustStore file.  
  
 If the trustStore property is set but the trustStorePassword property is not set, the integrity of the trustStore is not checked.  
  
 When both trustStore and trustStorePassword properties are unspecified, the driver will use the Java Virtual Machine (JVM) system properties, "javax.net.ssl.trustStore" and "javax.net.ssl.trustStorePassword". If the "javax.net.ssl.trustStorePassword" system property is not specified, the integrity of the trustStore is not checked.  
  
 If the trustStore property is not set but the trustStorePassword property is set, the JDBC driver will use the file specified by the "javax.net.ssl.trustStore" as a trust store and the integrity of the trust store is checked by using the specified trustStorePassword. This might be needed when the client application does not want to store the password in the JVM system property.  
  
 For more information, see [Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md).  
  
 Beginning in JDBC Driver 3.0, if you set SQLServerDataSource.setTrustStorePassword before binding the data source properties, you must call SQLServerDataSource.setTrustStorePassword before getting the connection. For more information, see [SQLServerDataSource.getReference](../../../connect/jdbc/reference/getreference-method--sqlserverdatasource-.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  