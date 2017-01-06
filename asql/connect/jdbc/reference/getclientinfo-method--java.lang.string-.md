---
title: "getClientInfo Method (java.lang.String) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: e8e632c4-d6cc-4c5e-b6ad-873579343b19
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
# getClientInfo Method (java.lang.String)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves the value of a specified client information property.  
  
## Syntax  
  
```  
  
public java.lang.String getClientInfo (java.lang.String name)  
```  
  
#### Parameters  
 *name*  
  
 A String that contains the name of the client information property to retrieve.  
  
## Return Value  
 A String that contains the value of the client information property.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getClientInfo method is specified by the getClientInfo method in the java.sql.Connection interface.  
  
 The Microsoft JDBC Driver for SQL Server does not support any client info properties. As a result, this method returns **null**.  
  
 Similarly, applications can use the [getClientInfoProperties](../../../connect/jdbc/reference/getclientinfoproperties-method--sqlserverdatabasemetadata-.md) method of the [SQLServerDatabaseMetaData](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md) class to retrieve a list of the client information properties that the driver supports. The [getClientInfoProperties](../../../connect/jdbc/reference/getclientinfoproperties-method--sqlserverdatabasemetadata-.md) method returns an empty result set.  
  
## See Also  
 [getClientInfo Method &#40;SQLServerConnection&#41;](../../../connect/jdbc/reference/getclientinfo-method--sqlserverconnection-.md)   
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  