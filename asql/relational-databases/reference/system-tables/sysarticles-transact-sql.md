---
title: "sysarticles (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
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
  - "sysarticles"
  - "sysarticles_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sysarticles system table"
ms.assetid: 9d9d5d51-6d8f-4e42-84a9-82e58eb0301e
caps.latest.revision: 30
ms.author: "rickbyh"
manager: "jhubbard"
---
# sysarticles (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Contains a row for each article defined in the local database. This table is stored in the published database.  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**artid**|**int**|The identity column that provides a unique ID number for the article.|  
|**creation_script**|**nvarchar(255)**|The schema script for the article.|  
|**del_cmd**|**nvarchar(255)**|The replication command type used when replicating deletes with table articles. For more information, see [Specify How Changes Are Propagated for Transactional Articles](../../../relational-databases/replication/transactional/transactional-articles-specify-how-changes-are-propagated.md).|  
|**description**|**nvarchar(255)**|The descriptive entry for the article.|  
|**dest_table**|**sysname**|The name of the destination table.|  
|**filter**|**int**|The stored procedure ID, used for horizontal partitioning.|  
|**filter_clause**|**ntext**|The WHERE clause of the article, used for horizontal filtering.|  
|**ins_cmd**|**nvarchar(255)**|The replication command type used when replicating inserts with table articles. For more information, see [Specify How Changes Are Propagated for Transactional Articles](../../../relational-databases/replication/transactional/transactional-articles-specify-how-changes-are-propagated.md).|  
|**name**|**sysname**|The name associated with the article, unique within the publication.|  
|**objid**|**int**|The published table object ID.|  
|**pubid**|**int**|The ID of the publication to which the article belongs.|  
|**pre_creation_cmd**|**tinyint**|The pre-creation command for DROP TABLE, DELETE TABLE, or TRUNCATE:<br /><br /> **0** = None.<br /><br /> **1** = DROP.<br /><br /> **2** = DELETE.<br /><br /> **3** = TRUNCATE.|  
|**status**|**tinyint**|The bitmask of the article options and status, which can be the bitwise logical OR result of one or more of these values:<br /><br /> **1** = Article is active.<br /><br /> **8** = Include the column name in INSERT statements.<br /><br /> **16** = Use parameterized statements.<br /><br /> **24** = Both include the column name in INSERT statements and use parameterized statements.<br /><br /> **64** = [!INCLUDE[ssInternalOnly](../../../integration-services/data-flow/transformations/includes/ssinternalonly-md.md)]<br /><br /> For example, an active article using parameterized statements would have a value of **17** in this column. A value of **0** means that the article is inactive and no additional properties are defined.|  
|**sync_objid**|**int**|The ID of the table or view that represents the article definition.|  
|**type**|**tinyint**|The type of article:<br /><br /> **1** = Log-based article.<br /><br /> **3** = Log-based article with manual filter.<br /><br /> **5** = Log-based article with manual view.<br /><br /> **7** = Log-based article with manual filter and manual view.<br /><br /> **8** = Stored procedure execution.<br /><br /> **24** = Serializable stored procedure execution.<br /><br /> **32** = Stored procedure (schema only).<br /><br /> **64** = View (schema only).<br /><br /> **128** = Function (schema only).|  
|**upd_cmd**|**nvarchar(255)**|The replication command type used when replicating updates with table articles. For more information, see [Specify How Changes Are Propagated for Transactional Articles](../../../relational-databases/replication/transactional/transactional-articles-specify-how-changes-are-propagated.md).|  
|**schema_option**|**binary(8)**|A bitmask of the schema generation options for the article, which control what parts of the article schema are scripted out for delivery to the Subscriber. For more information about schema options, see [sp_addarticle &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addarticle-transact-sql.md).|  
|**dest_owner**|**sysname**|The owner of the table at the destination database.|  
|**ins_scripting_proc**|**int**|The registered custom stored procedure or script that is executed when an INSERT statement is replicated.|  
|**del_scripting_proc**|**int**|The registered custom stored procedure or script that is executed when a DELETE statement is replicated.|  
|**upd_scripting_proc**|**int**|The registered custom stored procedure or script that is executed when an UPDATE statement is replicated.|  
|**custom_script**|**nvarchar(2048)**|The registered custom stored procedure or script that is executed at the end of the DDL trigger.|  
|**fire_triggers_on_snapshot**|**bit**|Indicates whether or not replicated triggers are executed when the snapshot is applied, which can be one of these values:<br /><br /> **0** = Triggers are not executed.<br /><br /> **1** = Triggers are executed.|  
  
## See Also  
 [Replication Tables &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-tables/replication-tables-transact-sql.md)   
 [Replication Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-views/replication-views-transact-sql.md)   
 [sp_addarticle &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addarticle-transact-sql.md)   
 [sp_changearticle &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-changearticle-transact-sql.md)   
 [sp_helparticle &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-helparticle-transact-sql.md)  
  
  