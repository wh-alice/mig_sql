---
title: "sp_changedistributor_property (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "sp_changedistributor_property_TSQL"
  - "sp_changedistributor_property"
helpviewer_keywords: 
  - "sp_changedistributor_property"
ms.assetid: 04f503a1-307c-4de0-bac6-e6e97d5b6940
caps.latest.revision: 17
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_changedistributor_property (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Changes the properties of the Distributor. This stored procedure is executed at the Distributor on any database.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
sp_changedistributor_property [ [ @property= ] 'property' ]  
    [ , [ @value= ] 'value' ]  
```  
  
## Arguments  
 [ **@property=**]  **'***property***'**  
 Is the property for a given Distributor. *property* is **sysname**, and can be one of these values.  
  
|Value|Description|  
|-----------|-----------------|  
|**heartbeat_interval**|Maximum number of minutes that an agent can run without logging a progress message.|  
|NULL (default)|All available *property* values are printed.|  
  
 [ **@value=**]  **'***value***'**  
 Is the value for the given Distributor property. *value* is **varchar(255)**, with a default of NULL.  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_changedistributor_property** is used in all types of replication.  
  
## Example  
 [!code-sql[HowTo#sp_changedistributor_property](../../relational-databases/replication/codesnippet/tsql/sp-changedistributor-pro_1.sql)]  
  
## Permissions  
 Only members of the **sysadmin** fixed server role can execute **sp_changedistributor_property**.  
  
## See Also  
 [View and Modify Distributor and Publisher Properties](../../relational-databases/replication/view-and-modify-distributor-and-publisher-properties.md)   
 [sp_adddistributor &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-adddistributor-transact-sql.md)   
 [sp_dropdistributor &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-dropdistributor-transact-sql.md)   
 [sp_helpdistributor &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/sp-helpdistributor-transact-sql.md)   
 [Replication Stored Procedures &#40;Transact-SQL&#41;](../../relational-databases/system-stored-procedures/replication-stored-procedures-transact-sql.md)  
  
  