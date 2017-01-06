---
title: "PDOStatement::fetchObject | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 71ad1932-cab3-4c29-8950-f5e82547d3b5
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
# PDOStatement::fetchObject
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Retrieves the next row as an object.  
  
## Syntax  
  
```  
  
mixed PDOStatement::fetchObject([ $class_name[,$ctor_args ]] )  
```  
  
#### Parameters  
$*class_name*: An optional string specifying the name of the class to create. The default is stdClass.  
  
$*ctor_args*: An optional array with arguments to a custom class constructor.  
  
## Return Value  
On success, returns an object with an instance of the class. Properties map to columns. Returns false on failure.  
  
## Remarks  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
  
```  
<?php  
   $server = "(local)";  
   $database = "AdventureWorks";  
   $conn = new PDO( "sqlsrv:server=$server ; Database = $database", "", "");  
  
   $stmt = $conn->query( "select * from Person.ContactType where ContactTypeID < 5 " );  
   $result = $stmt->fetchObject();  
   print $result->Name;  
?>  
```  
  
## See Also  
[PDOStatement Class](../../connect/php/pdostatement-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
