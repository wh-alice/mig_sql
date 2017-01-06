---
title: "Comparing Execution Functions | Microsoft Docs"
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
  - "executing queries"
ms.assetid: 130fc0fd-87dd-46b2-918f-de9dc572c769
caps.latest.revision: 18
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
# Comparing Execution Functions
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

The Microsoft Drivers for PHP for SQL Server provides several options for executing functions.  
  
If you are using the SQLSRV driver, use [sqlsrv_query](../../connect/php/sqlsrv_query.md) to execute a single query and [sqlsrv_prepare](../../connect/php/sqlsrv_prepare.md) with [sqlsrv_execute](../../connect/php/sqlsrv_execute.md) to execute a prepared statement multiple times with different parameter values for each execution.  
  
If you are using the PDO_SQLSRV driver, you can execute a query with one of the following:  
  
-   [PDO::exec](../../connect/php/pdo--exec.md)  
  
-   [PDO::query](../../connect/php/pdo--query.md)  
  
-   [PDO::prepare](../../connect/php/pdo--prepare.md) and [PDOStatement::execute](../../connect/php/pdostatement--execute.md).  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[PDO_SQLSRV Driver Reference](../../connect/php/pdo_sqlsrv-driver-reference.md)  
[Programming Guide for PHP SQL Driver](../../connect/php/programming-guide-for-php-sql-driver.md)
  
