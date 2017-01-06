---
title: "setResponseBuffering Method (SQLServerStatement) | Microsoft Docs"
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
  - "SQLServerStatement.setResponseBuffering(String responseBufferingValue)"
apilocation: 
  - "SQLServerStatement.setResponseBuffering(String responseBufferingValue)"
apitype: "Assembly"
ms.assetid: 9f489835-6cda-4c8c-b139-079639a169cf
caps.latest.revision: 24
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
# setResponseBuffering Method (SQLServerStatement)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the response buffering mode for this [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object to case-insensitive **String full** or **adaptive**.  
  
## Syntax  
  
```  
  
public final void setResponseBuffering(java.lang.String value)  
```  
  
#### Parameters  
 *value*  
  
 A **String** that contains the response buffering mode. The valid mode can be one of the following case-insensitive Strings: **full** or **adaptive**.  
  
## Exceptions  
 [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md)  
  
## Remarks  
 **adaptive** specifies buffering the minimum possible data when necessary.  
  
 **full** specifies reading the entire result from the server at run time.  
  
 adaptive is the default value in JDBC Driver version 2.0 and 3.0. full was the default prior to JDBC Driver version 2.0.  
  
 The [setResponseBuffering](../../../connect/jdbc/reference/setresponsebuffering-method--sqlserverstatement-.md) method allows you to override the **responseBuffering** connection **String** property for the current [SQLServerStatement](../../../connect/jdbc/reference/sqlserverstatement-class.md) object. For more information about using the response buffering mode, see [Using Adaptive Buffering](../../../connect/jdbc/using-adaptive-buffering.md).  
  
 If the application specifies an invalid parameter value to the [setResponseBuffering](../../../connect/jdbc/reference/setresponsebuffering-method--sqlserverstatement-.md) method, a [SQLServerException](../../../connect/jdbc/reference/sqlserverexception-class.md) is thrown.  
  
## See Also  
 [SQLServerStatement Members](../../../connect/jdbc/reference/sqlserverstatement-members.md)   
 [SQLServerStatement Class](../../../connect/jdbc/reference/sqlserverstatement-class.md)   
 [Using Adaptive Buffering](../../../connect/jdbc/using-adaptive-buffering.md)  
  
  