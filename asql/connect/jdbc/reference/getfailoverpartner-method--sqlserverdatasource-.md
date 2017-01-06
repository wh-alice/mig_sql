---
title: "getFailoverPartner Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getFailoverPartner"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 885f927f-9c48-42e0-a7fb-fd936d2b8130
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
# getFailoverPartner Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns the name of the failover server that is used in a database mirroring configuration.  
  
## Syntax  
  
```  
  
public string getFailoverPartner()  
```  
  
## Return Value  
 A **String** that contains the name of the failover partner, or null if none is set.  
  
## Remarks  
 The value returned by this method reflects the failover partner name set using the [setFailoverPartner](../../../connect/jdbc/reference/setfailoverpartner-method--sqlserverdatasource-.md) method.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  