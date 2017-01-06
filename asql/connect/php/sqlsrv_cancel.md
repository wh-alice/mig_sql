---
title: "sqlsrv_cancel | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
apiname: 
  - "sqlsrv_cancel"
apitype: "NA"
helpviewer_keywords: 
  - "sqlsrv_cancel"
  - "API Reference, sqlsrv_cancel"
ms.assetid: 75798c9b-f711-445d-9b8f-ba4d405ca50a
caps.latest.revision: 32
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
# sqlsrv_cancel
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Cancels a statement. This means that any pending results for the statement are discarded. After this function is called, the statement can be re-executed if it was prepared with [sqlsrv_prepare](../../connect/php/sqlsrv_prepare.md). Calling this function is not necessary if all the results associated with the statement have been consumed.  
  
## Syntax  
  
```  
  
sqlsrv_cancel( resource $stmt)  
```  
  
#### Parameters  
*$stmt*: The statement to be canceled.  
  
## Return Value  
A Boolean value: **true** if the operation was successful. Otherwise, **false**.  
  
## Example  
The following example targets the [AdventureWorks](http://go.microsoft.com/fwlink/?LinkID=67739) database to execute a query, then consumes and counts results until the variable *$salesTotal* reaches a specified amount. The remaining query results are then discarded. The example assumes that SQL Server and the AdventureWorks database are installed on the local computer. All output is written to the console when the example is run from the command line.  
  
```  
<?php  
/* Connect to the local server using Windows Authentication and   
specify the AdventureWorks database as the database in use. */  
$serverName = "(local)";  
$connectionInfo = array( "Database"=>"AdventureWorks");  
$conn = sqlsrv_connect( $serverName, $connectionInfo);  
if( $conn === false )  
{  
     echo "Could not connect.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
/* Prepare and execute the query. */  
$tsql = "SELECT OrderQty, UnitPrice FROM Sales.SalesOrderDetail";  
$stmt = sqlsrv_prepare( $conn, $tsql);  
if( $stmt === false )  
{  
     echo "Error in statement preparation.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
if( sqlsrv_execute( $stmt ) === false)  
{  
     echo "Error in statement execution.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
/* Initialize tracking variables. */  
$salesTotal = 0;  
$count = 0;  
  
/* Count and display the number of sales that produce revenue  
of $100,000. */  
while( ($row = sqlsrv_fetch_array( $stmt)) && $salesTotal <=100000)  
{  
     $qty = $row[0];  
     $price = $row[1];  
     $salesTotal += ( $price * $qty);  
     $count++;  
}  
echo "$count sales accounted for the first $$salesTotal in revenue.\n";  
  
/* Cancel the pending results. The statement can be reused. */  
sqlsrv_cancel( $stmt);  
?>  
```  
  
## Comments  
A statement that is prepared and executed using the combination of [sqlsrv_prepare](../../connect/php/sqlsrv_prepare.md) and [sqlsrv_execute](../../connect/php/sqlsrv_execute.md) can be re-executed with **sqlsrv_execute** after calling **sqlsrv_cancel**. A statement that is executed with [sqlsrv_query](../../connect/php/sqlsrv_query.md) cannot be re-executed after calling **sqlsrv_cancel**.  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[Connecting to the Server](../../connect/php/connecting-to-the-server.md)  
[Retrieving Data](../../connect/php/retrieving-data.md)  
[About Code Examples in the Documentation](../../connect/php/about-code-examples-in-the-documentation.md)  
[sqlsrv_free_stmt](../../connect/php/sqlsrv_free_stmt.md)  
  
