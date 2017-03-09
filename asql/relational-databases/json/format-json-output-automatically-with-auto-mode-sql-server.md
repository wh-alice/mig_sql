---
title: "Format JSON Output Automatically with AUTO Mode (SQL Server) | Microsoft Docs"
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
  - "FOR JSON AUTO"
ms.assetid: 178a2a4e-e0f6-49b9-9895-396956d3c7d9
caps.latest.revision: 16
ms.author: "douglasl"
manager: "jhubbard"
---
# Format JSON Output Automatically with AUTO Mode (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  To format the JSON output automatically based on the structure of the **SELECT** statement, specify the  **AUTO** option with the **FOR JSON** clause.  
  
 With the **AUTO** option, the format of the JSON output is automatically determined based on the order of columns in the SELECT list and their source tables. You can't change this format.  
  
 A query that uses the **FOR JSON AUTO** option must have a **FROM** clause.  
  
 Here are some examples of the **FOR JSON** clause with the **AUTO** option.  
  
## Examples  
 **Query 1**  
  
 Results of FOR JSON AUTO clause are similar to FOR JSON PATH if only one table is used in the query. In this case, FOR JSON AUTO will not create nested objects. The only difference is that dot-separated aliases will be generated as keys with dots (i.e. FOR JSON AUTO will not use column aliases for formatting).  
  
```tsql  
SELECT TOP 5   
       BusinessEntityID As Id,  
       FirstName, LastName,  
       Title As 'Info.Title',  
       MiddleName As 'Info.MiddleName'  
   FROM Person.Person  
   FOR JSON AUTO  
```  
  
 **Result 1**  
  
```json  
[{
	"Id": 1,
	"FirstName": "Ken",
	"LastName": "Sánchez",
	"Info.MiddleName": "J"
}, {
	"Id": 2,
	"FirstName": "Terri",
	"LastName": "Duffy",
	"Info.MiddleName": "Lee"
}, {
	"Id": 3,
	"FirstName": "Roberto",
	"LastName": "Tamburello"
}, {
	"Id": 4,
	"FirstName": "Rob",
	"LastName": "Walters"
}, {
	"Id": 5,
	"FirstName": "Gail",
	"LastName": "Erickson",
	"Info.Title": "Ms.",
	"Info.MiddleName": "A"
}]
```  
  
 **Query 2**  
  
 When you join tables, columns in the first table are generated as properties of the root object. Columns in the second table are generated as properties of a nested object. Table name or alias of second table is used as a name of the nested array.  
  
```tsql  
SELECT TOP 2 SalesOrderNumber,  
        OrderDate,  
        UnitPrice,  
        OrderQty  
FROM Sales.SalesOrderHeader H  
   INNER JOIN Sales.SalesOrderDetail D  
     ON H.SalesOrderID = D.SalesOrderID  
FOR JSON AUTO   
```  
  
 **Result 2**  
  
```json  
[{
	"SalesOrderNumber": "SO43659",
	"OrderDate": "2011-05-31T00:00:00",
	"D": [{
		"UnitPrice": 24.99,
		"OrderQty": 1
	}]
}, {
	"SalesOrderNumber": "SO43659",
	"D": [{
		"UnitPrice": 34.40
	}, {
		"UnitPrice": 134.24,
		"OrderQty": 5
	}]
}]
```  
  
## Examples - Generate nested JSON output  
 Instead of FOR JSON AUTO, you can write nested FOR JSON queries placed in SELECT part of the main query with FOR JSON PATH clause, as shown in the following examples.  
  
 **Query 1**  
  
```tsql  
SELECT TOP 2  
    SalesOrderNumber,  
    OrderDate,  
    (SELECT UnitPrice, OrderQty  
      FROM Sales.SalesOrderDetail AS D  
      WHERE H.SalesOrderID = D.SalesOrderID  
     FOR JSON PATH) AS D  
FROM Sales.SalesOrderHeader AS H  
FOR JSON PATH  
```  
  
 **Result 1**  
  
```json  
[{
	"SalesOrderNumber": "SO43659",
	"OrderDate": "2011-05-31T00:00:00",
	"D": [{
		"UnitPrice": 24.99,
		"OrderQty": 1
	}]
}, {
	"SalesOrderNumber": "SO4390",
	"D": [{
		"UnitPrice": 24.99
	}]
}]
```  
  
## See Also  
 [FOR Clause &#40;Transact-SQL&#41;](../../t-sql/queries/select-for-clause-transact-sql.md)  
  
  