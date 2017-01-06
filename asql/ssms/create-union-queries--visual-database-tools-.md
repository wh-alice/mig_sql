---
title: "Create UNION Queries (Visual Database Tools) | Microsoft Docs"
ms.custom: ""
ms.date: "11/17/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "tools-ssms"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "queries [SQL Server], types"
  - "UNION queries"
  - "Select query"
  - "combining query results"
  - "merged SELECT query [SQL Server]"
ms.assetid: b5aafb1d-e4ed-4922-b790-56abc5ec551a
caps.latest.revision: 5
ms.author: "sstein"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "zh-cn"
  - "zh-tw"
---
# Create UNION Queries (Visual Database Tools)
The UNION keyword enables you to include the results of two SELECT statements in one resulting table. All rows returned from either SELECT statement are combined into the result of the UNION expression. For examples, see [SELECT Examples (Transact-SQL)](http://msdn.microsoft.com/en-us/9b9caa3d-e7d0-42e1-b60b-a5572142186c).  
  
> [!NOTE]  
> The Diagram pane can only display one SELECT clause. Therefore, when you are working with a UNION query, Query Designer hides the Table Operations pane.  
  
### To create a Merged SELECT query  
  
1.  Open a query or create a new one.  
  
2.  In the SQL pane, type a valid UNION expression.  
  
    The following example is a valid UNION expression.  
  
    ```  
    SELECT ProductModelID, Name  
    FROM Production.ProductModel  
    UNION  
    SELECT ProductModelID, Name   
    FROM dbo.Gloves;  
    ```  
  
3.  On the **Query Designer** menu, click **Execute SQL** to run the query.  
  
    Your UNION query is now formatted by Query Designer.  
  
## See Also  
[Supported Query Types (Visual Database Tools)](../ssms/supported-query-types--visual-database-tools-.md)  
[Design Queries and Views How-to Topics (Visual Database Tools)](../ssms/design-queries-and-views-how-to-topics--visual-database-tools-.md)  
[Perform Basic Operations with Queries (Visual Database Tools)](../ssms/perform-basic-operations-with-queries--visual-database-tools-.md)  
[UNION (Transact-SQL)](http://msdn.microsoft.com/en-us/607c296f-8a6a-49bc-975a-b8d0c0914df7)  
  
