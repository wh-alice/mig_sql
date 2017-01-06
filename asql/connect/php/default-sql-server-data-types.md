---
title: "Default SQL Server Data Types | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "default data types"
  - "converting data types"
ms.assetid: 65c7c211-96d3-4e65-a1de-1fe8d21348e7
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
# Default SQL Server Data Types
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

When sending data to the server, the Microsoft Drivers for PHP for SQL Server converts data from its PHP data type to a SQL Server data type if no SQL Server data type has been specified by the user. The table that follows lists the PHP data type (the data type being sent to the server) and the default SQL Server data type (the data type to which the data is converted). For details about how to specify data types when sending data to the server, see [How to: Specify SQL Server Data Types When Using the SQLSRV Driver](../../connect/php/how-to--specify-sql-server-data-types-when-using-the-sqlsrv-driver.md).  
  
|PHP Data Type|Default SQL Server Type in the SQLSRV Driver|Default SQL Server Type in the PDO_SQLSRV Driver|  
|-----------------|------------------------------------------------|-----------------------------------------------------|  
|NULL|varchar(1)|not supported|  
|Boolean|bit|bit|  
|Integer|int|int|  
|Float|float(24)|not supported|  
|String (length less than 8000 bytes)|varchar(<string length>)|varchar(<string length>)|  
|String (length greater than 8000 bytes)|varchar(max)|varchar(max)|  
|Resource|Not supported.|Not supported.|  
|Stream (encoding: not binary)|varchar(max)|varchar(max)|  
|Stream (encoding: binary)|varbinary|varbinary|  
|Array|Not supported.|Not supported.|  
|Object|Not supported.|Not supported.|  
|DateTime (1)|datetime|Not supported.|  
  
## See Also  
[Constants &#40;Microsoft Drivers for PHP for SQL Server&#41;](../../connect/php/constants--microsoft-drivers-for-php-for-sql-server-.md)  
[Converting Data Types](../../connect/php/converting-data-types.md)  
[sqlsrv_field_metadata](../../connect/php/sqlsrv_field_metadata.md)  
[PHP Types](http://go.microsoft.com/fwlink/?LinkId=109071)  
[Data Types (Transact-SQL)](http://go.microsoft.com/fwlink/?LinkId=109068)  
  
