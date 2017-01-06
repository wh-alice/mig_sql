---
title: "setResponseBuffering Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setResponseBuffering(String responseBufferingValue)"
apilocation: 
  - "SQLServerDataSource.setResponseBuffering(String responseBufferingValue)"
apitype: "Assembly"
ms.assetid: c9e43ff2-8117-4dca-982d-83c863d0c8e1
caps.latest.revision: 27
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
# setResponseBuffering Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets the response buffering mode for connections created by using this [SQLServerDataSource](../../../connect/jdbc/reference/sqlserverdatasource-class.md) object.  
  
## Syntax  
  
```  
  
public void setResponseBuffering(java.lang.String value)  
```  
  
#### Parameters  
 *value*  
  
 A **String** that contains the buffering and streaming mode. The valid mode can be one of the following case-insensitive Strings: **full** or **adaptive**.  
  
## Remarks  
 The **full** value specifies reading the entire result from the server at run time.  
  
 The **adaptive** value specifies buffering the minimum possible data when necessary. The **adaptive** value is the default buffering mode.  
  
 For more information about using the response buffering mode, see [Using Adaptive Buffering](../../../connect/jdbc/using-adaptive-buffering.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  