---
title: "isWrapperFor Method (SQLServerStatement) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 53f3291f-d43a-476b-a656-d86168dacf6c
caps.latest.revision: 20
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
# isWrapperFor Method (SQLServerStatement)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Indicates whether this statement object is a wrapper for the specified interface.  
  
## Syntax  
  
```  
  
public boolean isWrapperFor(Class iface)  
```  
  
#### Parameters  
 *iface*  
  
 A **class** defining an interface.  
  
## Return Value  
 **true** if this object implements the interface or wraps an object that implements the interface. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 The [isWrapperFor](../../../connect/jdbc/reference/iswrapperfor-method--sqlserverstatement-.md) method and the [unwrap](../../../connect/jdbc/reference/unwrap-method--sqlserverstatement-.md) method are defined by the java.sql.Wrapper interface, which is introduced in JDBC 4.0.  
  
 If this method returns true, calling [unwrap](../../../connect/jdbc/reference/unwrap-method--sqlserverstatement-.md) with the same argument will succeed.  
  
 For an example code, see [Updating Large Data Sample](../../../connect/jdbc/updating-large-data-sample.md).  
  
 For more information, see [Wrappers and Interfaces](../../../connect/jdbc/wrappers-and-interfaces.md).  
  
## See Also  
 [unwrap Method &#40;SQLServerStatement&#41;](../../../connect/jdbc/reference/unwrap-method--sqlserverstatement-.md)   
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  