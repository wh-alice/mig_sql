---
title: "Create Full-Text Search Queries (Visual Database Tools) | Microsoft Docs"
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
  - "CONTAINS predicate (Transact-SQL)"
  - "queries [full-text search], creating"
  - "full-text queries [SQL Server], creating"
ms.assetid: 537fa556-390e-4c88-9b8e-679848d94abc
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
# Create Full-Text Search Queries (Visual Database Tools)
Full-text searches use the CONTAINS predicate to locate rows that have specified text in a given column. Full-Text searches are only possible on columns that have active full-text indexes. If you attempt to use the CONTAINS clause on a column that does not have a currently active full-text index, you will receive an error. For more information on full-text indexes and the CONTAINS clause, see [Full-Text Search (SQL Server)](http://msdn.microsoft.com/en-us/a0ce315d-f96d-4e5d-b4eb-ff76811cab75) and [CONTAINS (Transact-SQL)](http://msdn.microsoft.com/en-us/996c72fc-b1ab-4c96-bd12-946be9c18f84).  
  
### To create a full-text search query  
  
1.  Open a query from Solution Explorer or create a new one.  
  
2.  In the WHERE clause of your query, use the CONTAINS function to search a full-text column.  
  
## See Also  
[Supported Query Types &#40;Visual Database Tools&#41;](../ssms/supported-query-types--visual-database-tools-.md)  
[Design Queries and Views How-to Topics &#40;Visual Database Tools&#41;](../ssms/design-queries-and-views-how-to-topics--visual-database-tools-.md)  
[Perform Basic Operations with Queries &#40;Visual Database Tools&#41;](../ssms/perform-basic-operations-with-queries--visual-database-tools-.md)  
  
