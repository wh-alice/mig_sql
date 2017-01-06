---
title: "getShort Method (int) | Microsoft Docs"
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
  - "SQLServerCallableStatement.getShort (int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: cd9773c1-b598-4adb-aaf6-0c0f589cbef5
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
# getShort Method (int)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the value of the designated parameter as a **short** in the Java programming language given the parameter index.  
  
## Syntax  
  
```  
  
public short getShort(int index)  
```  
  
#### Parameters  
 *index*  
  
 An **int** that indicates the parameter index.  
  
## Return Value  
 A **short** value.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getShort method is specified by the getShort method in the java.sql.CallableStatement interface.  
  
 This method is supported only on SQL Server data types that can safely return an integer value such as **smallint**, **tinyint**, and **bit**. Using this method on any other data types will cause an exception to be thrown.  
  
## See Also  
 [getShort Method &#40;SQLServerCallableStatement&#41;](../../../connect/jdbc/reference/getshort-method--sqlservercallablestatement-.md)   
 [SQLServerCallableStatement Members](../../../connect/jdbc/reference/sqlservercallablestatement-members.md)   
 [SQLServerCallableStatement Class](../../../connect/jdbc/reference/sqlservercallablestatement-class.md)  
  
  