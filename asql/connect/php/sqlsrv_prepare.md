---
title: "sqlsrv_prepare | Microsoft Docs"
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
  - "sqlsrv_prepare"
apitype: "NA"
helpviewer_keywords: 
  - "executing queries"
  - "API Reference, sqlsrv_prepare"
  - "sqlsrv_prepare"
ms.assetid: 8c74c697-3296-4f5d-8fb9-e361f53f19a6
caps.latest.revision: 52
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
# sqlsrv_prepare
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Creates a statement resource associated with the specified connection. This function is useful for execution of multiple queries.  
  
## Syntax  
  
```  
  
sqlsrv_prepare( resource $conn, string $tsql [, array $params [, array $options]])  
```  
  
#### Parameters  
*$conn*: The connection resource associated with the created statement.  
  
*$tsql*: The Transact-SQL expression that corresponds to the created statement.  
  
*$params* [OPTIONAL]: An **array** of values that correspond to parameters in a parameterized query. Each element of the array can be one of the following:  
  
-   A literal value.  
  
-   A reference to a PHP variable.  
  
-   An **array** with the following structure:  
  
    ```  
    array(&$value [, $direction [, $phpType [, $sqlType]]])  
    ```  
  
    > [!NOTE]  
    > Variables passed as query parameters should be passed by reference instead of by value. For example, pass `&$myVariable` instead of `$myVariable`. A PHP warning will be raised when a query with by-value parameters is executed.  
  
    The following table describes these array elements:  
  
    |Element|Description|  
    |-----------|---------------|  
    |*&$value*|A literal value or a reference to a PHP variable.|  
    |*$direction*[OPTIONAL]|One of the following **SQLSRV_PARAM_\*** constants used to indicate the parameter direction: **SQLSRV_PARAM_IN**, **SQLSRV_PARAM_OUT**, **SQLSRV_PARAM_INOUT**. The default value is **SQLSRV_PARAM_IN**.<br /><br />For more information about PHP constants, see [Constants &#40;Microsoft Drivers for PHP for SQL Server&#41;](../../connect/php/constants--microsoft-drivers-for-php-for-sql-server-.md).|  
    |*$phpType*[OPTIONAL]|A **SQLSRV_PHPTYPE_\*** constant that specifies PHP data type of the returned value.|  
    |*$sqlType*[OPTIONAL]|A **SQLSRV_SQLTYPE_\*** constant that specifies the SQL Server data type of the input value.|  
  
*$options* [OPTIONAL]: An associative array that sets query properties. The table below lists the supported keys and corresponding values:  
  
|Key|Supported values|Description|  
|-------|--------------------|---------------|  
|QueryTimeout|A positive integer value.|Sets the query timeout in seconds. By default, the driver will wait indefinitely for results.|  
|SendStreamParamsAtExec|**true** or **false**<br /><br />The default value is **true**.|Configures the driver to send all stream data at execution (**true**), or to send stream data in chunks (**false**). By default, the value is set to **true**. For more information, see [sqlsrv_send_stream_data](../../connect/php/sqlsrv_send_stream_data.md).|  
|Scrollable|SQLSRV_CURSOR_FORWARD<br /><br />SQLSRV_CURSOR_STATIC<br /><br />SQLSRV_CURSOR_DYNAMIC<br /><br />SQLSRV_CURSOR_KEYSET<br /><br />SQLSRV_CURSOR_CLIENT_BUFFERED|For more information about these values, see [Specifying a Cursor Type and Selecting Rows](../../connect/php/specifying-a-cursor-type-and-selecting-rows.md).|  
  
## Return Value  
A statement resource. If the statement resource cannot be created, **false** is returned.  
  
## Remarks  
When you prepare a statement that uses variables as parameters, the variables are bound to the statement. That means that if you update the values of the variables, the next time you execute the statement it will run with updated parameter values.  
  
The combination of **sqlsrv_prepare** and **sqlsrv_execute** separates statement preparation and statement execution in to two function calls and can be used to execute parameterized queries. This function is ideal to execute a statement multiple times with different parameter values for each execution.  
  
For alternative strategies for writing and reading large amounts of information, see [Batches of SQL Statements](http://go.microsoft.com/fwlink/?LinkId=104225) and [BULK INSERT](http://go.microsoft.com/fwlink/?LinkId=104226).  
  
For more information, see [How to: Retrieve Output Parameters Using the SQLSRV Driver](../../connect/php/how-to--retrieve-output-parameters-using-the-sqlsrv-driver.md).  
  
## Example  
The following example prepares and executes a statement. The statement, when executed (see [sqlsrv_execute](../../connect/php/sqlsrv_execute.md)), updates a field in the *Sales.SalesOrderDetail* table of the AdventureWorks database. The example assumes that SQL Server and the [AdventureWorks](http://go.microsoft.com/fwlink/?LinkID=67739) database are installed on the local computer. All output is written to the console when the example is run from the command line.  
  
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
  
/* Set up Transact-SQL query. */  
$tsql = "UPDATE Sales.SalesOrderDetail   
         SET OrderQty = ?   
         WHERE SalesOrderDetailID = ?";  
  
/* Assign parameter values. */  
$param1 = 5;  
$param2 = 10;  
$params = array( &$param1, &$param2);  
  
/* Prepare the statement. */  
if( $stmt = sqlsrv_prepare( $conn, $tsql, $params))  
{  
      echo "Statement prepared.\n";  
}   
else  
{  
      echo "Statement could not be prepared.\n";  
      die( print_r( sqlsrv_errors(), true));  
}  
  
/* Execute the statement. */  
if( sqlsrv_execute( $stmt))  
{  
      echo "Statement executed.\n";  
}  
else  
{  
      echo "Statement could not be executed.\n";  
      die( print_r( sqlsrv_errors(), true));  
}  
  
/* Free the statement and connection resources. */  
sqlsrv_free_stmt( $stmt);  
sqlsrv_close( $conn);  
?>  
```  
  
## Example  
The following example demonstrates how to prepare a statement and then re-execute it with different parameter values. The example updates the *OrderQty* column of the *Sales.SalesOrderDetail* table in the AdventureWorks database. After the updates have occurred, the database is queried to verify that the updates were successful. The example assumes that SQL Server and the [AdventureWorks](http://go.microsoft.com/fwlink/?LinkID=67739) database are installed on the local computer. All output is written to the console when the example is run from the command line.  
  
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
  
/* Define the parameterized query. */  
$tsql = "UPDATE Sales.SalesOrderDetail  
         SET OrderQty = ?  
         WHERE SalesOrderDetailID = ?";  
  
/* Initialize parameters and prepare the statement. Variables $qty  
and $id are bound to the statement, $stmt1. */  
$qty = 0; $id = 0;  
$stmt1 = sqlsrv_prepare( $conn, $tsql, array( &$qty, &$id));  
if( $stmt1 )  
{  
     echo "Statement 1 prepared.\n";  
}   
else   
{  
     echo "Error in statement preparation.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
/* Set up the SalesOrderDetailID and OrderQty information. This array  
maps the order ID to order quantity in key=>value pairs. */  
$orders = array( 1=>10, 2=>20, 3=>30);  
  
/* Execute the statement for each order. */  
foreach( $orders as $id => $qty)  
{  
     // Because $id and $qty are bound to $stmt1, their updated  
     // values are used with each execution of the statement.   
     if( sqlsrv_execute( $stmt1) === false )  
     {  
          echo "Error in statement execution.\n";  
          die( print_r( sqlsrv_errors(), true));  
     }  
}  
echo "Orders updated.\n";  
  
/* Free $stmt1 resources.  This allows $id and $qty to be bound to a different statement.*/  
sqlsrv_free_stmt( $stmt1);  
  
/* Now verify that the results were successfully written by selecting   
the newly inserted rows. */  
$tsql = "SELECT OrderQty   
         FROM Sales.SalesOrderDetail   
         WHERE SalesOrderDetailID = ?";  
  
/* Prepare the statement. Variable $id is bound to $stmt2. */  
$stmt2 = sqlsrv_prepare( $conn, $tsql, array( &$id));  
if( $stmt2 )  
{  
     echo "Statement 2 prepared.\n";  
}   
else   
{  
     echo "Error in statement preparation.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
/* Execute the statement for each order. */  
foreach( array_keys($orders) as $id)  
{  
     /* Because $id is bound to $stmt2, its updated value   
        is used with each execution of the statement. */  
     if( sqlsrv_execute( $stmt2))  
     {  
          sqlsrv_fetch( $stmt2);  
          $quantity = sqlsrv_get_field( $stmt2, 0);  
          echo "Order $id is for $quantity units.\n";  
     }  
     else  
     {  
          echo "Error in statement execution.\n";  
          die( print_r( sqlsrv_errors(), true));  
     }  
}  
  
/* Free $stmt2 and connection resources. */  
sqlsrv_free_stmt( $stmt2);  
sqlsrv_close( $conn);  
?>  
```  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[How to: Perform Parameterized Queries](../../connect/php/how-to--perform-parameterized-queries.md)  
[About Code Examples in the Documentation](../../connect/php/about-code-examples-in-the-documentation.md)  
[How to: Send Data as a Stream](../../connect/php/how-to--send-data-as-a-stream.md)  
[Using Directional Parameters](../../connect/php/using-directional-parameters.md)  
[Retrieving Data](../../connect/php/retrieving-data.md)  
[Updating Data &#40;Microsoft Drivers for PHP for SQL Server&#41;](../../connect/php/updating-data--microsoft-drivers-for-php-for-sql-server-.md)  
  
