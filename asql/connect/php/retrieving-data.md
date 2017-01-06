---
title: "Retrieving Data | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3414992c-61c0-4e7d-b509-72517e52c1bb
caps.latest.revision: 42
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
# Retrieving Data
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

This topic and the topics in this section discuss how to retrieve data.  
  
## SQLSRV Driver  
The SQLSRV driver of the Microsoft Drivers for PHP for SQL Server provides the following options for retrieving data from a result set:  
  
-   [sqlsrv_fetch_array](../../connect/php/sqlsrv_fetch_array.md)  
  
-   [sqlsrv_fetch_object](../../connect/php/sqlsrv_fetch_object.md)  
  
-   [sqlsrv_fetch](../../connect/php/sqlsrv_fetch.md)/[sqlsrv_get_field](../../connect/php/sqlsrv_get_field.md)  
  
> [!NOTE]  
> When you use any of the functions mentioned above, avoid null comparisons as the criterion for exiting loops. Because **sqlsrv** functions return false when an error occurs, the following code could result in an infinite loop upon an error in [sqlsrv_fetch_array](../../connect/php/sqlsrv_fetch_array.md):  
>   
> `/*``This code could result in an infinite loop. It is recommended that`  
>   
> `you do NOT use null comparisons as the criterion for exiting loops,`  
>   
> `as is done here. */`  
>   
> `do{`  
>   
> `$result = sqlsrv_fetch_array($stmt);`  
>   
> `} while( !is_null($result));`  
  
If your query retrieves more than one result set, you can move to the next result set with [sqlsrv_next_result](../../connect/php/sqlsrv_next_result.md).  
  
Beginning in version 1.1 of the Microsoft Drivers for PHP for SQL Server, you can use [sqlsrv_has_rows](../../connect/php/sqlsrv_has_rows.md) to see if a result set has rows.  
  
## PDO_SQLSRV Driver  
The PDO_SQLSRV driver of the Microsoft Drivers for PHP for SQL Server provides the following options for retrieving data from a result set:  
  
-   [PDOStatement::fetch](../../connect/php/pdostatement--fetch.md)  
  
-   [PDOStatement::fetchAll](../../connect/php/pdostatement--fetchall.md)  
  
-   [PDOStatement::fetchColumn](../../connect/php/pdostatement--fetchcolumn.md)  
  
-   [PDOStatement::fetchObject](../../connect/php/pdostatement--fetchobject.md)  
  
If your query retrieves more than one result set, you can move to the next result set with [PDOStatement::nextRowset](../../connect/php/pdostatement--nextrowset.md).  
  
You can see how many rows are in a result set if you specify a scrollable cursor, and then call [PDOStatement::rowCount](../../connect/php/pdostatement--rowcount.md).  
  
[PDO::prepare](../../connect/php/pdo--prepare.md) lets you specify a cursor type. Then, with [PDOStatement::fetch](../../connect/php/pdostatement--fetch.md) you can select a row. See [PDO::prepare](../../connect/php/pdo--prepare.md) for a sample and more information.  
  
## In This Section  
  
|Topic|Description|  
|---------|---------------|  
|[Retrieving Data as a Stream](../../connect/php/retrieving-data-as-a-stream-using-the-sqlsrv-driver.md)|Provides an overview of how to stream data from the server, and provides links to specific use cases.|  
|[Using Directional Parameters](../../connect/php/using-directional-parameters.md)|Describes how to use directional parameters when calling a stored procedure.|  
|[Specifying a Cursor Type and Selecting Rows](../../connect/php/specifying-a-cursor-type-and-selecting-rows.md)|Demonstrates how to create a result set with rows that you can access in any order when using the SQLSRV driver.|  
|[How to: Retrieve Date and Time Type as Strings Using the SQLSRV Driver](../../connect/php/how-to--retrieve-date-and-time-type-as-strings-using-the-sqlsrv-driver.md)|Describes how to retrieve date and time types as strings.|  
  
## Related Sections  
[How to: Specify PHP Data Types](../../connect/php/how-to--specify-php-data-types.md)  
  
## See Also  
[Programming Guide for PHP SQL Driver](../../connect/php/programming-guide-for-php-sql-driver.md)
[Retrieving Data](../../connect/php/retrieving-data.md)  
  
