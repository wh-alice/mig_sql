---
title: "SQLSRV Driver API Reference | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 0b55da26-ddeb-4e89-872a-91e0aba57103
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
# SQLSRV Driver API Reference
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

The API name for the SQLSRV driver in the Microsoft Drivers for PHP for SQL Server is **sqlsrv**. All **sqlsrv** functions begin with **sqlsrv_** and are followed by a verb or a noun. Those followed by a verb perform some action and those followed by a noun return some form of metadata.  
  
## In This Section  
The SQLSRV driver contains the following functions:  
  
|Function|Description|  
|------------|---------------|  
|[sqlsrv_begin_transaction](../../connect/php/sqlsrv_begin_transaction.md)|Begins a transaction.|  
|[sqlsrv_cancel](../../connect/php/sqlsrv_cancel.md)|Cancels a statement; discards any pending results for the statement.|  
|[sqlsrv_client_info](../../connect/php/sqlsrv_client_info.md)|Provides information about the client.|  
|[sqlsrv_close](../../connect/php/sqlsrv_close.md)|Closes a connection. Frees all resources associated with the connection.|  
|[sqlsrv_commit](../../connect/php/sqlsrv_commit.md)|Commits a transaction.|  
|[sqlsrv_configure](../../connect/php/sqlsrv_configure.md)|Changes error handling and logging configurations.|  
|[sqlsrv_connect](../../connect/php/sqlsrv_connect.md)|Creates and opens a connection.|  
|[sqlsrv_errors](../../connect/php/sqlsrv_errors.md)|Returns error and/or warning information about the last operation.|  
|[sqlsrv_execute](../../connect/php/sqlsrv_execute.md)|Executes a prepared statement.|  
|[sqlsrv_fetch](../../connect/php/sqlsrv_fetch.md)|Makes the next row of data available for reading.|  
|[sqlsrv_fetch_array](../../connect/php/sqlsrv_fetch_array.md)|Retrieves the next row of data as a numerically indexed array, an associative array, or both.|  
|[sqlsrv_fetch_object](../../connect/php/sqlsrv_fetch_object.md)|Retrieves the next row of data as an object.|  
|[sqlsrv_field_metadata](../../connect/php/sqlsrv_field_metadata.md)|Returns field metadata.|  
|[sqlsrv_free_stmt](../../connect/php/sqlsrv_free_stmt.md)|Closes a statement. Frees all resources associated with the statement.|  
|[sqlsrv_get_config](../../connect/php/sqlsrv_get_config.md)|Returns the value of the specified configuration setting.|  
|[sqlsrv_get_field](../../connect/php/sqlsrv_get_field.md)|Retrieves a field in the current row by index. The PHP return type can be specified.|  
|[sqlsrv_has_rows](../../connect/php/sqlsrv_has_rows.md)|Detects if a result set has one or more rows.|  
|[sqlsrv_next_result](../../connect/php/sqlsrv_next_result.md)|Makes the next result available for processing.|  
|[sqlsrv_num_rows](../../connect/php/sqlsrv_num_rows.md)|Reports the number of rows in a result set.|  
|[sqlsrv_num_fields](../../connect/php/sqlsrv_num_fields.md)|Retrieves the number of fields in an active result set.|  
|[sqlsrv_prepare](../../connect/php/sqlsrv_prepare.md)|Prepares a Transact-SQL query without executing it. Implicitly binds parameters.|  
|[sqlsrv_query](../../connect/php/sqlsrv_query.md)|Prepares and executes a Transact-SQL query.|  
|[sqlsrv_rollback](../../connect/php/sqlsrv_rollback.md)|Rolls back a transaction.|  
|[sqlsrv_rows_affected](../../connect/php/sqlsrv_rows_affected.md)|Returns the number of modified rows.|  
|[sqlsrv_send_stream_data](../../connect/php/sqlsrv_send_stream_data.md)|Sends up to eight kilobytes (8 KB) of data to the server with each call to the function.|  
|[sqlsrv_server_info](../../connect/php/sqlsrv_server_info.md)|Provides information about the server.|  
  
## Reference  
[PHP Manual](http://go.microsoft.com/fwlink/?LinkId=105500)  
  
## See Also  
[Overview of the PHP SQL Driver](../../connect/php/overview-of-the-php-sql-driver.md)
[Constants &#40;Microsoft Drivers for PHP for SQL Server&#41;](../../connect/php/constants--microsoft-drivers-for-php-for-sql-server-.md)  
[Programming Guide for PHP SQL Driver](../../connect/php/programming-guide-for-php-sql-driver.md)
[Getting Started with the PHP SQL Driver](../../connect/php/getting-started-with-the-php-sql-driver.md)
  
