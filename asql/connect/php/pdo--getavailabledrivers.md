---
title: "PDO::getAvailableDrivers | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: eab561e6-1229-401a-9482-008c23f9a4e6
caps.latest.revision: 10
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
# PDO::getAvailableDrivers
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Returns an array of the PDO drivers in your PHP installation.  
  
## Syntax  
  
```  
  
array PDO::getAvailableDrivers ();  
```  
  
## Return Value  
An array with the list of PDO drivers.  
  
## Remarks  
The name of the PDO driver is used in PDO::__construct, to create a PDO instance.  
  
PDO::getAvailableDrivers is not required to be implemented by PHP drivers. For more information about this method, see the PHP documentation.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
  
```  
<?php  
print_r(PDO::getAvailableDrivers());  
?>  
```  
  
## See Also  
[PDO Class](../../connect/php/pdo-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
