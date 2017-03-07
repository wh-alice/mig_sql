---
title: "IsNull (geography Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "IsNull (geography Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IsNull method"
ms.assetid: c031074f-bfda-4584-a3bf-4e7c324f237f
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# IsNull (geography Data Type)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  A property that specifies if the **geography** instance is null. Returns 'TRUE' if the instance is null; returns 0 if the instance is not null.  
  
## Syntax  
  
```  
  
.IsNull  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] type: **bit**  
  
 CLR type: **SqlBoolean**  
  
## Remarks  
 `IsNull` can be used to test whether a **geography** instance is null. This can produce somewhat confusing results, returning 0 if the instance is not null, but null if the instance is null.  
  
 This method is primarily used by the [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] infrastructure; it is recommended that you use the T-SQL predicate IS NULL to test whether a **geography** instance is null. For more information on the T-SQL predicate IS NULL, see [IS NULL &#40;Transact-SQL&#41;](../Topic/IS%20NULL%20\(Transact-SQL\).md).  
  
## Examples  
  
## See Also  
 [Extended Methods on Geography Instances](../../../t-sql/data-types/extended-methods-on-geography-instances.md)  
  
  