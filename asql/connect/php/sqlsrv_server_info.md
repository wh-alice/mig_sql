---
title: "sqlsrv_server_info | Microsoft Docs"
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
  - "sqlsrv_server_info"
apitype: "NA"
helpviewer_keywords: 
  - "API Reference, sqlsrv_server_info"
  - "sqlsrv_server_info"
ms.assetid: ef6fe2b7-d267-4379-b948-5626c4684367
caps.latest.revision: 21
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
# sqlsrv_server_info
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Returns information about the server. A connection must be established before calling this function.  
  
## Syntax  
  
```  
  
sqlsrv_server_info( resource $conn)  
```  
  
#### Parameters  
*$conn*: The connection resource by which the client and server are connected.  
  
## Return Value  
An associative array with the following keys:  
  
|Key|Description|  
|-------|---------------|  
|CurrentDatabase|The database currently being targeted.|  
|SQLServerVersion|The version of SQL Server.|  
|SQLServerName|The name of the server.|  
  
## Example  
The following example writes server information to the console when the example is run from the command line.  
  
```  
<?php  
/* Connect to the local server using Windows Authentication. */  
$serverName = "(local)";  
$conn = sqlsrv_connect( $serverName);  
if( $conn === false )  
{  
     echo "Could not connect.\n";  
     die( print_r( sqlsrv_errors(), true));  
}  
  
$server_info = sqlsrv_server_info( $conn);  
if( $server_info )  
{  
      foreach( $server_info as $key => $value)  
      {  
             echo $key.": ".$value."\n";  
      }  
}  
else  
{  
      echo "Error in retrieving server info.\n";  
      die( print_r( sqlsrv_errors(), true));  
}  
  
/* Free connection resources. */  
sqlsrv_close( $conn);  
?>  
```  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[About Code Examples in the Documentation](../../connect/php/about-code-examples-in-the-documentation.md)  
  
