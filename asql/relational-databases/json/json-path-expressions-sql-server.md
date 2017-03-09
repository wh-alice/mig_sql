---
title: "JSON Path Expressions (SQL Server) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2017-01-23"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-json"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "JSON, path expressions"
  - "path expressions (JSON)"
ms.assetid: 25ea679c-84cc-4977-867c-2cbe9d192553
caps.latest.revision: 14
ms.author: "douglasl"
manager: "jhubbard"
---
# JSON Path Expressions (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Use JSON paths to reference the properties of JSON objects. JSON paths use a syntax similar to Javascript.  
  
 You have to provide a path expression when you call the following functions.  
  
-   When you call **OPENJSON** to create a relational view of JSON data. For more info, see [OPENJSON &#40;Transact-SQL&#41;](../../t-sql/functions/openjson-transact-sql.md).  
  
-   When you call **JSON_VALUE** to extract a value from JSON text. For more info, see [JSON_VALUE &#40;Transact-SQL&#41;](../../t-sql/functions/json-value-transact-sql.md).  
  
-   When you call **JSON_QUERY** to extract a JSON object or an array. For more info, see [JSON_QUERY &#40;Transact-SQL&#41;](../../t-sql/functions/json-query-transact-sql.md).  
  
-   When you call **JSON_MODIFY** to update the value of a property in a JSON string. For more info, see [JSON_MODIFY &#40;Transact-SQL&#41;](../../t-sql/functions/json-modify-transact-sql.md).  

## Parts of a path expression
 A path expression has two components.  
  
1.  The optional [path mode](#PATHMODE), **lax** or **strict**.  
  
2.  The [path](#PATH) itself.  
  
##  <a name="PATHMODE"></a> Path mode  
 At the beginning of the path expression, optionally declare the path mode by specifying the keyword **lax** or **strict**. The default is **lax**.  
  
-   In **lax** mode, the functions return empty values if the path expression contains an error. For example, if you request the value **$.name**, and the JSON text doesn't contain a **name** key, the function returns null.  
  
-   In **strict** mode, the functions raise errors if the path expression contains an error.  
  
##  <a name="PATH"></a> Path  
 After the optional path mode declaration, specify the path itself.  
  
-   The dollar sign (`$`) represents the context item.  
  
-   The property path is a set of path steps. Path steps can contain the following elements and operators.  
  
    -   Key names. For example, `$.name` and `$."first name"`. If the key name starts with a dollar sign or contains special characters such as spaces, surround it with quotes.   
  
    -   Array elements. For example, `$.product[3]`. Arrays are zero-based.  
  
    -   The dot operator (`.`) indicates a member of an object.  
  
## Examples  
 The examples in this section reference the following JSON text.  
  
```json  
{
	"people": [{
		"name": "John",
		"surname": "Doe"
	}, {
		"name": "Jane",
		"surname": null,
		"active": true
	}]
}
```  
  
 The following table shows some examples of path expressions.  
  
|Path expression|Value|  
|---------------------|-----------|  
|$.people[0].name|John|  
|$.people[1]|{ "name": "Jane",  "surname": null, "active": true }|  
|$.people[1].surname|null|  
|$|{ "people": [ { "name": "John",  "surname": "Doe" },<br />   { "name": "Jane",  "surname": null, "active": true } ] }|  
  
## How built-in functions handle duplicate paths  
 If the JSON text contains duplicate properties - for example, two keys with the same name on the same level - the JSON_VALUE and JSON_QUERY functions return the first value that matches the path. To parse a JSON object that contains duplicate keys, use OPENJSON, as shown in the following example.  
  
```tsql  
DECLARE @json NVARCHAR(MAX)
SET @json=N'{"person":{"info":{"name":"John", "name":"Jack"}}}'

SELECT value
FROM OPENJSON(@json,'$.person.info') 
```  
  
## See Also  
 [OPENJSON &#40;Transact-SQL&#41;](../../t-sql/functions/openjson-transact-sql.md)   
 [JSON_VALUE &#40;Transact-SQL&#41;](../../t-sql/functions/json-value-transact-sql.md)   
 [JSON_QUERY &#40;Transact-SQL&#41;](../../t-sql/functions/json-query-transact-sql.md)  
  
  