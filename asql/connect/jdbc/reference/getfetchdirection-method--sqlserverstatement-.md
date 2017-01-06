---
title: "getFetchDirection Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.getFetchDirection"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: ceb4ae68-decc-46d3-83f1-0bbd23aaf58c
caps.latest.revision: 12
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
# getFetchDirection Method (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Retrieves the direction for fetching rows from database tables that is the default for result sets that are generated from this [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object.  
  
> [!NOTE]  
>  This method is not currently implemented by the Microsoft JDBC Driver for SQL Server. Therefore, it will always return FETCH_UNKNOWN.  
  
## Syntax  
  
```  
  
public final int getFetchDirection()  
```  
  
## Return Value  
 An **int** that indicates the fetch direction that is specified by the [setFetchDirection](../../../connect/jdbc/reference/setfetchdirection-method--sqlserverstatement-.md) method.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getFetchDirection method is specified by the getFetchDirection method in the java.sql.Statement interface.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  