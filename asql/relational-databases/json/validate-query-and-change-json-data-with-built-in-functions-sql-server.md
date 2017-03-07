---
title: "Validate, Query, and Change JSON Data with Built-in Functions (SQL Server) | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "2016-06-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-json"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "JSON, built-in functions"
  - "functions (JSON)"
ms.assetid: 6b6c7673-d818-4fa9-8708-b4ed79cb1b41
caps.latest.revision: 21
ms.author: "douglasl"
manager: "jhubbard"
---
# Validate, Query, and Change JSON Data with Built-in Functions (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  The built-in support for JSON includes the following built-in functions described in this topic.  
  
-   [ISJSON](#ISJSON) tests whether a string contains valid JSON.  
  
-   [JSON_VALUE](#VALUE) extracts a scalar value from a JSON string.  
  
-   [JSON_QUERY](#QUERY) extracts an object or an array from a JSON string.  
  
-   [JSON_MODIFY](#MODIFY) updates the value of a property in a JSON string and returns the updated JSON string.  
 
## JSON text for the examples on this page
The examples on this page use the following JSON text, which contains a complex element.

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

##  <a name="ISJSON"></a> Validate JSON text by using the ISJSON function  
 The **ISJSON** function tests whether a string contains valid JSON.  
  
 The following example returns the JSON text if the column contains valid JSON.  
  
```tsql  
SELECT id,json_col
FROM tab1
WHERE ISJSON(json_col)>0 
```  
  
 For more info, see [ISJSON &#40;Transact-SQL&#41;](../../t-sql/functions/isjson-transact-sql.md).  
  
##  <a name="VALUE"></a> Extract a value from JSON text by using the JSON_VALUE function  
 The **JSON_VALUE** function extracts a scalar value from a JSON string.  
  
 The following example extracts the value of a JSON property into a local variable.  
  
```tsql  
SET @town=JSON_VALUE(@jsonInfo,'$.info.address.town')  
```  
  
 For more info, see [JSON_VALUE &#40;Transact-SQL&#41;](../../t-sql/functions/json-value-transact-sql.md).  
  
##  <a name="QUERY"></a> Extract an object or an array from JSON text by using the JSON_QUERY function  
 The **JSON_QUERY** function extracts an object or an array from a JSON string.  
 
 The following example shows how to return a JSON fragment in query results.  
  
```tsql  
SELECT FirstName,LastName,JSON_QUERY(jsonInfo,'$.info.address') AS Address
FROM Person.Person
ORDER BY LastName
```  
  
 For more info, see [JSON_QUERY &#40;Transact-SQL&#41;](../../t-sql/functions/json-query-transact-sql.md).  
  
##  <a name="JSONCompare"></a> Compare JSON_VALUE and JSON_QUERY  
 The key difference between **JSON_VALUE** and **JSON_QUERY** is that **JSON_VALUE** returns a scalar value, while **JSON_QUERY** returns an object or an array.  
  
 Consider the following sample JSON text.  
  
```json  
{
	"a": "[1,2]",
	"b": [1, 2],
	"c": "hi"
}  
```  
  
 In this sample JSON text, data members "a" and "c" are string values, while data member "b" is an array. **JSON_VALUE** and **JSON_QUERY** return the following results:  
  
|Query|**JSON_VALUE** returns|**JSON_QUERY** returns|  
|-----------|-----------------------------|-----------------------------|  
|**$**|NULL or error|`{ "a": "[1,2]", "b": [1,2], "c":"hi"}`|  
|**$.a**|[1,2]|NULL or error|  
|**$.b**|NULL or error|[1,2]|  
|**$.b[0]**|1|NULL or error|  
|**$.c**|hi|NULL or error|  
  
## Test JSON_VALUE and JSON_QUERY with the AdventureWorks sample database  
 Test the built-in functions described in this topic by running the following examples with the AdventureWorks sample database, which contains JSON data. To get the AdventureWorks sample database, [click here](http://www.microsoft.com/en-us/download/details.aspx?id=49502).  
  
 In the following examples, the  Info column in the SalesOrder_json table contains JSON text.  
  
### Example 1 - Return both standard columns and JSON data  
 The following query returns both standard relational columns and values from a JSON column.  
  
```tsql  
SELECT SalesOrderNumber,OrderDate,Status,ShipDate,Status,AccountNumber,TotalDue,
 JSON_QUERY(Info,'$.ShippingInfo') ShippingInfo,
 JSON_QUERY(Info,'$.BillingInfo') BillingInfo,
 JSON_VALUE(Info,'$.SalesPerson.Name') SalesPerson,
 JSON_VALUE(Info,'$.ShippingInfo.City') City,
 JSON_VALUE(Info,'$.Customer.Name') Customer,
 JSON_QUERY(OrderItems,'$') OrderItems
FROM Sales.SalesOrder_json
WHERE ISJSON(Info)>0
```  
  
### Example 2- Aggregate and filter JSON values  
 The following query aggregates subtotals by customer name (stored in JSON) and status (stored in an ordinary column). Then it filters the results by city (stored in JSON), and OrderDate (stored in an ordinary column).  
  
```tsql  
DECLARE @territoryid INT;
DECLARE @city NVARCHAR(32);

SET @territoryid=3;

SET @city=N'Seattle';

SELECT JSON_VALUE(Info,'$.Customer.Name') AS Customer,Status,SUM(SubTotal) AS Total
FROM Sales.SalesOrder_json
WHERE TerritoryID=@territoryid
 AND JSON_VALUE(Info,'$.ShippingInfo.City')=@city
 AND OrderDate>'1/1/2015'
GROUP BY JSON_VALUE(Info,'$.Customer.Name'),Status
HAVING SUM(SubTotal)>1000
```  
  
##  <a name="MODIFY"></a> Update property values in JSON text by using the JSON_MODIFY function  
 The **JSON_MODIFY**  function updates the value of a property in a JSON string and returns the updated JSON string.  
  
 The following example updates the value of a property in a variable that contains JSON.  
  
```tsql  
SET @info=JSON_MODIFY(@jsonInfo,"$.info.address[0].town",'London')    
```  
  
 For more info, see [JSON_MODIFY &#40;Transact-SQL&#41;](../../t-sql/functions/json-modify-transact-sql.md).  
  
## Learn more about built-in JSON support in SQL Server  
 [Blog posts by Microsoft Program Manager Jovan Popovic](http://blogs.msdn.com/b/sqlserverstorageengine/archive/tags/json/)  
  
## See Also  
 [ISJSON &#40;Transact-SQL&#41;](../../t-sql/functions/isjson-transact-sql.md)   
 [JSON_VALUE &#40;Transact-SQL&#41;](../../t-sql/functions/json-value-transact-sql.md)   
 [JSON_QUERY &#40;Transact-SQL&#41;](../../t-sql/functions/json-query-transact-sql.md)   
 [JSON_MODIFY &#40;Transact-SQL&#41;](../../t-sql/functions/json-modify-transact-sql.md)   
 [JSON Path Expressions &#40;SQL Server&#41;](../../relational-databases/json/json-path-expressions-sql-server.md)  
  
  