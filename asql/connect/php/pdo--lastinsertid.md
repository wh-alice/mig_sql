---
title: "PDO::lastInsertId | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0c617b53-a74b-4d5b-b76b-3ec7f1b8e8de
caps.latest.revision: 9
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
# PDO::lastInsertId
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Returns the identifier for the row most recently inserted into a table in the database. The table must have an IDENTITY NOT NULL column.  
  
## Syntax  
  
```  
  
string PDO::lastInsertId ([ $name ] );  
```  
  
#### Parameters  
$*name*: An optional string that lets you specify the table.  
  
## Return Value  
A string of the identifier for the row most recently added. An empty string if the method call fails.  
  
## Remarks  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
  
```  
<?php  
   $database = "test";  
   $server = "(local)";  
   $conn = new PDO( "sqlsrv:server=$server; Database = $database", "", "");  
  
   $conn->exec("use Test");  
  
   $ret = $conn->exec("INSERT INTO Table1 VALUES( '19' )");  
   $ret = $conn->exec("INSERT INTO ScrollTest VALUES( 1, '19' )");  
  
   $lastRow = $conn->lastInsertId('Table1');  
   echo $lastRow . "\n";  
  
   // defaults to ScrollTest  
   $lastRow = $conn->lastInsertId();  
   echo $lastRow . "\n";  
?>  
```  
  
## See Also  
[PDO Class](../../connect/php/pdo-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
