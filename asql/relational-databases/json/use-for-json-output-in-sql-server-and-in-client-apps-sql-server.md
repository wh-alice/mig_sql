---
title: "Use FOR JSON output in SQL Server and in client apps (SQL Server) | Microsoft Docs"
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
  - "FOR JSON, using in client apps"
  - "FOR JSON, using in SQL Server"
ms.assetid: 302e5397-b499-4ea3-9a7f-c24ccad698eb
caps.latest.revision: 12
ms.author: "douglasl"
manager: "jhubbard"
---
# Use FOR JSON output in SQL Server and in client apps (SQL Server)
[!INCLUDE[tsql-appliesto-ss2016-asdb-xxxx-xxx_md](../../a9notintoc/includes/tsql-appliesto-ss2016-asdb-xxxx-xxx-md.md)]

  The following examples demonstrate some of the ways to use the **FOR JSON** clause or its output in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] or in client apps.  
  
## Use FOR JSON output in SQL Server variables  
 The output of the FOR JSON clause is of type NVARCHAR(MAX), so it can be assigned to any variable, as shown in the following example.  
  
```tsql  
DECLARE @x NVARCHAR(MAX) = (SELECT TOP 10 * FROM Sales.SalesOrderHeader FOR JSON AUTO)  
```  
  
## Use FOR JSON output in SQL Server user-defined functions  
 You can create user-defined functions that format result sets as JSON and return this JSON output. The following example creates a user-defined function that fetches some sales order detail rows and formats them as a JSON array.  
  
```tsql  
CREATE FUNCTION GetSalesOrderDetails(@salesOrderId int)  
 RETURNS NVARCHAR(MAX)  
AS  
BEGIN  
   RETURN (SELECT UnitPrice, OrderQty  
           FROM Sales.SalesOrderDetail  
           WHERE SalesOrderID = @salesOrderId  
           FOR JSON AUTO)  
END
```  
  
 You can use this function in a batch or query, as shown in the following example.  
  
```tsql  
DECLARE @x NVARCHAR(MAX)=dbo.GetSalesOrderDetails(43659)

PRINT dbo.GetSalesOrderDetails(43659)

SELECT TOP 10
  H.*,dbo.GetSalesOrderDetails(H.SalesOrderId) AS Details
FROM Sales.SalesOrderHeader H
```  
  
## Merge parent and child data into a single table  
 In the following example, each set of child rows is formatted as a JSON array and becomes the value of the Details column in the parent table.  
  
```tsql  
SELECT TOP 10 SalesOrderId, OrderDate,  
      (SELECT TOP 3 UnitPrice, OrderQty  
         FROM Sales.SalesOrderDetail D  
         WHERE H.SalesOrderId = D.SalesOrderID  
         FOR JSON AUTO) as Details  
INTO SalesOrder  
FROM Sales.SalesOrderHeader H  
```  
  
## Update the data in JSON columns  
 The following example demonstrates that you can update the value of columns that contain JSON text.  
  
```tsql  
UPDATE SalesOrder  
SET Details =  
     (SELECT TOP 1 UnitPrice, OrderQty  
       FROM Sales.SalesOrderDetail D  
       WHERE D.SalesOrderId = SalesOrder.SalesOrderId  
      FOR JSON AUTO 
```  
  
## Use FOR JSON output in a C# client app  
 The following example shows how to retrieve the JSON output of a query into a StringBuilder object in a C# client app. Assume that the variable queryWithForJson contains the text of a SELECT statement with a FOR JSON clause.  
  
```c#  
            var queryWithForJson = "SELECT ... FOR JSON";
            var conn = new SqlConnection("<connection string>");
            var cmd = new SqlCommand(queryWithForJson, conn);
            conn.Open();
            var jsonResult = new StringBuilder();
            var reader = cmd.ExecuteReader();
            if (!reader.HasRows)
            {
                jsonResult.Append("[]");
            }
            else
            {
                while (reader.Read())
                {
                    jsonResult.Append(reader.GetValue(0).ToString());
                }
            }
```  
  
## See Also  
 [Format Query Results as JSON with FOR JSON &#40;SQL Server&#41;](../../relational-databases/json/format-query-results-as-json-with-for-json-sql-server.md)  
  
  