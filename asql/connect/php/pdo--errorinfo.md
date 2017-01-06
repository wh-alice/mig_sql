---
title: "PDO::errorInfo | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 9d5481d5-13bc-4388-b3aa-78676c0fc709
caps.latest.revision: 11
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
# PDO::errorInfo
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Retrieves extended error information of the most recent operation on the database handle.  
  
## Syntax  
  
```  
  
array PDO::errorInfo();  
```  
  
## Return Value  
An array of error information about the most recent operation on the database handle. The array consists of the following fields:  
  
-   The SQLSTATE error code.  
  
-   The driver-specific error code.  
  
-   The driver-specific error message.  
  
If there is no error, or if the SQLSTATE is not set, the driver-specific fields will be NULL.  
  
## Remarks  
PDO::errorInfo only retrieves error information for operations performed directly on the database. Use PDOStatement::errorInfo when a PDOStatement instance is created using PDO::prepare or PDO::query.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
In this example, the name of the column is misspelled (`Cityx` instead of `City`), causing an error, which is then reported.  
  
```  
<?php  
$conn = new PDO( "sqlsrv:server=(local) ; Database = AdventureWorks ", "");  
$query = "SELECT * FROM Person.Address where Cityx = 'Essen'";  
  
$conn->query($query);  
print $conn->errorCode();  
echo "\n";  
print_r ($conn->errorInfo());  
?>  
```  
  
## See Also  
[PDO Class](../../connect/php/pdo-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
