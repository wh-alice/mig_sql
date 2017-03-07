---
title: "MSSQLSERVER_10533 | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
helpviewer_keywords: 
  - "10533 (Database Engine error)"
ms.assetid: cc2fbdab-7b90-415f-a1f9-066824344283
caps.latest.revision: 10
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQLSERVER_10533
  
## Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|10533|  
|Event Source|MSSQLSERVER|  
|Component|SQLEngine|  
|Symbolic Name|PG_NAME_TOO_BIG|  
|Message Text|Cannot create plan guide '%.*ls' because the plan guide name exceeds 124 characters, the maximum number allowed. Specify a name that contains fewer than 125 characters.|  
  
## Explanation  
The plan guide name exceeds 124 characters, the maximum number allowed.  
  
## User Action  
Specify a name that contains fewer than 125 characters.  
  
## See Also  
[Plan Guides](../relational-databases/performance/plan-guides.md)  
[sp_create_plan_guide &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-transact-sql.md)  
[sp_create_plan_guide_from_handle &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-from-handle-transact-sql.md)  
  
