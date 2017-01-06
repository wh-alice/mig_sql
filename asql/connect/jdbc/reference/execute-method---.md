---
title: "execute Method () | Microsoft Docs"
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
  - "SQLServerPreparedStatement.execute ()"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: fa96d0f8-101b-422f-a767-405be9a5f74f
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
# execute Method ()
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Runs the SQL statement in this [SQLServerPreparedStatement](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md) object, which can be any kind of SQL statement.  
  
## Syntax  
  
```  
  
public boolean execute()  
```  
  
## Return Value  
 **true** if the statement returns a result set. **false** if it returns an update count or no result.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This execute method is specified by the execute method in the java.sql.PreparedStatement interface.  
  
## See Also  
 [execute Method &#40;SQLServerPreparedStatement&#41;](../../../connect/jdbc/reference/execute-method--sqlserverpreparedstatement-.md)   
 [SQLServerPreparedStatement Members](../../../connect/jdbc/reference/sqlserverpreparedstatement-members.md)   
 [SQLServerPreparedStatement Class](../../../connect/jdbc/reference/sqlserverpreparedstatement-class.md)  
  
  