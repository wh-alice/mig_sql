---
title: "getURL Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.getURL"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: dd0d5d2c-91fe-4b0f-a162-69d898ba176e
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
# getURL Method (SQLServerDataSource)
[!INCLUDE[Driver_JDBC_Download](../../../connect/jdbc/includes)]

  Returns the URL that is used to connect to the data source.  
  
## Syntax  
  
```  
  
public java.lang.String getURL()  
```  
  
## Return Value  
 A **String** that contains the URL.  
  
## Remarks  
 For security reasons, you should not include the password in the URL that is supplied to the [setURL](../../../connect/jdbc/reference/seturl-method--sqlserverdatasource-.md) method. The reason for this is that third-party Java Application Servers will very often display the value set for the URL property in their data source configuration user interface. Instead, use the [setPassword](../../../connect/jdbc/reference/setpassword-method--sqlserverdatasource-.md) method to set the password value. Java Application Servers will not display a password that is set in their data source in the configuration user interface.  
  
> [!NOTE]  
>  If the setURL method is not called before calling the getURL method, getURL returns the default value of "jdbc:sqlserver://".  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  