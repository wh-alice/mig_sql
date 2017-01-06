---
title: "unwrap Method (SQLServerStatement) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: ce680176-ef04-4e44-bb6c-ec50bd06e7e6
caps.latest.revision: 22
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
# unwrap Method (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns an object that implements the specified interface to allow access to the Microsoft JDBC Driver for SQL Server-specific methods.  
  
## Syntax  
  
```  
  
public <T> T unwrap(Class<T> iface)  
```  
  
#### Parameters  
 *iface*  
  
 A class of type **T** defining an interface.  
  
## Return Value  
 An object that implements the specified interface.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 The [unwrap](../../../connect/jdbc/reference/unwrap-method--sqlserverstatement-.md) method is defined by the java.sql.Wrapper interface, which is introduced in the JDBC 4.0 Spec.  
  
 Applications might need to access extensions to the JDBC API that are specific to the Microsoft JDBC Driver for SQL Server. The unwrap method supports unwrapping to public classes that this object extends, if the classes expose vendor extensions.  
  
 When this method is called, the object unwraps to the [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) class.  
  
 For example code, see [Updating Large Data Sample](../../../connect/jdbc/updating-large-data-sample.md), or [unwrap Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/unwrap-method--sqlservercallablestatement-.md).  
  
 For more information, see [Wrappers and Interfaces](../../../connect/jdbc/wrappers-and-interfaces.md).  
  
## See Also  
 [isWrapperFor Method &#40;SQLServerStatement&#41;](../../../connect/jdbc/reference/iswrapperfor-method--sqlserverstatement-.md)   
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  