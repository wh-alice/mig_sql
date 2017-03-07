---
title: "sp_helpreplicationoption (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
applies_to: 
  - "SQL Server"
f1_keywords: 
  - "sp_helpreplicationoption"
  - "sp_helpreplicationoption_TSQL"
helpviewer_keywords: 
  - "sp_helpreplicationoption"
ms.assetid: ef988dbc-dd0b-4132-80ab-81eebec1cffe
caps.latest.revision: 25
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_helpreplicationoption (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Shows the types of replication options enabled for a server. This stored procedure is executed at any server on any database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_helpreplicationoption [ [ @optname =] 'option_name' ]  
```  
  
## Arguments  
 [ **@optname =**] **'***option_name***'**  
 Is the name of the replication option to query for. *option_name* is **sysname**, with a default of NULL.  
  
|Value|Description|  
|-----------|-----------------|  
|**transactional**|A result set is returned when transactional replication is enabled.|  
|**merge**|A result set is returned when merge replication is enabled.|  
|NULL (default)|A result set is not returned.|  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**optname**|**sysname**|Name of the replication option and can be one of the following:<br /><br /> **transactional**<br /><br /> **merge**|  
|**value**|**bit**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**major_version**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**minor_version**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**revision**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
|**install_failures**|**int**|[!INCLUDE[ssInternalOnly](../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_helpreplicationoption** is used to get information about replication options enabled on a particular server. To get information on a particular database, use **sp_helpreplicationdboption**.  
  
## Permissions  
 Execute permissions default to the **public** role.  
  
## See Also  
 [System Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  