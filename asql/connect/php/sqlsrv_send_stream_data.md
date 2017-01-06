---
title: "sqlsrv_send_stream_data | Microsoft Docs"
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
  - "sqlsrv_send_stream_data"
apitype: "NA"
helpviewer_keywords: 
  - "sqlsrv_send_stream_data"
  - "API Reference, sqlsrv_send_stream_data"
  - "streaming data"
ms.assetid: 826c2d45-694f-42b8-b12b-cd4523a31883
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
# sqlsrv_send_stream_data
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Sends data from parameter streams to the server. Up to eight kilobytes (8K) of data is sent with each call to **sqlsrv_send_stream_data**.  
  
> [!NOTE]  
> By default, all stream data is sent to the server when a query is executed. If this default behavior is not changed, you do not have to use **sqlsrv_send_stream_data** to send stream data to the server. For information about changing the default behavior, see the Parameters section of [sqlsrv_query](../../connect/php/sqlsrv_query.md) or [sqlsrv_prepare](../../connect/php/sqlsrv_prepare.md).  
  
## Syntax  
  
```  
  
sqlsrv_send_stream_data( resource $stmt)  
```  
  
#### Parameters  
*$stmt*: A statement resource corresponding to an executed statement.  
  
## Return Value  
Boolean : **true** if there is more data to be sent. Otherwise, **false**.  
  
## Example  
The following example opens a product review as a stream and sends it to the server. The default behavior of sending the all stream data at the time of execution is disabled. The example assumes that SQL Server and the [AdventureWorks](http://go.microsoft.com/fwlink/?LinkID=67739) database are installed on the local computer. All output is written to the console when the example is run from the command line.  
  
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
  
/* Define the query. */  
$tsql = "UPDATE Production.ProductReview   
         SET Comments = ( ?)   
         WHERE ProductReviewID = 3";  
  
/* Open parameter data as a stream and put it in the $params array. */  
$comment = fopen( "data://text/plain,[ Insert lengthy comment.]", "r");  
$params = array( &$comment);  
  
/* Prepare the statement. Use the $options array to turn off the  
default behavior, which is to send all stream data at the time of query  
execution. */  
$options = array("SendStreamParamsAtExec"=>0);  
$stmt = sqlsrv_prepare( $conn, $tsql, $params, $options);  
  
/* Execute the statement. */  
sqlsrv_execute( $stmt);  
  
/* Send up to 8K of parameter data to the server with each call to  
sqlsrv_send_stream_data. Count the calls. */  
$i = 1;  
while( sqlsrv_send_stream_data( $stmt))   
{  
      echo "$i call(s) made.\n";  
      $i++;  
}  
  
/* Free statement and connection resources. */  
sqlsrv_free_stmt( $stmt);  
sqlsrv_close( $conn);  
?>  
```  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[Updating Data &#40;Microsoft Drivers for PHP for SQL Server&#41;](../../connect/php/updating-data--microsoft-drivers-for-php-for-sql-server-.md)  
[About Code Examples in the Documentation](../../connect/php/about-code-examples-in-the-documentation.md)  
  
