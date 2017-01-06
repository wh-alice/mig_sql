---
title: "PDOStatement::rowCount | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0569f26a-2376-4c20-8813-bd3c87d0ae9f
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
# PDOStatement::rowCount
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Returns the number of rows added, deleted, or changed by the last statement.  
  
## Syntax  
  
```  
  
int PDOStatement::rowCount ();  
```  
  
## Return Value  
The number of rows added, deleted, or changed.  
  
## Remarks  
If the last SQL statement executed by the associated PDOStatement was a SELECT statement, a PDO::CURSOR_FWDONLY cursor returns -1. A PDO::CURSOR_SCROLLABLE cursor returns the number of rows in the result set.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
This example shows two uses of rowCount. The first use returns the number of rows that were added to the table. The second use shows that rowCount can return the number of rows in a result set when you specify a scrollable cursor.  
  
```  
<?php  
$database = "Test";  
$server = "(local)";  
$conn = new PDO( "sqlsrv:server=$server ; Database = $database", "", "");  
  
$col1 = 'a';  
$col2 = 'b';  
  
$query = "insert into Table2(col1, col2) values(?, ?)";  
$stmt = $conn->prepare( $query );  
$stmt->execute( array( $col1, $col2 ) );  
print $stmt->rowCount();  
  
echo "\n\n";  
  
$con = null;  
$database = "AdventureWorks";  
$conn = new PDO( "sqlsrv:server=$server ; Database = $database", "", "");  
  
$query = "select * from Person.ContactType";  
$stmt = $conn->prepare( $query, array(PDO::ATTR_CURSOR => PDO::CURSOR_SCROLL));  
$stmt->execute();  
print $stmt->rowCount();  
?>  
```  
  
## See Also  
[PDOStatement Class](../../connect/php/pdostatement-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
