---
title: "PDOStatement::closeCursor | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 8997ab61-e948-4d54-8d32-fc080d55525c
caps.latest.revision: 12
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
# PDOStatement::closeCursor
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Closes the cursor, enabling the statement to be executed again.  
  
## Syntax  
  
```  
  
bool PDOStatement::closeCursor();  
```  
  
## Return Value  
true on success, otherwise false.  
  
## Remarks  
closeCursor has an effect when the MultipleActiveResultSets connection option is set to false.  For more information about the MultipleActiveResultSets connection option, see [How to: Disable Multiple Active Resultsets (MARS)](../../connect/php/how-to--disable-multiple-active-resultsets--mars-.md).  
  
Instead of calling closeCursor, you can also just set the statement handle to null.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
  
```  
<?php  
$database = "AdventureWorks";  
$server = "(local)";  
$conn = new PDO( "sqlsrv:server=$server ; Database = $database", "", "", array('MultipleActiveResultSets' => false ) );  
  
$stmt = $conn->prepare('SELECT * FROM Person.ContactType');  
  
$stmt2 = $conn->prepare('SELECT * FROM HumanResources.Department');  
  
$stmt->execute();  
  
$result = $stmt->fetch();  
print_r($result);  
  
$stmt->closeCursor();  
  
$stmt2->execute();  
$result = $stmt2->fetch();  
print_r($result);  
?>  
```  
  
## See Also  
[PDOStatement Class](../../connect/php/pdostatement-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
