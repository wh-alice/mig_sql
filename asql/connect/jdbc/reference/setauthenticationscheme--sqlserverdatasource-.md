---
title: "setAuthenticationScheme (SQLServerDataSource) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: b942f78e-7ce1-44ef-923d-a7c3d7c76b83
caps.latest.revision: 4
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
# setAuthenticationScheme (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Indicates the kind of integrated security you want your application to use.  
  
## Syntax  
  
```vb  
public void setAuthenticationScheme(String authenticationScheme);  
```  
  
#### Parameters  
 *authenticationScheme*  
  
 Values are **"JavaKerberos"** and the default **"NativeAuthentication"**. For more information, see [Using Kerberos Integrated Authentication to Connect to SQL Server](../../../connect/jdbc/using-kerberos-integrated-authentication-to-connect-to-sql-server.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  