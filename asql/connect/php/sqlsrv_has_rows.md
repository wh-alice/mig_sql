---
title: "sqlsrv_has_rows | Microsoft Docs"
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
  - "API Reference, sqlsrv_has_rows"
  - "sqlsrv_has_rows"
ms.assetid: 4da7f640-cf12-409f-9e00-95b30a8d5e17
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
# sqlsrv_has_rows
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Indicates if the result set has one or more rows.  
  
## Syntax  
  
```  
  
sqlsrv_has_rows( resource $stmt )  
```  
  
#### Parameters  
*$stmt*: The executed statement.  
  
## Return Value  
If there are rows in the result set, the return value will be **true**. If there are no rows, or if the function call fails, the return value will be **false**.  
  
## Example  
  
```  
<?php  
   $server = "server_name";  
   $conn = sqlsrv_connect( $server, array( 'Database' => 'Northwind' ) );  
  
   $stmt = sqlsrv_query( $conn, "select * from orders where CustomerID = 'VINET'" , array());  
  
   if ($stmt !== NULL) {  
      $rows = sqlsrv_has_rows( $stmt );  
  
      if ($rows === true)  
         echo "\nthere are rows\n";  
      else   
         echo "\nno rows\n";  
   }  
?>  
```  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
  
