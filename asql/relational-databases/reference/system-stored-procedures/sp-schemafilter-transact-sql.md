---
title: "sp_schemafilter (Transact-SQL) | Microsoft Docs"
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
  - "sp_schemafilter_TSQL"
  - "sp_schemafilter"
helpviewer_keywords: 
  - "sp_schemafilter"
ms.assetid: 199e869b-2cd2-44ee-b2ee-69edb06a1bc4
caps.latest.revision: 24
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_schemafilter (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Modifies and displays information on the schema that is excluded when listing Oracle tables eligible for publishing.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_schemafilter [ @publisher = ] 'publisher'   
   [ , [ @schema = ] 'schema' ]   
   [ , [ @operation = ] 'operation' ]   
```  
  
## Arguments  
 [**@publisher** = ] **'***publisher***'**  
 Is the name of the non-[!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Publisher. *publisher* is **sysname**, with no default.  
  
 [**@schema** = ] **'***schema***'**  
 Is the name of the schema. *schema* is **sysname**, with a default value of NULL.  
  
 [**@operation** = ] **'***operation***'**  
 Is the action to be taken on this schema. *operation* is **nvarchar(4)**, and can be one of the following values.  
  
|Value|Description|  
|-----------|-----------------|  
|**add**|Adds the specified schema to the list of schema that are not eligible for publication.|  
|**drop**|Drops the specified schema from the list of schema that are not eligible for publication.|  
|**help**|Returns the list of schema that are not eligible for publication.|  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**schemaname**|**sysname**|Is the name of the schema not eligible for publication.|  
  
## Return Code Values  
 **0** (success) or **1** (failure)  
  
## Remarks  
 **sp_schemafilter** should only be used for heterogeneous publishers.  
  
## Permissions  
 Only members of the **sysadmin** fixed server role at the Distributor can execute **sp_schemafilter**.  
  
## See Also  
 [Replication Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/replication-stored-procedures-transact-sql.md)  
  
  