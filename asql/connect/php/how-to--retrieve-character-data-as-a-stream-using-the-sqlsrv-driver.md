---
title: "How to: Retrieve Character Data as a Stream Using the SQLSRV Driver | Microsoft Docs"
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
  - "retrieving data, as a character stream"
  - "streaming data"
ms.assetid: 3c0dbca4-abfc-4449-b133-66c819681840
caps.latest.revision: 27
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
# How to: Retrieve Character Data as a Stream Using the SQLSRV Driver
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Retrieving data as a stream is only available in the SQLSRV driver of the Microsoft Drivers for PHP for SQL Server, and is not available in the PDO_SQLSRV driver.  
  
The SQLSRV driver takes advantage of PHP streams for retrieving large amounts of data from the server. The example in this topic demonstrates how to retrieve character data as a stream.  
  
## Example  
The following example retrieves a row from the *Production.ProductReview* table of the AdventureWorks database. The *Comments* field of the returned row is retrieved as a stream and displayed by using the PHP [fpassthru](http://go.microsoft.com/fwlink/?LinkId=217496) function.  
  
Retrieving data as a stream is accomplished by using [sqlsrv_fetch](../../connect/php/sqlsrv_fetch.md) and [sqlsrv_get_field](../../connect/php/sqlsrv_get_field.md) with the return type specified as a character stream. The return type is specified by using the constant **SQLSRV_PHPTYPE_STREAM**. For information about **sqlsrv** constants, see [Constants &#40;Microsoft Drivers for PHP for SQL Server&#41;](../../connect/php/constants--microsoft-drivers-for-php-for-sql-server-.md).  
  
The example assumes that SQL Server and the [AdventureWorks](http://go.microsoft.com/fwlink/?LinkID=67739) database are installed on the local computer. All output is written to the console when the example is run from the command line.  
  
```  
<?php  
/*Connect to the local server using Windows Authentication and  
specify the AdventureWorks database as the database in use. */  
$serverName = "(local)";  
$connectionInfo = array( "Database"=>"AdventureWorks");  
$conn = sqlsrv_connect( $serverName, $connectionInfo);  
if( $conn === false )  
{  
     echo "Could not connect.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
/* Set up the Transact-SQL query. */  
$tsql = "SELECT ReviewerName,   
               CONVERT(varchar(32), ReviewDate, 107) AS [ReviewDate],  
               Rating,   
               Comments   
         FROM Production.ProductReview   
         WHERE ProductReviewID = ? ";  
  
/* Set the parameter value. */  
$productReviewID = 1;  
$params = array( $productReviewID);  
  
/* Execute the query. */  
$stmt = sqlsrv_query($conn, $tsql, $params);  
if( $stmt === false )  
{  
     echo "Error in statement execution.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
/* Retrieve and display the data. The first three fields are retrieved  
as strings and the fourth as a stream with character encoding. */  
if(sqlsrv_fetch( $stmt ) === false )  
{  
     echo "Error in retrieving row.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
echo "Name: ".sqlsrv_get_field( $stmt, 0 )."\n";  
echo "Date: ".sqlsrv_get_field( $stmt, 1 )."\n";  
echo "Rating: ".sqlsrv_get_field( $stmt, 2 )."\n";  
echo "Comments: ";  
$comments = sqlsrv_get_field( $stmt, 3,   
                             SQLSRV_PHPTYPE_STREAM(SQLSRV_ENC_CHAR));  
fpassthru($comments);  
  
/* Free the statement and connection resources. */  
sqlsrv_free_stmt( $stmt);  
sqlsrv_close( $conn);  
?>  
```  
  
Because no PHP return type is specified for the first three fields, each field is returned according to its default PHP type. For information about default PHP data types, see [Default PHP Data Types](../../connect/php/default-php-data-types.md). For information about how to specify PHP return types, see [How to: Specify PHP Data Types](../../connect/php/how-to--specify-php-data-types.md).  
  
## See Also  
[Retrieving Data](../../connect/php/retrieving-data.md)  
[Retrieving Data as a Stream Using the SQLSRV Driver](../../connect/php/retrieving-data-as-a-stream-using-the-sqlsrv-driver.md)  
[About Code Examples in the Documentation](../../connect/php/about-code-examples-in-the-documentation.md)  
  
