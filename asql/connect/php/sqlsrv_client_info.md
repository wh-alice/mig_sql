---
title: "sqlsrv_client_info | Microsoft Docs"
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
  - "sqlsrv_client_info"
apitype: "NA"
helpviewer_keywords: 
  - "API Reference, sqlsrv_client_info"
  - "sqlsrv_client_info"
ms.assetid: 3e2d3679-436a-45d8-8bdc-7c633b65a720
caps.latest.revision: 47
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
# sqlsrv_client_info
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

Returns information about the connection and client stack.  
  
## Syntax  
  
```  
  
sqlsrv_client_info( resource $conn)  
```  
  
#### Parameters  
*$conn*: The connection resource by which the client is connected.  
  
## Return Value  
An associative array with keys described in the table below, or **false** if the connection resource is null.  
  
**For PHP for SQL Server versions 3.2 and 3.1**:  
  
|Key|Description|  
|-------|---------------|  
|DriverDllName|MSODBCSQL11.DLL (ODBC Driver 11 for SQL Server)|  
|DriverODBCVer|ODBC version (xx.yy)|  
|DriverVer|ODBC Driver 11 for SQL Server DLL version:<br /><br />xx.yy.zzzz (Microsoft Drivers for PHP for SQL Server version 3.2 or 3.1)|  
|ExtensionVer|php_sqlsrv.dll version:<br /><br />3.2.xxxx.x (for Microsoft Drivers for PHP for SQL Server version 3.2)<br /><br />3.1.xxxx.x (for Microsoft Drivers for PHP for SQL Server version 3.1)|  
  
**For PHP for SQL Server versions 3.0 and 2.0**:  
  
|Key|Description|  
|-------|---------------|  
|DriverDllName|SQLNCLI10.DLL (Microsoft Drivers for PHP for SQL Server version 2.0)|  
|DriverODBCVer|ODBC version (xx.yy)|  
|DriverVer|SQL Server Native Client DLL version:<br /><br />10.50.xxx (Microsoft Drivers for PHP for SQL Server version 2.0)|  
|ExtensionVer|php_sqlsrv.dll version:<br /><br />2.0.xxxx.x (Microsoft Drivers for PHP for SQL Server version 2.0)|  
  
## Example  
The following example writes client information to the console when the example is run from the command line. The example assumes that SQL Server is installed on the local computer. All output is written to the console when the example is run from the command line.  
  
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
  
if( $client_info = sqlsrv_client_info( $conn))  
{  
       foreach( $client_info as $key => $value)  
      {  
              echo $key.": ".$value."\n";  
      }  
}  
else  
{  
       echo "Client info error.\n";  
}  
  
/* Close connection resources. */  
sqlsrv_close( $conn);  
?>  
```  
  
## See Also  
[SQLSRV Driver API Reference](../../connect/php/sqlsrv-driver-api-reference.md)  
[About Code Examples in the Documentation](../../connect/php/about-code-examples-in-the-documentation.md)  
  
