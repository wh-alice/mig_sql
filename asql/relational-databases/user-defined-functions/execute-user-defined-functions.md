---
title: "Execute User-defined Functions | Microsoft Docs"
ms.custom: ""
ms.date: "2016-10-24"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-udf"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "invoking user-defined functions"
  - "user-defined functions [SQL Server], executing"
ms.assetid: 0de7744d-9b73-463f-ae80-e31a020004b5
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# Execute User-defined Functions
  Execute a user defined function using Transact-SQL.
  

> **Note:** Visit  [user defined function](https://msdn.microsoft.com/library/ms191007.aspx) and [Create Function (Transact SQL](https://msdn.microsoft.com/library/ms186755.aspx) for more information about user defined functions. 
  
 
##  <a name="BeforeYouBegin"></a> Before you begin  
  
###  <a name="Restrictions"></a> Limitations and restrictions  
 In Transact-SQL, parameters can be supplied either by using *value* or by using @*parameter_name*=*value.* A parameter is not part of a transaction; therefore, if a parameter is changed in a transaction that is later rolled back, the value of the parameter does not revert to its previous value. The value returned to the caller is always the value at the time the module returns.  
  
###  <a name="Security"></a> Security  
  
 Permissions are not required to run the [EXECUTE](https://msdn.microsoft.com/library/ms188332.aspx) statement. However, permissions **are required** on the securables referenced within the EXECUTE string. For example, if the string contains an [INSERT](https://msdn.microsoft.com/library/ms174335.aspx) statement, the caller of the EXECUTE statement must have INSERT permission on the target table. Permissions are checked at the time EXECUTE statement is encountered, even if the EXECUTE statement is included within a module. For more information, see [EXECUTE &#40;Transact-SQL&#41;](../../t-sql/language-elements/execute-transact-sql.md)  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
### Example 
  
This example uses the `ufnGetSalesOrderStatusText` scalar-valued function that is available in most editions of `AdventureWorks`.  The purpose of the function is to return a text value for sales status from a given integer.  Vary the example by passing integers 1 through 7 to the **\@Status** parameter.
  
~~~tsql
USE [AdventureWorks2016CTP3]
GO  

-- Declare a variable to return the results of the function. 
DECLARE @ret nvarchar(15);   

-- Execute the function while passing a value to the @status parameter
EXEC @ret = dbo.ufnGetSalesOrderStatusText 
	@Status = 5; 

-- View the returned value.  The Execute and Select statements must be executed at the same time.  
SELECT N'Order Status: ' + @ret; 

-- Result:
-- Order Status: Shipped
~~~
  
  
  