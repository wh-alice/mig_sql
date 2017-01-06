---
title: "PDOStatement::execute | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c2e80566-fa41-4918-8521-cf2e05374cbd
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
# PDOStatement::execute
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Executes a statement.  
  
## Syntax  
  
```  
  
bool PDOStatement::execute ([ $input ] );  
```  
  
#### Parameters  
*$input*: (Optional) An associative array containing the values for parameter markers.  
  
## Return Value  
true on success, false otherwise.  
  
## Remarks  
Statements executed with PDOStatement::execute must first be prepared with [PDO::prepare](../../connect/php/pdo--prepare.md). See [Direct Statement Execution and Prepared Statement Execution in the PDO_SQLSRV Driver](../../connect/php/05544ca6-1e07-486c-bf03-e8c2c25b3024.md) for information on how to specify direct or prepared statement execution.  
  
All values of the input parameters array are treated as PDO::PARAM_STR values.  
  
If the prepared statement includes parameter markers, you must either call PDOStatement::bindParam to bind the PHP variables to the parameter markers or pass an array of input-only parameter values.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
  
```  
<?php  
$database = "AdventureWorks";  
$server = "(local)";  
$conn = new PDO( "sqlsrv:server=$server ; Database = $database", "", "");  
  
$query = "select * from Person.ContactType";  
$stmt = $conn->prepare( $query );  
$stmt->execute();  
  
while ( $row = $stmt->fetch( PDO::FETCH_ASSOC ) ){  
   print "$row[Name]\n";  
}  
  
echo "\n";  
$param = "Owner";  
$query = "select * from Person.ContactType where name = ?";  
$stmt = $conn->prepare( $query );  
$stmt->execute(array($param));  
  
while ( $row = $stmt->fetch( PDO::FETCH_ASSOC ) ){  
   print "$row[Name]\n";  
}  
?>  
```  
  
## See Also  
[PDOStatement Class](../../connect/php/pdostatement-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
