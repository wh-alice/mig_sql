---
title: "getPortNumber Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getPortNumber"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: e5dc38d0-4340-4ad7-a56e-1d2a0f0fd846
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
# getPortNumber Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns the current port number that is used to communicate with SQL Server.  
  
## Syntax  
  
```  
  
public int getPortNumber()  
```  
  
## Return Value  
 An **int** value that contains the current port number.  
  
## Remarks  
 The port number is the TCP/IP port number that is used when opening a socket connection to SQL Server. If the portNumber property is not set, the getPortNumber method returns the default value of 1433.  
  
> [!NOTE]  
>  The [setPortNumber](../../../connect/jdbc/reference/setportnumber-method--sqlserverdatasource-.md) method does not do any range checking on the port value passed in. You can pass tort numbers that are not valid, like 99999, without triggering an error.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  