---
title: "PDO::rollback | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: d918c1e3-1be0-4001-b3b0-000db6d9e8b8
caps.latest.revision: 8
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
# PDO::rollback
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Discards database commands that were issued after calling [PDO::beginTransaction](../../connect/php/pdo--begintransaction.md) and returns the connection to auto commit mode.  
  
## Syntax  
  
```  
  
bool PDO::rollBack ();  
```  
  
## Return Value  
true if the method call succeeded, false otherwise.  
  
## Remarks  
PDO::rollback is not affected by (and does not affect) the value of PDO::ATTR_AUTOCOMMIT.  
  
See [PDO::beginTransaction](../../connect/php/pdo--begintransaction.md) for an example that uses PDO::rollback.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## See Also  
[PDO Class](../../connect/php/pdo-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
