---
title: "getMoreResults Method (int) | Microsoft Docs"
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
  - "SQLServerStatement.getMoreResults (int)"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 6419e5a8-8b3a-4d5b-8226-95865c52c723
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
# getMoreResults Method (int)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Moves to the next result of this [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object and deals with any currently open result set objects according to the instructions specified by the given mode.  
  
## Syntax  
  
```  
  
public final boolean getMoreResults(int mode)  
```  
  
#### Parameters  
 *mode*  
  
 An **int** that indicates how to handle currently open result set objects. Must be one of the following constants:  
  
 CLOSE_CURRENT_RESULT  
  
 KEEP_CURRENT_RESULT (not supported by the JDBC driver)  
  
 CLOSE_ALL_RESULTS  
  
## Return Value  
 **true** if the returned result is a result set. Otherwise, **false**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 This getMoreResults method is specified by the getMoreResults method in the java.sql.Statement interface.  
  
 If the getMoreResults method is called before results are retrieved, it behaves as specified by the *mode* argument and moves to the next result.  
  
> [!NOTE]  
>  The JDBC driver does not support using the KEEP_CURRENT_RESULT constant. If it is used, an exception will be thrown.  
  
## See Also  
 [getMoreResults Method &#40;SQLServerStatement&#41;](../../../connect/jdbc/reference/getmoreresults-method--sqlserverstatement-.md)   
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)  
  
  