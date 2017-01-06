---
title: "setNClob Method (java.lang.String, java.sql.NClob) | Microsoft Docs"
ms.custom: ""
ms.date: "11/10/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4e30d242-0c1b-45db-b75f-41b041692f31
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
# setNClob Method (java.lang.String, java.sql.NClob)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the specified NClob object.  
  
## Syntax  
  
```  
  
public final void setNClob(java.lang.String parameterName,  
              java.sql.NClob value)  
```  
  
#### Parameters  
 *parameterName*  
  
 A **String** that contains the parameter name.  
  
 *value*  
  
 A NClob object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This method should be used for **NCHAR**, **NVARCHAR**, **NTEXT**, and **XML** parameter data types.  
  
 This setNClob method is specified by the setNClob method in the java.sql.CallableStatement interface.  
  
## See Also  
 [setNClob Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/setnclob-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)  
  
  