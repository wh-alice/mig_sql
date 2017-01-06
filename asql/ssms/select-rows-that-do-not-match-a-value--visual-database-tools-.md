---
title: "Select Rows That Do Not Match a Value (Visual Database Tools) | Microsoft Docs"
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
  - "search conditions [SQL Server], rows not matching value"
  - "row not matching value [SQL Server]"
  - "NOT operator [Visual Database Tools]"
  - "search criteria [SQL Server], rows not matching value"
ms.assetid: 19898578-7b2f-401c-bb8f-9f2a017efdf7
caps.latest.revision: 4
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
# Select Rows That Do Not Match a Value (Visual Database Tools)
To find rows that do not match a value, use the NOT operator.  
  
### To find rows that do not match a value  
  
1.  If you have not done so already, add the columns or expressions that you want to use within your search condition to the [Criteria pane](../ssms/criteria-pane--visual-database-tools-.md).  
  
2.  Locate the row containing the data column or expression to search, and then in the **Filter** grid column, enter the NOT operator followed by a search value.  
  
For example, to find all the rows in a `products` table where the values in the product code column begin with a character other than "A," you can enter a search condition such as the following:  
  
```  
NOT LIKE 'A%'  
```  
  
## See Also  
[Rules for Entering Search Values (Visual Database Tools)](../ssms/rules-for-entering-search-values--visual-database-tools-.md)  
[Specify Search Criteria (Visual Database Tools)](../ssms/specify-search-criteria--visual-database-tools-.md)  
  
