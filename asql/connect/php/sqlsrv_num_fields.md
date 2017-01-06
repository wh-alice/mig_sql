---
title: "sqlsrv_num_fields | Microsoft Docs"
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
  - "sqlsrv_num_fields"
apitype: "NA"
helpviewer_keywords: 
  - "sqlsrv_num_fields"
  - "API Reference, sqlsrv_num_fields"
ms.assetid: 03ca1860-01ed-408c-862a-57a7355de4bf
caps.latest.revision: 17
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
# sqlsrv_num_fields
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Retrieves the number of fields in an active result set. Note that **sqlsrv_num_fields** can be called on any prepared statement, before or after execution.  
  
## Syntax  
  
```  
  
sqlsrv_num_fields( resource $stmt)  
```  
  
#### Parameters  
*$stmt*: The statement on which the targeted result set is active.  
  
## Return Value  
An integer value that represents the number of fields in the active result set. If an error occurs, the Boolean value **false** is returned.  
  
## Example  
The following example executes a query to retrieve all fields for the top three rows in the *HumanResources.Department* table of the Adventureworks database. The **sqlsrv_num_fields** function determines the number of fields in the result set. This allows data to be displayed by iterating through the fields in each returned row.  
  
The example assumes that SQL Server and the [AdventureWorks](http://go.microsoft.com/fwlink/?LinkID=67739) database are installed on the local computer. All output is written to the console when the example is run from the command line.  
  
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
  
/* Define and execute the query. */  
$tsql = "SELECT TOP (3) * FROM HumanResources.Department";  
$stmt = sqlsrv_query($conn, $tsql);  
if( $stmt === false)  
{  
     echo "Error in executing query.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
/* Retrieve the number of fields. */  
$numFields = sqlsrv_num_fields( $stmt );  
  
/* Iterate through each row of the result set. */  
while( sqlsrv_fetch( $stmt ))  
{  
     /* Iterate through the fields of each row. */  
     for($i = 0; $i < $numFields; $i++)  
     {  
          echo sqlsrv_get_field($stmt, $i,   
                   SQLSRV_PHPTYPE_STRING(SQLSRV_ENC_CHAR))." ";  
     }  
     echo "\n";  
}  
  
/* Free statement and connection resources. */  
sqlsrv_free_stmt( $stmt );  
sqlsrv_close( $conn );  
?>  
```  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[sqlsrv_field_metadata](../../connect/php/sqlsrv_field_metadata.md)  
[About Code Examples in the Documentation](../../connect/php/about-code-examples-in-the-documentation.md)  
  
