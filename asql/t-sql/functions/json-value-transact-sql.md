---
title: "JSON_VALUE (Transact-SQL) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-02"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-json"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "JSON_VALUE"
  - "JSON_VALUE_TSQL"
helpviewer_keywords: 
  - "JSON_VALUE function"
  - "JSON, extracting"
  - "JSON, querying"
ms.assetid: cd016e14-11eb-4eaf-bf05-c7cfcc820a10
caps.latest.revision: 18
ms.author: "douglasl"
manager: "jhubbard"
---
# JSON_VALUE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  Extracts a scalar value from a JSON string.  
  
 To extract an object or an array from a JSON string, see [JSON_QUERY &#40;Transact-SQL&#41;](../../t-sql/functions/json-query-transact-sql.md). For info about the differences between **JSON_VALUE** and **JSON_QUERY**, see [Compare JSON_VALUE and JSON_QUERY](../../relational-databases/json/validate-query-and-change-json-data-with-built-in-functions-sql-server.md#JSONCompare).  
  
 ![Topic link icon](../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```tsql  
JSON_VALUE ( expression , path )  
```  
  
## Arguments  
 *expression*  
 An expression. Typically the name of a variable or a column that contains JSON text.  
  
 **JSON_VALUE** returns an error if it finds JSON that is not valid in *expression* before it finds the value identified by *path*. If **JSON_VALUE** doesn't find the value identified by *path*, it scans the entire text and returns an error if it finds JSON that is not valid anywhere in *expression*.  
  
 *path*  
 A JSON path that specifies the property to extract. For more info, see [JSON Path Expressions &#40;SQL Server&#41;](../../relational-databases/json/json-path-expressions-sql-server.md).  
 
In [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] and in [!INCLUDE[ssSDSfull_md](../../a9retired/includes/sssdsfull-md.md)], you can provide a variable as the value of *path*.
  
 **JSON_VALUE** returns an error if the format of *path* isn't valid.  
  
## Return Value  
 Returns a single text value of type nvarchar(4000). The collation of the returned value is the same as the collation of the input expression.  
  
 If the value is greater than 4000 characters:  
  
-   In lax mode, **JSON_VALUE** returns null.  
  
-   In strict mode, **JSON_VALUE** returns an error.  
  
 If you have to return scalar values greater than 4000 characters, use **OPENJSON**. For more info, see [OPENJSON &#40;Transact-SQL&#41;](../../t-sql/functions/openjson-transact-sql.md).  
  
## Remarks  
 Consider the following JSON text:  
  
```json  
DECLARE @jsonInfo NVARCHAR(MAX)

SET @jsonInfo=N'{  
     "info":{    
       "type":1,  
       "address":{    
         "town":"Bristol",  
         "county":"Avon",  
         "country":"England"  
       },  
       "tags":["Sport", "Water polo"]  
    },  
    "type":"Basic"  
 }'  
```  
  
 The following table compares the behavior of **JSON_VALUE** in lax mode and in strict mode. For more info about the optional path mode specification (lax or strict), see [JSON Path Expressions &#40;SQL Server&#41;](../../relational-databases/json/json-path-expressions-sql-server.md).  
  
|Path|Return value in lax mode|Return value in strict mode|More info|  
|----------|------------------------------|---------------------------------|---------------|  
|$|NULL|Error|Not a scalar value.<br /><br /> Use **JSON_QUERY** instead.|  
|$.info.type|N'1'|N'1'|N/a|  
|$.info.address.town|N'Bristol'|N'Bristol'|N/a|  
|$.info."address"|NULL|Error|Not a scalar value.<br /><br /> Use **JSON_QUERY** instead.|  
|$.info.tags|NULL|Error|Not a scalar value.<br /><br /> Use **JSON_QUERY** instead.|  
|$.info.type[0]|NULL|Error|Not an array.|  
|$.info.none|NULL|Error|Property does not exist.|  
  
## Examples  
  
### Example 1  
 The following example uses the values of JSON properties in query results. Since **JSON_VALUE** preserves the collation of the source, the sort order of the results depends on the collation of the jsonInfo column.  
  
```tsql  
SELECT FirstName,LastName,
 JSON_VALUE(jsonInfo,'$.info.address[0].town') AS Town
FROM Person.Person
WHERE JSON_VALUE(jsonInfo,'$.info.address[0].state') LIKE 'US%'
ORDER BY JSON_VALUE(jsonInfo,'$.info.address[0].town')
```  
  
### Example 2  
 The following example extracts the value of a JSON property into a local variable.  
  
```tsql  
DECLARE @jsonInfo NVARCHAR(MAX)
DECLARE @town NVARCHAR(32)

SET @jsonInfo=N'<array of address info>'

SET @town=JSON_VALUE(@jsonInfo,'$.info.address.town')
```  
  
### Example 3  
 The following example creates computed columns based on the values of JSON properties.  
  
```tsql  
CREATE TABLE dbo.Store
 (
  StoreID INT IDENTITY(1,1) NOT NULL,
  Address VARCHAR(500),
  jsonContent NVARCHAR(8000),
  Longitude AS JSON_VALUE(jsonContent,'$.address[0].longitude'),
  Latitude AS JSON_VALUE(jsonContent,'$.address[0].latitude')
 )
```  
  
## See Also  
 [JSON Path Expressions &#40;SQL Server&#41;](../../relational-databases/json/json-path-expressions-sql-server.md)   
 [JSON Data &#40;SQL Server&#41;](../../relational-databases/json/json-data-sql-server.md)  
  
  