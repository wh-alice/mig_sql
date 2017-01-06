---
title: "getLastUpdateCount Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getLastUpdateCount"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 4c4fbb24-0b02-42da-928c-a903bb591cc7
caps.latest.revision: 17
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
# getLastUpdateCount Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Returns a **Boolean** value that indicates if the lastUpdateCount property is enabled.  
  
## Syntax  
  
```  
  
public boolean getLastUpdateCount()  
```  
  
## Return Value  
 **true** if lastUpdateCount is enabled. Otherwise, **false**.  
  
## Remarks  
 If the lastUpdateCount property is set to **true**, the Microsoft JDBC Driver for SQL Server will return only the last update count from an SQL statement passed to the server. If the lastUpdateCount property is set to **false**, the driver will return all update counts including those returned by any triggers that may have fired. If the lastUpdateCount property is not set, the getLastUpdateCount method returns the default value of **true**.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  