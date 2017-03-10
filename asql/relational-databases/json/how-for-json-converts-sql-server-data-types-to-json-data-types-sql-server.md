---
title: "How FOR JSON converts SQL Server data types to JSON data types (SQL Server) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-07-07"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-json"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "FOR JSON, data type conversion"
ms.assetid: da356f06-efd0-4ea3-8157-77395bf790d7
caps.latest.revision: 11
ms.author: "douglasl"
manager: "jhubbard"
---
# How FOR JSON converts SQL Server data types to JSON data types (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  The **FOR JSON** clause uses the following rules to convert SQL Server data types to JSON types in the JSON output.  
  
|Category|SQL Server data type|JSON data type|  
|--------------|--------------|---------------|  
|Character & string types|(n)(var)(char)|string|  
|Numeric types|int, bigint, float, decimal, numeric|number|  
|Bit type|bit|Boolean (true or false)|  
|Date & time types|date, datetime, datetime2, time, datetimeoffset|string|  
|Binary types|varbinary, binary, image, timestamp, rowversion|BASE64-encoded string|  
|CLR types|CLR, geometry, geography|Not supported. These types return an error.<br /><br /> In the SELECT statement, use CAST or CONVERT, or use a CLR property or method, to convert the data to a data type that can be converted to a JSON type. For example, use **ToString()** for any CLR type, or **STAsText()** for the geometry type. The type of the JSON output value is then derived from the return type of the conversion that you use in the SELECT statement.|  
|Other types|uniqueidentifier, money|string|  
  
## See Also  
 [Format Query Results as JSON with FOR JSON &#40;SQL Server&#41;](../../relational-databases/json/format-query-results-as-json-with-for-json-sql-server.md)  
  
  