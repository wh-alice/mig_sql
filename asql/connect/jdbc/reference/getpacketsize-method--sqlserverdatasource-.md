---
title: "getPacketSize Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getPacketSize"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: b2e9f01a-2e51-47e5-90bf-43c62d1be74d
caps.latest.revision: 14
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
# getPacketSize Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns the current network packet size used to communicate with SQL Server, specified in bytes.  
  
## Syntax  
  
```  
  
public int getPacketSize()  
```  
  
## Return Value  
 An **int** value containing the current network packet size.  
  
## Remarks  
 If the packetSize property is not set, the getPacketSize method returns the default value of 8000.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  