---
title: "setClientInfo Method (java.lang.String, java.lang.String) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8d050831-8305-48a8-bd22-207932111040
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
# setClientInfo Method (java.lang.String, java.lang.String)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the value of the specified client information property.  
  
## Syntax  
  
```  
  
public void setClientInfo (java.lang.String name,  
                           java.lang.String value)  
```  
  
#### Parameters  
 *name*  
  
 A String that contains the name of the client information property to set.  
  
 *value*  
  
 A String that contains the value to set the client infomation property to.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setClientInfo method is specified by the setClientInfo method in the java.sql.Connection interface.  
  
 The Microsoft JDBC Driver for SQL Server does not support any client information properties. In the 2.0 JDBC Driver, this method generates a warning for a property. Applications should use [getWarnings](../../../connect/jdbc/reference/getwarnings-method--sqlserverconnection-.md) method of the [SQLServerConnection](../../../connect/jdbc/reference/sqlserverconnection-class.md) class to retrieve a warning.  
  
## See Also  
 [setClientInfo Method &#40;SQLServerConnection&#41;](../../../connect/jdbc/reference/setclientinfo-method--sqlserverconnection-.md)   
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  