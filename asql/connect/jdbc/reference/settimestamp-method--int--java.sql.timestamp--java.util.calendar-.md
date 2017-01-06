---
title: "setTimestamp Method (int, java.sql.Timestamp, java.util.Calendar) | Microsoft Docs"
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
  - "SQLServerPreparedStatement.setTimestamp (int, java.sql.Timestamp, java.util.Calendar))"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 10c93cbf-f831-4e00-8e37-ea728bf34b1e
caps.latest.revision: 8
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
# setTimestamp Method (int, java.sql.Timestamp, java.util.Calendar)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the designated parameter to the given timestamp and calendar values.  
  
## Syntax  
  
```  
  
public final void setTimestamp(int n,  
                               java.sql.Timestamp x,  
                               java.util.Calendar cal)  
```  
  
#### Parameters  
 *n*  
  
 An **int** that indicates the parameter number.  
  
 *x*  
  
 An Timestamp object.  
  
 *cal*  
  
 A Calendar object.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This setTimestamp method is specified by the setTimestamp method in the java.sql.PreparedStatement interface.  
  
## See Also  
 [setTimestamp Method &#40;SQLServerPreparedStatement&#41;](../../../connect/jdbc/reference/settimestamp-method--sqlserverpreparedstatement-.md)   
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  