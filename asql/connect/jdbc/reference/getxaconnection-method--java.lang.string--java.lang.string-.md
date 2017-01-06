---
title: "getXAConnection Method (java.lang.String, java.lang.String) | Microsoft Docs"
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
  - "SQLServerXADataSource.getXAConnection (java.lang.String, java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 276e0093-3d42-4f73-acc4-2b5b98245b40
caps.latest.revision: 9
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
# getXAConnection Method (java.lang.String, java.lang.String)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Tries to establish a physical database connection using the given user name and password.  
  
## Syntax  
  
```  
  
public javax.sql.XAConnection getXAConnection(java.lang.String user,  
                                              java.lang.String password)  
```  
  
#### Parameters  
 *user*  
  
 A **String** that contains the user name.  
  
 *password*  
  
 A **String** that contains the password.  
  
## Return Value  
 An XAConnection object.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This getXAConnection method is specified by the getXAConnection method in the javax.sql.XADataSource interface.  
  
> [!NOTE]  
>  This method is typically called by XA connection pool implementations and not by regular JDBC application code.  
  
## See Also  
 [getXAConnection Method &#40;SQLServerXADataSource&#41;](../../../connect/jdbc/reference/getxaconnection-method--sqlserverxadatasource-.md)   
 [SQLServerXADataSource Methods](../../../connect/jdbc/reference/sqlserverxadatasource-methods.md)   
 [SQLServerXADataSource Members](../../../connect/jdbc/reference/sqlserverxadatasource-members.md)   
 [SQLServerXADataSource Class](../../../connect/jdbc/reference/sqlserverxadatasource-class.md)  
  
  