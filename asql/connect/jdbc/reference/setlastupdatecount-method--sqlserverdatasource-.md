---
title: "setLastUpdateCount Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setLastUpdateCount"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 5487631a-1107-4169-84ca-b77fd09bea66
caps.latest.revision: 18
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
# setLastUpdateCount Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets a **Boolean** value that indicates if the lastUpdateCount property is enabled.  
  
## Syntax  
  
```  
  
public void setLastUpdateCount(boolean lastUpdateCount)  
```  
  
#### Parameters  
 *lastUpdateCount*  
  
 **true** if lastUpdateCount is enabled. Otherwise, **false**.  
  
## Remarks  
 If the lastUpdateCount property is set to **true**, Microsoft JDBC Driver for SQL Server will return only the last update count from from an SQL statement passed to the server. If the lastUpdateCount property is set to **false**, the driver will return all update counts including those returned by any triggers that may have fired. If the lastUpdateCount property is not set, the [getLastUpdateCount](../../../connect/jdbc/reference/getlastupdatecount-method--sqlserverdatasource-.md) method returns the default value of **true**.  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  