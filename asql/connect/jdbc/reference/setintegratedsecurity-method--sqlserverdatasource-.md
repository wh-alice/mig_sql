---
title: "setIntegratedSecurity Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setIntegratedSecurity"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 4c968ee4-b041-424a-bf69-cc2c4a4f51c6
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
# setIntegratedSecurity Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets a **Boolean** value that indicates if the integratedSecurity property is enabled.  
  
## Syntax  
  
```  
  
public void setIntegratedSecurity(boolean enable)  
```  
  
#### Parameters  
 *enable*  
  
 **true** if integratedSecurity is enabled. Otherwise, **false**.  
  
## Remarks  
 Set to "**true**" to indicate that Windows credentials will be used by SQL Server to authenticate the user of the application. If "**true**", the Microsoft JDBC Driver for SQL Server will search the local computer credential cache for credentials that have already been provided at the computer or network logon. If "**false**", the username and password must be supplied.  
  
> [!NOTE]  
>  This property is only supported on Microsoft Windows operating systems.  
  
 For more information about using integrated authentication, see [Building the Connection URL](../../../connect/jdbc/building-the-connection-url.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  