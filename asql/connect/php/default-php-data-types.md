---
title: "Default PHP Data Types | Microsoft Docs"
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
  - "default data types"
  - "converting data types"
ms.assetid: b66c301d-3d20-45b8-a112-225d8f01c0bd
caps.latest.revision: 40
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
# Default PHP Data Types
![Download](../../ssdt/media/download.png)[Download PHP Driver](https://www.microsoft.com/download/details.aspx?id=20098)

When retrieving data from the server, the Microsoft Drivers for PHP for SQL Server converts data to a default PHP data type if no PHP data type has been specified by the user.  
  
When data is returned using the PDO_SQLSRV driver, the data type will either be int or string.  
  
The remainder of this topic discusses default data types using the SQLSRV driver.  
  
The following table lists the SQL Server data type (the data type being retrieved from the server), the default PHP data type (the data type to which data is converted), and the default encoding for streams and strings. For details about how to specify data types when retrieving data from the server, see [How to: Specify PHP Data Types](../../connect/php/how-to--specify-php-data-types.md).  
  
|SQL Server Type|Default PHP Type|Default Encoding|  
|-------------------|--------------------|--------------------|  
|bigint|String|8-bit character<sup>1</sup>|  
|binary|Stream<sup>2</sup>|Binary<sup>3</sup>|  
|bit|Integer|8-bit character<sup>1</sup>|  
|char|String|8-bit character<sup>1</sup>|  
|date<sup>8</sup>|Datetime|Not applicable|  
|datetime<sup>8</sup>|Datetime|Not applicable|  
|datetime2<sup>8</sup>|Datetime|Not applicable|  
|datetimeoffset<sup>8</sup>|Datetime|Not applicable|  
|decimal|String|8-bit character<sup>1</sup>|  
|float|Float|8-bit character<sup>1</sup>|  
|geography|STREAM|Binary<sup>3</sup>|  
|geometry|STREAM|Binary<sup>3</sup>|  
|image<sup>4</sup>|Stream<sup>2</sup>|Binary<sup>3</sup>|  
|int|Integer|8-bit character<sup>1</sup>|  
|money|String|8-bit character<sup>1</sup>|  
|nchar|String|8-bit character<sup>1</sup>|  
|numeric|String|8-bit character<sup>1</sup>|  
|nvarchar|String|8-bit character<sup>1</sup>|  
|nvarchar(MAX)|Stream<sup>2</sup>|8-bit character<sup>1</sup>|  
|ntext<sup>5</sup>|Stream<sup>2</sup>|8-bit character<sup>1</sup>|  
|real|Float|8-bit character<sup>1</sup>|  
|smalldatetime|Datetime|8-bit character<sup>1</sup>|  
|smallint|Integer|8-bit character<sup>1</sup>|  
|smallmoney|String|8-bit character<sup>1</sup>|  
|sql_variant|String|8-bit character<sup>1</sup>|  
|text<sup>6</sup>|Stream<sup>2</sup>|8-bit character<sup>1</sup>|  
|time<sup>8</sup>|Datetime|Not applicable|  
|timestamp|String|8-bit character<sup>1</sup>|  
|tinyint|Integer|8-bit character<sup>1</sup>|  
|UDT|Stream<sup>2</sup>|Binary<sup>3</sup>|  
|uniqueidentifier|String<sup>7</sup>|8-bit character<sup>1</sup>|  
|varbinary|Stream<sup>2</sup>|Binary<sup>3</sup>|  
|varbinary(MAX)|Stream<sup>2</sup>|Binary<sup>3</sup>|  
|varchar|String|8-bit character<sup>1</sup>|  
|varchar(MAX)|Stream<sup>2</sup>|8-bit character<sup>1</sup>|  
|variant|Not supported|Not supported|  
|xml|Stream<sup>2</sup>|8-bit character<sup>1</sup>|  
  
1.  Data is returned in 8-bit characters as specified in the code page of the Windows locale set on the system. Any multi-byte characters or characters that do not map into this code page are substituted with a single byte question mark (?) character.  
  
2.  If [sqlsrv_fetch_array](../../connect/php/sqlsrv_fetch_array.md) or [sqlsrv_fetch_object](../../connect/php/sqlsrv_fetch_object.md) is used to retrieve data that has a default PHP type of Stream, the data will be returned as a string with the same encoding as the stream. For example, if a SQL Server binary type is retrieved by using **sqlsrv_fetch_array**, the default return type will be a binary string.  
  
3.  Data is returned as a raw byte stream from the server without performing encoding or translation.  
  
4.  This is a legacy type that maps to the varbinary(max) type.  
  
5.  This is a legacy type that maps to the nvarchar(max) type.  
  
6.  This is a legacy type that maps to the varchar(max) type.  
  
7.  UNIQUEIDENTIFIERs are GUIDs represented by the following regular expression:  
  
    [0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-f]{4}-[0-9a-fA-f]{4}-[0-9a-fA-F]{12}  
  
8.  Date and time types can be retrieved as strings. For more information, see [How to: Retrieve Date and Time Type as Strings Using the SQLSRV Driver](../../connect/php/how-to--retrieve-date-and-time-type-as-strings-using-the-sqlsrv-driver.md).  
  
## Other New SQL Server 2008 Data Types and Features  
Data types that are new in SQL Server 2008 and that exist outside of columns (such as table-valued parameters) are not supported in the Microsoft Drivers for PHP for SQL Server. The table below summarizes the PHP support for new SQL Server 2008 features.  
  
|Feature|PHP Support|  
|-----------|---------------|  
|Table-valued parameter|No|  
|Sparse columns|Partial|  
|Null-bit compression|Yes|  
|Large CLR user-defined types (UDTs)|Yes|  
|Service principal name|No|  
|MERGE|Yes|  
|FILESTREAM|Partial|  
  
Partial type support means that you cannot programmatically query for the type of the column.  
  
## See Also  
[Constants &#40;Microsoft Drivers for PHP for SQL Server&#41;](../../connect/php/constants--microsoft-drivers-for-php-for-sql-server-.md)  
[Converting Data Types](../../connect/php/converting-data-types.md)  
[PHP Types](http://go.microsoft.com/fwlink/?LinkId=109071)  
[Data Types (Transact-SQL)](http://go.microsoft.com/fwlink/?LinkId=109068)  
[sqlsrv_field_metadata](../../connect/php/sqlsrv_field_metadata.md)  
  
