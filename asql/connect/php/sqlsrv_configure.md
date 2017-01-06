---
title: "sqlsrv_configure | Microsoft Docs"
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
  - "sqlsrv_configure"
apitype: "NA"
helpviewer_keywords: 
  - "sqlsrv_configure"
  - "API Reference, sqlsrv_configure"
ms.assetid: 9393f975-a4ef-4c50-b4dd-14892fc55cc9
caps.latest.revision: 20
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
# sqlsrv_configure
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Changes the settings for error handling and logging options.  
  
## Syntax  
  
```  
  
sqlsrv_configure( string $setting, mixed $value )  
```  
  
#### Parameters  
*$setting*: The name of the setting to be configured. See table below for list of settings.  
  
*$value*: The value to be applied to the setting specified in the *$setting* parameter. The possible values for this parameter depend on which setting is specified. The following table lists the possible combinations:  
  
|Setting|Possible values for $value parameter (integer equivalent in parentheses)|Default value|  
|-----------|------------------------------------------------------------------------------|-----------------|  
|ClientBufferMaxKBSize<sup>1</sup>|A non negative number up to the PHP memory limit.<br /><br />Zero (0) means no limit to the buffer size.|10240|  
|LogSeverity<sup>2</sup>|SQLSRV_LOG_SEVERITY_ALL (-1)<br /><br />SQLSRV_LOG_SEVERITY_ERROR (1)<br /><br />SQLSRV_LOG_SEVERITY_NOTICE (4)<br /><br />SQLSRV_LOG_SEVERITY_WARNING (2)|SQLSRV_LOG_SEVERITY_ERROR (1)|  
|LogSubsystems<sup>2</sup>|SQLSRV_LOG_SYSTEM_ALL (-1)<br /><br />SQLSRV_LOG_SYSTEM_CONN (2)<br /><br />SQLSRV_LOG_SYSTEM_INIT (1)<br /><br />SQLSRV_LOG_SYSTEM_OFF (0)<br /><br />SQLSRV_LOG_SYSTEM_STMT (4)<br /><br />SQLSRV_LOG_SYSTEM_UTIL (8)|SQLSRV_LOG_SYSTEM_OFF (0)|  
|WarningsReturnAsErrors<sup>3</sup>|**true** (1) or **false** (0)|**true** (1)|  
  
## Return Value  
If **sqlsrv_configure** is called with an unsupported setting or value, the function returns **false**. Otherwise, the function returns **true**.  
  
## Remarks  
(1) For more information about client-side queries, see [Cursor Types &#40;SQLSRV Driver&#41;](../../connect/php/cursor-types--sqlsrv-driver-.md).  
  
(2) For more information about logging activity, see [Logging Activity](../../connect/php/logging-activity.md).  
  
(3) For more information about configuring error and warning handling, see [How to: Configure Error and Warning Handling Using the SQLSRV Driver](../../connect/php/how-to--configure-error-and-warning-handling-using-the-sqlsrv-driver.md).  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[Programming Guide for PHP SQL Driver](../../connect/php/programming-guide-for-php-sql-driver.md) 
  
