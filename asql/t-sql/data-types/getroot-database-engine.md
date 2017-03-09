---
title: "GetRoot (Database Engine) | Microsoft Docs"
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
  - "GetRoot"
  - "GetRoot_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "GetRoot [Database Engine]"
ms.assetid: 240b70f1-eeda-44ab-b4bb-9e4af80fa7c0
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# GetRoot (Database Engine)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns the root of the hierarchy tree. GetRoot() is a static method.  
  
## Syntax  
  
```  
  
-- Transact-SQL syntax  
hierarchyid::GetRoot ( )   
```  
  
```  
  
-- CLR syntax  
static SqlHierarchyId GetRoot ( )   
```  
  
## Return Types  
 **SQL Server return type:hierarchyid**  
  
 **CLR return type:SqlHierarchyId**  
  
## Remarks  
 Used to determine the root node in a hierarchy tree.  
  
## Examples  
  
### A. Transact-SQL example  
 The following example returns the root of the hierarchy tree:  
  
```  
SELECT OrgNode.ToString() AS Text_OrgNode, *  
FROM HumanResources.EmployeeDemo  
WHERE OrgNode = hierarchyid::GetRoot()  
  
```  
  
### B. CLR example  
 The following code snippet calls the GetRoot() method:  
  
```  
SqlHierarchyId.GetRoot()  
```  
  
## See Also  
 [hierarchyid Data Type Method Reference](../Topic/hierarchyid%20Data%20Type%20Method%20Reference.md)   
 [Hierarchical Data &#40;SQL Server&#41;](../../relational-databases/hierarchical-data-sql-server.md)   
 [hierarchyid &#40;Transact-SQL&#41;](../../t-sql/data-types/hierarchyid-data-type-method-reference.md)  
  
  