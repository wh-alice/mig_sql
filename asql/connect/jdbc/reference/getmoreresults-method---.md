---
title: "getMoreResults Method () | Microsoft Docs"
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
  - "SQLServerStatement.getMoreResults ()"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: df89db50-0b2f-4094-820a-30be25ad72fe
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
# getMoreResults Method ()
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Moves to the next result of this [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object.  
  
## Syntax  
  
```  
  
public final boolean getMoreResults()  
```  
  
## Return Value  
 **true** if the returned result is a result set. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getMoreResults method is specified by the getMoreResults method in the java.sql.Statement interface.  
  
 Calling the getMoreResults method implicitly closes any currently open result set objects that are obtained with the [getResultSet](../../../connect/jdbc/reference/getresultset-method--sqlserverstatement-.md) method.  
  
## See Also  
 [getMoreResults Method &#40;SQLServerStatement&#41;](../../../connect/jdbc/reference/getmoreresults-method--sqlserverstatement-.md)   
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  