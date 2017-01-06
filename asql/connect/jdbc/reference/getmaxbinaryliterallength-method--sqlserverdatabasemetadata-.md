---
title: "getMaxBinaryLiteralLength Method (SQLServerDatabaseMetaData) | Microsoft Docs"
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
  - "SQLServerDatabaseMetaData.getMaxBinaryLiteralLength"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 42e49ff9-8072-44e4-ad75-c864c3a4ad8c
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
# getMaxBinaryLiteralLength Method (SQLServerDatabaseMetaData)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the maximum number of hex characters this database allows in an inline binary literal.  
  
## Syntax  
  
```  
  
public int getMaxBinaryLiteralLength()  
```  
  
## Return Value  
 An **int** that indicates the maximum number of hexadecimal characters.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getMaxBinaryLiteralLength method is specified by the getMaxBinaryLiteralLength method in the java.sql.DatabaseMetaData interface.  
  
## See Also  
 [SQLServerDatabaseMetaData Methods](../../../connect/jdbc/reference/sqlserverdatabasemetadata-methods.md)   
 [SQLServerDatabaseMetaData Members](../../../connect/jdbc/reference/sqlserverdatabasemetadata-members.md)   
 [SQLServerDatabaseMetaData Class](../../../connect/jdbc/reference/sqlserverdatabasemetadata-class.md)  
  
  