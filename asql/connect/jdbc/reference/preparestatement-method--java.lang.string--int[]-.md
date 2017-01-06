---
title: "prepareStatement Method (java.lang.String, int[]) | Microsoft Docs"
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
  - "SQLServerConnection.prepareStatement (java.lang.String, int[])"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 72b5c4a5-1382-4b2c-80a0-47c97c5f52d3
caps.latest.revision: 10
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
# prepareStatement Method (java.lang.String, int[])
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Creates a [SQLServerPreparedStatement](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) object for sending parameterized SQL statements to the database, and that is capable of returning the auto-generated keys designated by the given array.  
  
## Syntax  
  
```  
  
public java.sql.PreparedStatement prepareStatement(java.lang.String sql,  
                                                   int[] columnIndexes)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** that contains an SQL statement.  
  
 *columnIndexes*  
  
 An array of ints.  
  
## Return Value  
 A PreparedStatement object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This prepareStatement method is specified by the prepareStatement method in the java.sql.Connection interface.  
  
## See Also  
 [prepareStatement Method &#40;SQLServerConnection&#41;](../../../connect/jdbc/reference/preparestatement-method--sqlserverconnection-.md)   
 [SQLServerConnection Members](../../../connect/jdbc/reference/sqlserverconnection-members.md)   
 [SQLServerConnection Class](../../../connect/jdbc/reference/sqlserverconnection-class.md)  
  
  