---
title: "sqlsrv_get_config | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
apiname: 
  - "sqlsrv_get_config"
apitype: "NA"
helpviewer_keywords: 
  - "API Reference, sqlsrv_get_config"
  - "sqlsrv_get_config"
ms.assetid: ce2befc2-af98-45bb-8d41-60f1674dccfc
caps.latest.revision: 7
ms.author: "annemill"
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
  - "zh-cn"
  - "zh-tw"
---
# sqlsrv_get_config
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Returns the current value of the specified configuration setting.  
  
## Syntax  
  
```  
  
sqlsrv_get_config( string $setting )  
```  
  
#### Parameters  
*$setting*: The configuration setting for which the value is returned. For a list of configurable settings, see [sqlsrv_configure](../../connect/php/sqlsrv_configure.md).  
  
## Return Value  
The value of the setting specified by the *$setting* parameter. If an invalid setting is specified, **false** is returned and an error is added to the error collection.  
  
## Remarks  
If **false** is returned by **sqlsrv_get_config**, you must call [sqlsrv_errors](../../connect/php/sqlsrv_errors.md) to determine if an error occurred or if **false** is the value of the setting specified by the *$setting* parameter.  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[sqlsrv_configure](../../connect/php/sqlsrv_configure.md)  
[sqlsrv_errors](../../connect/php/sqlsrv_errors.md)  
  
