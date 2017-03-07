---
title: "sp_delete_category (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-09"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_delete_category_TSQL"
  - "sp_delete_category"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_delete_category"
ms.assetid: 63ea7d0d-a567-456e-a778-bee99e21d16c
caps.latest.revision: 23
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_delete_category (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Removes the specified category of jobs, alerts, or operators from the current server.  
  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_delete_category [ @class = ] 'class' , [ @name = ] 'name'   
```  
  
## Arguments  
 [ **@class =**] **'***class***'**  
 The class of the category. *class* is **varchar(8)**, with no default, and must have one of these values.  
  
|Value|Description|  
|-----------|-----------------|  
|**JOB**|Deletes a job category.|  
|**ALERT**|Deletes an alert category.|  
|**OPERATOR**|Deletes an operator category.|  
  
 [ **@name =**] **'***name***'**  
 The name of the category to be removed. *name* is **sysname**, with no default.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 None  
  
## Remarks  
 **sp_delete_category** must be run from the **msdb** database.  
  
 Deleting a category recategorizes any jobs, alerts, or operators in that category to the default category for the class.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can run this procedure.  
  
## Examples  
 The following example deletes the job category named `AdminJobs`.  
  
```  
USE msdb ;  
GO   
  
EXEC dbo.sp_delete_category  
    @name = N'AdminJobs',  
    @class = N'JOB' ;  
GO   
```  
  
## See also  
 [sp_add_category &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-add-category-transact-sql.md)   
 [sp_help_category &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-help-category-transact-sql.md)   
 [sp_update_category &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-update-category-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  