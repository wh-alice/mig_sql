---
title: "getObjectInstance Method (SQLServerDataSourceObjectFactory) | Microsoft Docs"
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
  - "SQLServerDataSourceObjectFactory.getObjectInstance"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 0a1503e2-e991-4d70-a223-087fc63baf73
caps.latest.revision: 7
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
# getObjectInstance Method (SQLServerDataSourceObjectFactory)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Retrieves an instance of the specified data source object.  
  
## Syntax  
  
```  
  
public java.lang.Object getObjectInstance(java.lang.Object ref,  
                                          javax.naming.Name name,  
                                          javax.naming.Context c,  
                                          java.util.Hashtable h)  
```  
  
#### Parameters  
 *ref*  
  
 An **Object** value.  
  
 *name*  
  
 The name of the object.  
  
 *c*  
  
 The context relative to the specified name.  
  
 *h*  
  
 The environment that is used in creating the object.  
  
## Return Value  
 An **Object** value.  
  
## Exceptions  
 java.sql.SQLException  
  
## Remarks  
 This getObjectInstance method is specified by the getObjectInstance method in the javax.naming.spi.ObjectFactory interface.  
  
## See Also  
 [SQLServerDataSourceObjectFactory Methods](../../../connect/jdbc/reference/sqlserverdatasourceobjectfactory-methods.md)   
 [SQLServerDataSourceObjectFactory Members](../../../connect/jdbc/reference/sqlserverdatasourceobjectfactory-members.md)   
 [SQLServerDataSourceObjectFactory Class](../../../connect/jdbc/reference/sqlserverdatasourceobjectfactory-class.md)  
  
  