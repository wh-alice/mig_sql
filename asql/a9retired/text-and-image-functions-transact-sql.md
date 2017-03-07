---
title: "Text and Image Functions (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "functions [SQL Server], text"
  - "image functions"
  - "text and image functions [SQL Server]"
  - "functions [SQL Server], image"
ms.assetid: b9c70488-1bf5-4068-a003-e548ccbc5199
caps.latest.revision: 11
ms.author: "rickbyh"
manager: "jhubbard"
robots: noindex,nofollow
---
# Text and Image Functions (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-all_md](../relational-databases/indexes/includes/tsql-appliesto-ss2012-all-md.md)]

  The following scalar functions perform an operation on a text or image input value or column and return information about the value:  
  
|||  
|-|-|  
|[PATINDEX](../t-sql/functions/patindex-transact-sql.md)|[TEXTVALID](../t-sql/functions/text-and-image-functions-textvalid-transact-sql.md)|  
|[TEXTPTR](../t-sql/functions/text-and-image-functions-textptr-transact-sql.md)||  
  
 These text and image functions are nondeterministic. This means they do not always return the same results every time they are called, even with the same set of input values. For more information about function determinism, see [Deterministic and Nondeterministic Functions](../relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions.md).  
  
## See Also  
 [Built-in Functions &#40;Transact-SQL&#41;](../Topic/Built-in%20Functions%20\(Transact-SQL\).md)  
  
  