---
title: "setSendStringParametersAsUnicode Method (SQLServerDataSource) | Microsoft Docs"
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
  - "SQLServerDataSource.setSendStringParametersAsUnicode"
apilocation: 
  - "sqljdbc.jar"
apitype: "Assembly"
ms.assetid: 49198d63-76cb-4843-8d04-e49b1fbb6916
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
# setSendStringParametersAsUnicode Method (SQLServerDataSource)
![Download](../../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Sets a **boolean** value that indicates if sending string parameters to the server in UNICODE format is enabled.  
  
## Syntax  
  
```  
  
public void setSendStringParametersAsUnicode(boolean sendStringParametersAsUnicode)  
```  
  
#### Parameters  
 *sendStringParametersAsUnicode*  
  
 **true** if string parameters are sent to the server in UNICODE format. Otherwise, **false**.  
  
## Remarks  
 If the sendStringParametersAsUnicode property is set to **true**, which is the default value, string parameters are sent to the server in UNICODE format. If sendStringParametersAsUnicode is set to **false** string parameters are sent to the server in an ASCII/MBCS format, not in UNICODE. If sendStringParametersAsUnicode is not set, [getSendStringParametersAsUnicode](../../../connect/jdbc/reference/getsendstringparametersasunicode-method--sqlserverdatasource-.md) returns the default value of **true**.  
  
 For more information about the sendStringParametersAsUnicode connection property, see [Setting the Connection Properties](../../../connect/jdbc/setting-the-connection-properties.md).  
  
## See Also  
 [SQLServerDataSource Members](../../../connect/jdbc/reference/sqlserverdatasource-members.md)   
 [SQLServerDataSource Class](../../../connect/jdbc/reference/sqlserverdatasource-class.md)  
  
  