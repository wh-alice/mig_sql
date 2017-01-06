---
title: "PDOStatement::getAttribute | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 41d0cca3-8556-4573-bb90-8e9402d9379f
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
# PDOStatement::getAttribute
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Retrieves the value of a predefined PDOStatement attribute or custom driver attribute.  
  
## Syntax  
  
```  
  
mixed PDOStatement::getAttribute( $attribute );  
```  
  
#### Parameters  
$*attribute*: An integer, one of the PDO::ATTR_* or PDO::SQLSRV_ATTR_\* constants. Supported attributes are the attributes you can set with [PDOStatement::setAttribute](../../connect/php/pdostatement--setattribute.md), PDO::SQLSRV_ATTR_DIRECT_QUERY (see [Direct Statement Execution and Prepared Statement Execution in the PDO_SQLSRV Driver](../../connect/php/05544ca6-1e07-486c-bf03-e8c2c25b3024.md) for more information about PDO::SQLSRV_ATTR_DIRECT_QUERY), and PDO::ATTR_CURSOR.  
  
## Return Value  
On success, returns a (mixed) value for a predefined PDO attribute or custom driver attribute. Returns null on failure.  
  
## Remarks  
See [PDOStatement::setAttribute](../../connect/php/pdostatement--setattribute.md) for a sample.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## See Also  
[PDOStatement Class](../../connect/php/pdostatement-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
