---
title: "prepareStatement Method (java.lang.String) | Microsoft Docs"
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
  - "SQLServerConnection.prepareStatement (java.lang.String)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: e825765c-eb55-4800-951b-f3495da36641
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
# prepareStatement Method (java.lang.String)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Creates a [SQLServerPreparedStatement](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) object for sending parameterized SQL statements to the database.  
  
## Syntax  
  
```  
  
public java.sql.PreparedStatement prepareStatement(java.lang.String sql)  
```  
  
#### Parameters  
 *sql*  
  
 A **String** containing an SQL statement.  
  
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
  
  