---
title: "IsNull (geometry Data Type) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "IsNull (geometry Data Type)"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "IsNull (geometry Data Type)"
ms.assetid: f95813a5-26c0-48aa-bfb8-56d2a0980788
caps.latest.revision: 13
ms.author: "rickbyh"
manager: "jhubbard"
---
# IsNull (geometry Data Type)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  The type of a **geometry** instance is null. Returns 0 if the instance is not null.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)), [!INCLUDE[ssSDSfull](../../../a9retired/includes/sssdsfull-md.md)].|  
  
## Syntax  
  
```  
  
.IsNull  
```  
  
## Return Types  
 [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] type: **bit**  
  
 CLR type: **SqlBoolean**  
  
## Remarks  
 `IsNull` can be used to test whether a **geometry** instance is null. This can produce somewhat confusing results, returning 0 if the instance is not null, but null if the instance is null.  
  
 This method is primarily used by the SQL Server infrastructure; it is not recommended that you use `IsNull` to test whether an instance is null.  
  
## Examples  
  
## See Also  
 [Extended Methods on Geometry Instances](../../../t-sql/data-types/extended-methods-on-geometry-instances.md)  
  
  