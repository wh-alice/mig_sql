---
title: "sys.fn_validate_plan_guide (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sys.fn_validate_plan_guide"
  - "sys.fn_validate_plan_guide_TSQL"
  - "fn_validate_plan_guide"
  - "fn_validate_plan_guide_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "fn_validate_plan_guide function"
  - "sys.fn_validate_plan_guide function"
ms.assetid: 3af8b47a-936d-4411-91d1-d2d16dda5623
caps.latest.revision: 19
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.fn_validate_plan_guide (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Verifies the validity of the specified plan guide. The sys.fn_validate_plan_guide function returns the first error message that is encountered when the plan guide is applied to its query. An empty rowset is returned when the plan guide is valid. Plan guides can become invalid after changes are made to the physical design of the database. For example, if a plan guide specifies a particular index and that index is subsequently dropped, the query will no longer be able to use the plan guide.  
  
 By validating a plan guide, you can determine whether the guide can be used by the optimizer without modification. Based on the results of the function, you can decide to drop the plan guide and retune the query or modify the database design, for example, by re-creating the index specified in the plan guide.  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sys.fn_validate_plan_guide ( plan_guide_id )  
```  
  
## Arguments  
 *plan_guide_id*  
 Is the ID of the plan guide as reported in the [sys.plan_guides](../../../relational-databases/reference/system-catalog-views/sys.plan-guides-transact-sql.md) catalog view. *plan_guide_id* is **int** with no default.  
  
## Table Returned  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|msgnum|**int**|ID of the error message.|  
|severity|**tinyint**|Severity level of the message, between 1 and 25.|  
|state|**smallint**|State number of the error indicating the point in the code in which the error occurred.|  
|message|**nvarchar(2048)**|Message text of the error.|  
  
## Permissions  
 OBJECT-scoped plan guides require VIEW DEFINITION or ALTER permission on the referenced object and permissions to compile the query or batch that is provided in the plan guide. For example, if a batch contains SELECT statements, SELECT permissions on the referenced objects are required.  
  
 SQL- or TEMPLATE-scoped plan guides require ALTER permission on the database and permissions to compile the query or batch that is provided in the plan guide. For example, if a batch contains SELECT statements, SELECT permissions on the referenced objects are required.  
  
## Examples  
  
### A. Validating all plan guides in a database  
 The following example checks the validity of all plan guides in the current database. If an empty result set is returned, all plan guides are valid.  
  
```  
USE AdventureWorks2012;  
GO  
SELECT plan_guide_id, msgnum, severity, state, message  
FROM sys.plan_guides  
CROSS APPLY fn_validate_plan_guide(plan_guide_id);  
GO  
```  
  
### B. Testing plan guide validation before implementing a change to the database  
 The following example uses an explicit transaction to drop an index. The `sys.fn`_`validate`\_`plan`\_`guide` function is executed to determine whether this action will invalidate any plan guides in the database. Based on the results of the function, the `DROP INDEX` statement is either committed or the transaction is rolled back, and the index is not dropped.  
  
```  
USE AdventureWorks2012;  
GO  
BEGIN TRANSACTION;  
DROP INDEX IX_SalesOrderHeader_CustomerID ON Sales.SalesOrderHeader;  
-- Check for invalid plan guides.  
IF EXISTS (SELECT plan_guide_id, msgnum, severity, state, message  
           FROM sys.plan_guides  
           CROSS APPLY sys.fn_validate_plan_guide(plan_guide_id))  
    ROLLBACK TRANSACTION;  
ELSE  
    COMMIT TRANSACTION;  
GO  
```  
  
## See Also  
 [Plan Guides](../../../relational-databases/performance/plan-guides.md)   
 [sp_create_plan_guide &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-transact-sql.md)   
 [sp_create_plan_guide_from_handle &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-create-plan-guide-from-handle-transact-sql.md)  
  
  