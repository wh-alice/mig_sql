---
title: "Format Nested JSON Output with PATH Mode (SQL Server) | Microsoft Docs"
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
ms.assetid: 032761b0-6358-42e4-b05c-dbfd663ac881
caps.latest.revision: 18
ms.author: "douglasl"
manager: "jhubbard"
---
# Format Nested JSON Output with PATH Mode (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../relational-databases/data-compression/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  To maintain full control over the format of the JSON output, specify the **PATH** option with the **FOR JSON** clause.  
  
 **PATH** mode lets you create wrapper objects and nest complex properties. The results are formatted as an array of JSON objects.  
  
 Here are some examples of the **FOR JSON** clause with the **PATH** option. Format nested results by using dot-separated column names or by using nested queries, as shown in the following examples. By default, null values are not included in the output.  
  
## Example - Dot-separated column names  
 The following query formats the first five rows from the AdventureWorks Person table as JSON.  
  
 **Query**  
  
```tsql  
SELECT TOP 5   
       BusinessEntityID As Id,  
       FirstName, LastName,  
       Title As 'Info.Title',  
       MiddleName As 'Info.MiddleName'  
   FROM Person.Person  
   FOR JSON PATH   
```  
  
 **Result**  
  
```json  
[{
	"Id": 1,
	"FirstName": "Ken",
	"LastName": "Sánchez",
	"Info": {
		"MiddleName": "J"
	}
}, {
	"Id": 2,
	"FirstName": "Terri",
	"LastName": "Duffy",
	"Info": {
		"MiddleName": "Lee"
	}
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
	"Info": {
		"Title": "Ms.",
		"MiddleName": "A"
	}
}]
```  
  
 FOR JSON PATH clause will use column alias or column name to determine key name in JSON output. If some alias contains dots, FOR JSON PATH clause will create nested object. Note that cells with NULL values will not be generated in the output.  
  
## Example - Multiple tables  
 If you reference more than one table in the query, the results are represented as a flat list, and then FOR JSON PATH nests each column using its alias. The following query creates one JSON object per (OrderHeader,OrderDetails) pair joined in the query:  
  
 **Query**  
  
```tsql  
SELECT TOP 2 SalesOrderNumber AS 'Order.Number',  
        OrderDate AS 'Order.Date',  
        UnitPrice AS 'Product.Price',  
        OrderQty AS 'Product.Quantity'  
FROM Sales.SalesOrderHeader H  
   INNER JOIN Sales.SalesOrderDetail D  
     ON H.SalesOrderID = D.SalesOrderID  
FOR JSON PATH   
```  
  
 **Result**  
  
```json  
[{
	"Order": {
		"Number": "SO43659",
		"Date": "2011-05-31T00:00:00"
	},
	"Product": {
		"Price": 2024.9940,
		"Quantity": 1
	}
}, {
	"Order": {
		"Number": "SO43659"
	},
	"Product": {
		"Price": 2024.9940
	}
}]
```  
  
## See Also  
 [FOR Clause &#40;Transact-SQL&#41;](../Topic/FOR%20Clause%20\(Transact-SQL\).md)  
  
  