---
title: "json scratch | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/02/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 5faf3c29-c4d0-4d75-bb24-a1e076e9e69a
caps.latest.revision: 6
ms.author: "douglasl"
manager: "jhubbard"
---
# json scratch
  Insert introduction here.  
  
## from Format Query Results as JSON with FOR JSON  (FOR JSON conceptual)  
  
-   When you don't select rows from a table, but format your own result set by using the **PATH** option, the results are formatted as a single JSON object.  
  
## from Format Nested JSON Output with PATH Mode (FOR JSON conceptual)  
 **Query**  
  
```tsql  
SELECT  
   'SO43659' AS OrderNumber,  
   '2011-05-31T00:00:00' AS OrderDate,  
   (SELECT  
       2024.9940 AS Price,  
       4 AS Quantity  
    FOR JSON PATH) AS Item  
FOR JSON PATH  
```  
  
 **Result**  
  
```json  
{  
  "OrderNumber":"SO43659",  
  "OrderDate":"2011-05-31T00:00:00",  
  "Item":{  
    "Price":2024.9940,  
    "Quantity":4  
  }  
}  
```  
  
## Examples that don't select rows from a table  
 A query that uses the **FOR JSON PATH** option does not have to have a **FROM** clause. When you don't select rows from a table, but format your own result set by using the **PATH** option, the results are formatted as a single JSON object, as shown in the following examples.  
  
 Use dot-separated column names to nest properties. By default, null values are not included in the output.  
  
 **Query**  
  
```tsql  
SELECT  
    1 AS 'a.b.c',  
    2 AS 'a.b.d',  
    3 AS 'a.x',  
    4 AS 'a.y'  
FOR JSON PATH  
```  
  
 **Result**  
  
```json  
{  
  a: {  
    b: {  
         c: 1,  
         d: 2  
    },  
    x: 3,  
    y: 4  
  }  
}  
```  
  
 **Query**  
  
```tsql  
SELECT @name AS name, 1 as Num  
FOR JSON PATH  
```  
  
 **Result**  
  
```json  
{ "name": "John", "Num": 1 }  
```  
  
 **Query**  
  
```tsql  
SELECT  
     'SO43659' AS OrderNumber,  
     '2011-05-31T00:00:00' OrderDate,  
     2024.9940 AS ItemPrice,  
     NULL AS ItemDescription,  
     4 AS ItemQuantity  
FOR JSON PATH  
```  
  
 **Result**  
  
```json  
{   
  "OrderNumber":"SO43659",  
  "OrderDate":"2011-05-31T00:00:00",  
  "ItemPrice":2024.9940,  
  "ItemQuantity":4  
}  
```  
  
 **Query**  
  
```tsql  
SELECT  
     'SO43659' AS OrderNumber,  
     '2011-05-31T00:00:00' OrderDate,  
     2024.9940 AS [Item.Price],  
     NULL AS [Item.Description],  
     4 AS [Item.Quantity]  
FOR JSON PATH  
```  
  
 **Result**  
  
```json  
{  
  "OrderNumber":"SO43659",  
  "OrderDate":"2011-05-31T00:00:00",  
  "Item":{  
        "Price":2024.9940,  
        "Quantity":4  
  }  
}  
```  
  
  