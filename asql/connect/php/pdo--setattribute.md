---
title: "PDO::setAttribute | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 56f9ee96-e1d2-46cc-b137-38f06a251863
caps.latest.revision: 24
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
# PDO::setAttribute
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Sets a predefined PDO attribute or a custom driver attribute.  
  
## Syntax  
  
```  
  
bool PDO::setAttribute ( $attribute, $value );  
```  
  
#### Parameters  
*$attribute*: The attribute to set. See the Remarks section for a list of supported attributes.  
  
*$value*: The value (type mixed).  
  
## Return Value  
Returns true on success, otherwise false.  
  
## Remarks  
  
|Attribute|Processed by|Supported values|Description|  
|-------------|----------------|--------------------|---------------|  
|PDO::ATTR_CASE|PDO|PDO::CASE_LOWER<br /><br />PDO::CASE_NATURAL<br /><br />PDO::CASE_UPPER|Specifies the case of column names.<br /><br />PDO::CASE_LOWER causes lower case column names.<br /><br />PDO::CASE_NATURAL (the default) displays column names as returned by the database.<br /><br />PDO::CASE_UPPER causes column names to upper case.<br /><br />This attribute can be set using PDO::setAttribute.|  
|PDO::ATTR_DEFAULT_FETCH_MODE|PDO|See the PDO documentation.|See the PDO documentation.|  
|PDO::ATTR_ERRMODE|PDO|PDO::ERRMODE_SILENT<br /><br />PDO::ERRMODE_WARNING<br /><br />PDO::ERRMODE_EXCEPTION|Specifies how the driver will report failures.<br /><br />PDO::ERRMODE_SILENT (the default) sets the error codes and information.<br /><br />PDO::ERRMODE_WARNING raises E_WARNING.<br /><br />PDO::ERRMODE_EXCEPTION causes an exception to be thrown.<br /><br />This attribute can be set using PDO::setAttribute.|  
|PDO::ATTR_ORACLE_NULLS|PDO|See the PDO documentation.|Specifies how nulls should be returned.<br /><br />PDO::NULL_NATURAL does no conversion.<br /><br />PDO::NULL_EMPTY_STRING converts an empty string to null.<br /><br />PDO::NULL_TO_STRING converts null to an empty string.|  
|PDO::ATTR_STATEMENT_CLASS|PDO|See the PDO documentation.|Sets the user-supplied statement class derived from PDOStatement.<br /><br />Requires `array(string classname, array(mixed constructor_args))`.<br /><br />See the PDO documentation for more information.|  
|PDO::ATTR_STRINGIFY_FETCHES|PDO|true or false|Converts numeric values to strings when retrieving data.|  
|PDO::SQLSRV_ATTR_CLIENT_BUFFER_MAX_KB_SIZE|Microsoft Drivers for PHP for SQL Server|1 to the PHP memory limit.|Configures the size of the buffer that holds the result set.<br /><br />The default is 10240 KB (10 MB).<br /><br />For more information about queries that create a client-side cursor, see [Cursor Types &#40;PDO_SQLSRV Driver&#41;](../../connect/php/cursor-types--pdo_sqlsrv-driver-.md).|  
|PDO::SQLSRV_ATTR_DIRECT_QUERY|Microsoft Drivers for PHP for SQL Server|true<br /><br />false|Specifies direct or prepared query execution. For more information, see [Direct Statement Execution and Prepared Statement Execution in the PDO_SQLSRV Driver](../../connect/php/05544ca6-1e07-486c-bf03-e8c2c25b3024.md).|  
|PDO::SQLSRV_ATTR_ENCODING|Microsoft Drivers for PHP for SQL Server|PDO::SQLSRV_ENCODING_UTF8<br /><br />PDO::SQLSRV_ENCODING_SYSTEM.|Sets the character set encoding used by the driver to communicate with the server.<br /><br />PDO::SQLSRV_ENCODING_BINARY is not supported.<br /><br />The default is PDO::SQLSRV_ENCODING_UTF8.|  
|PDO::SQLSRV_ATTR_FETCHES_NUMERIC_TYPE|Microsoft Drivers for PHP for SQL Server|true or false|Handles numeric fetches from columns with numeric SQL types (bit, integer, smallint, tinyint, float, or real).<br /><br />When connection option flag ATTR_STRINGIFY_FETCHES is on, even when SQLSRV_ATTR_FETCHES_NUMERIC_TYPE is on, the return value will still be string.<br /><br />When the returned PDO type in bind column is PDO_PARAM_INT, the return value from an integer column will be int even if SQLSRV_ATTR_FETCHES_NUMERIC_TYPE is off.|  
|PDO::SQLSRV_ATTR_QUERY_TIMEOUT|Microsoft Drivers for PHP for SQL Server|integer|Sets the query timeout in seconds.<br /><br />The default is 0, which means the driver will wait indefinitely for results.<br /><br />Negative numbers are not allowed.|  
|PDO::SQLSVR_CLIENT_BUFFER_MAX_SIZE|Microsoft Drivers for PHP for SQL Server|integer|Sets the size of the query buffer.<br /><br />The default is 0, which indicates unlimited buffer size.<br /><br />Negative numbers are not allowed.<br /><br />For more information about queries that create a client-side cursor, see [Cursor Types &#40;PDO_SQLSRV Driver&#41;](../../connect/php/cursor-types--pdo_sqlsrv-driver-.md).|  
  
PDO processes some of the predefined attributes and requires the driver to process others. All custom attributes and connection options are processed by the driver. An unsupported attribute, connection option, or unsupported value will be reported according to the setting of PDO::ATTR_ERRMODE.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
This sample shows how to set the PDO::ATTR_ERRMODE attribute.  
  
```  
<?php  
   $database = "AdventureWorks";  
   $conn = new PDO( "sqlsrv:server=(local) ; Database = $database", "", "");  
  
   $attributes1 = array( "ERRMODE" );  
   foreach ( $attributes1 as $val ) {  
      echo "PDO::ATTR_$val: ";  
      var_dump ($conn->getAttribute( constant( "PDO::ATTR_$val" ) ));  
   }  
  
   $conn->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );  
  
   $attributes1 = array( "ERRMODE" );  
   foreach ( $attributes1 as $val ) {  
      echo "PDO::ATTR_$val: ";  
      var_dump ($conn->getAttribute( constant( "PDO::ATTR_$val" ) ));  
   }  
?>  
```  
  
## See Also  
[PDO Class](../../connect/php/pdo-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
