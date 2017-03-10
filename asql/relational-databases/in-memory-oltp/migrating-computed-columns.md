---
title: "Migrating Computed Columns | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-16"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine-imoltp"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 64a9eade-22c3-4a9d-ab50-956219e08df1
caps.latest.revision: 7
ms.author: "genemi"
manager: "jhubbard"
---
# Migrating Computed Columns
[!INCLUDE[tsql-appliesto-ss2014-asdb-xxxx-xxx_md](../../relational-databases/extended-events/includes/tsql-appliesto-ss2014-asdb-xxxx-xxx-md.md)]

Computed columns are not supported in memory-optimized tables. However, you can simulate a computed column.

**Applies to:** [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1.  
Beginning with [!INCLUDE[ssSQLv14_md](../../advanced-analytics/r-services/includes/sssqlv14-md.md)] CTP 1.1, computed columns are supported in memory-optimized tables and indexes.

You should consider the need to persist your computed columns when you migrate your disk-based tables to memory-optimized tables. The different performance characteristics of memory-optimized tables and natively compiled stored procedures may negate the need for persistence.  
  
## Non-Persisted Computed Columns  
 To simulate the effects of a non-persisted computed column, create a view on the memory-optimized table. In the SELECT statement that defines the view, add the computed column definition into the view. Except in a natively compiled stored procedure, queries that use values from the computed column should read from the view. Inside natively compiled stored procedures, you should update any select, update, or delete statement according to your computed column definition.  
  
```tsql  
-- Schema for the table dbo.OrderDetails:  
-- OrderId int not null primary key,  
-- ProductId int not null,  
-- SalePrice money not null,  
-- Quantity int not null,  
-- Total money not null  
--  
-- Total is computed as SalePrice * Quantity and is not persisted.  
CREATE VIEW dbo.v_order_details AS  
   SELECT  
      OrderId,  
      ProductId,  
      SalePrice,  
      Quantity,  
      Quantity * SalePrice AS Total  
   FROM dbo.order_details  
```  
  
## Persisted Computed Columns  
 To simulate the effects of a persisted computed column, create a stored procedure for inserting into the table and another stored procedure for updating the table. When inserting or updating the table, invoke these stored procedures to perform these tasks. Inside the stored procedures, calculate the value for the computed field according to the inputs, much like how the computed column is defined on the original disk-based table. Then, insert or update the table as needed inside the stored procedure.  
  
```tsql  
-- Schema for the table dbo.OrderDetails:  
-- OrderId int not null primary key,  
-- ProductId int not null,  
-- SalePrice money not null,  
-- Quantity int not null,  
-- Total money not null  
--  
-- Total is computed as SalePrice * Quantity and is persisted.  
-- we need to create insert and update procedures to calculate Total.  
CREATE PROCEDURE sp_insert_order_details   
@OrderId int, @ProductId int, @SalePrice money, @Quantity int  
WITH NATIVE_COMPILATION, SCHEMABINDING, EXECUTE AS OWNER  
AS BEGIN ATOMIC WITH (LANGUAGE = N'english', TRANSACTION ISOLATION LEVEL = SNAPSHOT)  
-- compute the value here.   
-- this stored procedure works with single rows only.  
-- for bulk inserts, accept a table-valued parameter into the stored procedure  
-- and use an INSERT INTO SELECT statement.  
DECLARE @total money = @SalePrice * @Quantity  
INSERT INTO dbo.OrderDetails (OrderId, ProductId, SalePrice, Quantity, Total)  
VALUES (@OrderId, @ProductId, @SalePrice, @Quantity, @total)  
END  
GO  
  
CREATE PROCEDURE sp_update_order_details_by_id  
@OrderId int, @ProductId int, @SalePrice money, @Quantity int  
WITH NATIVE_COMPILATION, SCHEMABINDING, EXECUTE AS OWNER  
AS BEGIN ATOMIC WITH (LANGUAGE = N'english', TRANSACTION ISOLATION LEVEL = SNAPSHOT)  
-- compute the value here.   
-- this stored procedure works with single rows only.  
DECLARE @total money = @SalePrice * @Quantity  
UPDATE dbo.OrderDetails   
SET ProductId = @ProductId, SalePrice = @SalePrice, Quantity = @Quantity, Total = @total  
WHERE OrderId = @OrderId  
END  
GO  
```  
  
## See Also  
 [Migrating to In-Memory OLTP](../../relational-databases/in-memory-oltp/migrating-to-in-memory-oltp.md)  
  
  