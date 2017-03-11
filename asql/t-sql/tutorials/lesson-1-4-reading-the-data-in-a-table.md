---
title: "Reading the Data in a Table (Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "reading data in a table"
ms.assetid: 532232c9-3d41-45cd-9150-de67a1cbfcf5
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# Lesson 1-4 - Reading the Data in a Table
Use the SELECT statement to read the data in a table. The SELECT statement is one of the most important [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements, and there are many variations in the syntax. For this tutorial, you will work with five simple versions.  
  
### To read the data in a table  
  
1.  Type and execute the following statements to read the data in the `Products` table.  
  
    ```  
    -- The basic syntax for reading data from a single table  
    SELECT ProductID, ProductName, Price, ProductDescription  
        FROM dbo.Products  
    GO  
  
    ```  
  
2.  You can use an asterisk to select all the columns in the table. This is often used in ad hoc queries. You should provide the column list in you permanent code so that the statement will return the predicted columns, even if a new column is added to the table later.  
  
    ```  
    -- Returns all columns in the table  
    -- Does not use the optional schema, dbo  
    SELECT * FROM Products  
    GO  
  
    ```  
  
3.  You can omit columns that you do not want to return. The columns will be returned in the order that they are listed.  
  
    ```  
    -- Returns only two of the columns from the table  
    SELECT ProductName, Price  
        FROM dbo.Products  
    GO  
  
    ```  
  
4.  Use a `WHERE` clause to limit the rows that are returned to the user.  
  
    ```  
    -- Returns only two of the records in the table  
    SELECT ProductID, ProductName, Price, ProductDescription  
        FROM dbo.Products  
        WHERE ProductID < 60  
    GO  
  
    ```  
  
5.  You can work with the values in the columns as they are returned. The following example performs a mathematical operation on the `Price` column. Columns that have been changed in this way will not have a name unless you provide one by using the `AS` keyword.  
  
    ```  
    -- Returns ProductName and the Price including a 7% tax  
    -- Provides the name CustomerPays for the calculated column  
    SELECT ProductName, Price * 1.07 AS CustomerPays  
        FROM dbo.Products  
    GO  
    ```  
  
## Functions That Are Useful in a SELECT Statement  
For information about some functions that you can use to work with data in SELECT statements, see the following topics:  
  
|||  
|-|-|  
|[String Functions &#40;Transact-SQL&#41;](../../t-sql/functions/string-functions-transact-sql.md)|[Date and Time Data Types and Functions &#40;Transact-SQL&#41;](../../t-sql/functions/date-and-time-data-types-and-functions-transact-sql.md)|  
|[Mathematical Functions &#40;Transact-SQL&#41;](../../t-sql/functions/mathematical-functions-transact-sql.md)|[Text and Image Functions &#40;Transact-SQL&#41;](http://msdn.microsoft.com/library/b9c70488-1bf5-4068-a003-e548ccbc5199)|  
  
## Next Task in Lesson  
[Summary: Creating Database Objects](../../t-sql/tutorials/lesson-1-5-summary-creating-database-objects.md)  
  
## See Also  
[SELECT &#40;Transact-SQL&#41;](../../t-sql/queries/select-transact-sql.md)  
  
  
  
