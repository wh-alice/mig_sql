---
title: "isWrapperFor Method (SQLServerXADataSource) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d612461d-4c3f-46db-b968-ff4c80b2aa7c
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
# isWrapperFor Method (SQLServerXADataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Indicates whether this object is a wrapper for the specified interface.  
  
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
 The [isWrapperFor](../../../connect/jdbc/reference/iswrapperfor-method--sqlserverxadatasource-.md) method and the [unwrap](../../../connect/jdbc/reference/unwrap-method--sqlserverxadatasource-.md) method are defined by the java.sql.Wrapper interface, which is introduced in the JDBC 4.0 Spec.  
  
 If this method returns true, calling [unwrap](../../../connect/jdbc/reference/unwrap-method--sqlserverxadatasource-.md) with the same argument will succeed.  
  
 For more information, see [Wrappers and Interfaces](../../../connect/jdbc/wrappers-and-interfaces.md).  
  
## See Also  
 [unwrap Method &#40;SQLServerXADataSource&#41;](../../../connect/jdbc/reference/unwrap-method--sqlserverxadatasource-.md)   
 [SQLServerXADataSource Methods](../../../connect/jdbc/reference/sqlserverxadatasource-methods.md)   
 [SQLServerXADataSource Members](../../../connect/jdbc/reference/sqlserverxadatasource-members.md)   
 [SQLServerXADataSource Class](../../../connect/jdbc/reference/sqlserverxadatasource-class.md)  
  
  