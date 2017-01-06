---
title: "PDO::__construct | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3ee53aff-6fe4-44cd-a15b-51770c98c712
caps.latest.revision: 18
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
# PDO::__construct
[!INCLUDE[Driver_PHP_Download](../../connect/php/includes)]

Creates a connection to a SQL Server database.  
  
## Syntax  
  
```  
  
PDO::__construct($dsn [,$username [,$password [,$driver_options ]]] )  
```  
  
#### Parameters  
*$dsn*: A string that contains the prefix name (always `sqlsrv`), a colon, and the Server keyword. For example `"sqlsrv:server=(local)"`. You can optionally specify other connection keywords. See [Connection Options](../../connect/php/connection-options.md) for a description of the Server keyword and the other connection keywords. The entire *$dsn* is in quotation marks, so each connection keyword should not be individually quoted.  
  
*$username*: Optional. A string that contains the user's name. To connect using SQL Server Authentication, specify the login ID. To connect using Windows Authentication, specify `""`.  
  
*$password*: Optional. A string that contains the user's password. To connect using SQL Server Authentication, specify the password. To connect using Windows Authentication, specify `""`.  
  
*$driver_options*: Optional. You can specify PDO Driver Manager attributes, and Microsoft Drivers for PHP for SQL Server specific driver attributes -- PDO::SQLSRV_ATTR_ENCODING, PDO::SQLSRV_ATTR_DIRECT_QUERY. An invalid attribute will not generate an exception. Invalid attributes generate exceptions when specified with [PDO::setAttribute](../../connect/php/pdo--setattribute.md).  
  
## Return Value  
Returns a PDO object. If failure, returns a PDOException object.  
  
## Exceptions  
PDOException  
  
## Remarks  
You can close a connection object by setting the instance to null.  
  
After a connection, PDO::errorCode will display 01000 instead of 00000.  
  
If PDO::__construct fails for any reason, an exception will be thrown, even if PDO::ATTR_ERRMODE is set to PDO::ERRMODE_SILENT.  
  
Support for PDO was added in version 2.0 of the Microsoft Drivers for PHP for SQL Server.  
  
## Example  
This example shows how to connect to a server using Windows Authentication, and specify a database.  
  
```  
<?php  
   $c = new PDO( "sqlsrv:Server=(local) ; Database = AdventureWorks ", "", "", array(PDO::SQLSRV_ATTR_DIRECT_QUERY => true));   
  
   $query = 'SELECT * FROM Person.ContactType';   
   $stmt = $c->query( $query );   
   while ( $row = $stmt->fetch( PDO::FETCH_ASSOC ) ) {   
      print_r( $row );   
   }  
   $c = null;   
?>  
```  
  
## Example  
This example shows how to connect to a server, specifying the database later.  
  
```  
<?php  
   $c = new PDO( "sqlsrv:server=(local)");  
  
   $c->exec( "USE AdventureWorks");  
   $query = 'SELECT * FROM Person.ContactType';  
   $stmt = $c->query( $query );  
   while ( $row = $stmt->fetch( PDO::FETCH_ASSOC ) ){  
      print_r( $row );  
   }  
   $c = null;  
?>  
```  
  
## See Also  
[PDO Class](../../connect/php/pdo-class.md)  
[PDO](http://go.microsoft.com/fwlink/?LinkID=187441)  
  
