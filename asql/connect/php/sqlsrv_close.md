---
title: "sqlsrv_close | Microsoft Docs"
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
  - "sqlsrv_close"
apitype: "NA"
helpviewer_keywords: 
  - "sqlsrv_close"
  - "API Reference, sqlsrv_close"
ms.assetid: 6ac6209c-a134-4f8f-b88b-8eefaa1cbc7f
caps.latest.revision: 25
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
# sqlsrv_close
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Closes the specified connection and releases associated resources.  
  
## Syntax  
  
```  
  
sqlsrv_close( resource $conn )  
```  
  
#### Parameters  
*$conn*: The connection to be closed.  
  
## Return Value  
The Boolean value **true** unless the function is called with an invalid parameter. If the function is called with an invalid parameter, **false** is returned.  
  
> [!NOTE]  
> **Null** is a valid parameter for this function. This allows the function to be called multiple times in a script. For example, if you close a connection in an error condition and close it again at the end of the script, the second call to **sqlsrv_close** will return **true** because the first call to **sqlsrv_close** (in the error condition) sets the connection resource to **null**.  
  
## Example  
The following example closes a connection. The example assumes that SQL Server is installed on the local computer. All output is writing to the console when the example is run from the command line.  
  
```  
<?php  
/*Connect to the local server using Windows Authentication and   
specify the AdventureWorks database as the database in use. */  
$serverName = "(local)";  
$conn = sqlsrv_connect( $serverName);  
if( $conn === false )  
{  
     echo "Could not connect.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
//-----------------------------------------------  
// Perform operations with connection here.  
//-----------------------------------------------  
  
/* Close the connection. */  
sqlsrv_close( $conn);  
echo "Connection closed.\n";  
?>  
```  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[About Code Examples in the Documentation](../../connect/php/about-code-examples-in-the-documentation.md)  
  
