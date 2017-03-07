---
title: "sp_help_category (Transact-SQL) | Microsoft Docs"
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
  - "sp_help_category"
  - "sp_help_category_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_help_category"
ms.assetid: 8cad1dcc-b43e-43bd-bea0-cb0055c84169
caps.latest.revision: 18
ms.author: "jhubbard"
manager: "jhubbard"
---
# sp_help_category (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Provides information about the specified classes of jobs, alerts, or operators.  
   
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_help_category [ [ @class = ] 'class' ]   
     [ , [ @type = ] 'type' ]   
     [ , [ @name = ] 'name' ]   
     [ , [ @suffix = ] suffix ]   
```  
  
## Arguments  
 [ **@class=**] **'***class***'**  
 The class about which information is requested. *class* is **varchar(8)**, with a default value of **JOB**. *class* can be one of these values.  
  
|Value|Description|  
|-----------|-----------------|  
|**JOB**|Provides information about a job category.|  
|**ALERT**|Provides information about an alert category.|  
|**OPERATOR**|Provides information about an operator category.|  
  
 [ **@type=** ] **'***type***'**  
 The type of category for which information is requested. *type* is **varchar(12)**, with a default of NULL, and can be one of these values.  
  
|Value|Description|  
|-----------|-----------------|  
|**LOCAL**|Local job category.|  
|**MULTI -SERVER**|Multiserver job category.|  
|**NONE**|Category for a class other than **JOB**.|  
  
 [ **@name=** ] **'***name***'**  
 The name of the category for which information is requested. *name* is **sysname**, with a default of NULL.  
  
 [ **@suffix=** ] *suffix*  
 Specifies whether the **category_type** column in the result set is an ID or a name. *suffix* is **bit**, with a default of **0**. **1** shows the **category_type** as a name, and **0** shows it as an ID.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Result Sets  
 When **@suffix** is **0**, **sp_help_category** returns the following result set:  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**category_id**|**int**|Category ID|  
|**category_type**|**tinyint**|Type of category:<br /><br /> **1** = Local<br /><br /> **2** = Multiserver<br /><br /> **3** = None|  
|**name**|**sysname**|Category name|  
  
 When **@suffix** is **1**, **sp_help_category** returns the following result set:  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**category_id**|**int**|Category ID|  
|**category_type**|**sysname**|Type of category. One of **LOCAL**, **MULTI-SERVER**, or **NONE**|  
|**name**|**sysname**|Category name|  
  
## Remarks  
 **sp_help_category** must be run from the **msdb** database.  
  
 If no parameters are specified, the result set provides information about all of the job categories.  
  
## Permissions  
 By default, members of the **sysadmin** fixed server role can execute this stored procedure. Other users must be granted one of the following [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Agent fixed database roles in the **msdb** database:  
  
-   **SQLAgentUserRole**  
  
-   **SQLAgentReaderRole**  
  
-   **SQLAgentOperatorRole**  
  
 For details about the permissions of these roles, see [SQL Server Agent Fixed Database Roles](../Topic/SQL%20Server%20Agent%20Fixed%20Database%20Roles.md).  
  
## Examples  
  
### A. Returning local job information  
 The following example returns information about jobs that are administered locally.  
  
```  
USE msdb ;  
GO  
  
EXEC dbo.sp_help_category  
    @type = N'LOCAL' ;  
GO  
```  
  
### B. Returning alert information  
 The following example returns information about the Replication alert category.  
  
```  
USE msdb ;  
GO  
  
EXEC dbo.sp_help_category  
    @class = N'ALERT',  
    @name = N'Replication' ;  
GO  
```  
  
## See Also  
 [sp_add_category &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-add-category-transact-sql.md)   
 [sp_delete_category &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-delete-category-transact-sql.md)   
 [sp_update_category &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-update-category-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  