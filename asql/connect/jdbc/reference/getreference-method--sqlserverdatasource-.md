---
title: "getReference Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getReference"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b3fb1a97-86ee-4977-adca-c35ae199dbb3
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
# getReference Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns a reference to this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.  
  
## Syntax  
  
```  
  
public javax.naming.Reference getReference()  
```  
  
## Return Value  
 A Reference object.  
  
## Remarks  
 This getReference method is specified by the getReference method in the javax.naming.Referenceable interface.  
  
 Prior to SQL Server JDBC Driver 3.0, if SQLServerDataSource.setTrustStorePassword was called on a SQLServerDataSource object, the password would be present in the object returned by SQLServerDataSource.getReference, allowing the object to be used to make additional connections. In JDBC Driver 3.0, you will need to set the password on the object returned by SQLServerDataSource.getReference before you make connections with the object.  
  
 Also, if you set SQLServerDataSource.setTrustStorePassword before binding the data source properties, you must call SQLServerDataSource.setTrustStorePassword before getting the connection. For example,  
  
```  
ctx = new InitialContext(System.getProperties());  
  
SQLServerDataSource ds1 = (SQLServerDataSource) ctx.lookup(jndiName);  
  
ds1.setTrustStorePassword("XXXXX");  
Connection con = ds1.getConnection("user", "XXXXXX");  
  
ctx.rebind(jndiName, ds1);  
SQLServerDataSource ds2 = (SQLServerDataSource) ctx.lookup(jndiName);  
ds2.setTrustStorePassword("XXXXX");   // reset the truststore password  
con = ds2.getConnection("user", "XXXXXX");   // provide userid and password again  
```  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  