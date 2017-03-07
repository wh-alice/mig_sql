---
title: "MSSQLSERVER_10534 | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
helpviewer_keywords: 
  - "10534 (Database Engine error)"
ms.assetid: e65bb118-99d5-4fdb-b1d5-0ec70f0a677b
caps.latest.revision: 14
ms.author: "rickbyh"
manager: "jhubbard"
---
# MSSQLSERVER_10534
  
## Details  
  
|||  
|-|-|  
|Product Name|SQL Server|  
|Event ID|10534|  
|Event Source|MSSQLSERVER|  
|Component|SQLEngine|  
|Symbolic Name|PG_INVALID_PARAMS|  
|Message Text|Cannot create plan guide '%.\*ls' because the value specified for **@params** is invalid. Specify the value in the form *parameter_name parameter_type*, or specify NULL.|  
  
## Explanation  
The value specified for **@params** is invalid.  
  
## User Action  
Specify the value in the form *parameter_name parameter_type*, or specify NULL.  
  
## See Also  
[Plan Guides](../relational-databases/performance/plan-guides.md)  
[sp_create_plan_guide &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-transact-sql.md)  
[sp_create_plan_guide_from_handle &#40;Transact-SQL&#41;](../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-from-handle-transact-sql.md)  
  
