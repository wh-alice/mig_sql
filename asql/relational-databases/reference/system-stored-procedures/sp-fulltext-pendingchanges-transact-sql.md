---
title: "sp_fulltext_pendingchanges (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "sp_fulltext_pendingchanges_TSQL"
  - "sp_fulltext_pendingchanges"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_fulltext_pendingchanges"
ms.assetid: fee042fe-4781-4a33-a01b-d98fb5629f1b
caps.latest.revision: 15
ms.author: "douglasl"
manager: "jhubbard"
---
# sp_fulltext_pendingchanges (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Returns unprocessed changes, such as pending inserts, updates, and deletes, for a specified table that is using change tracking.  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_fulltext_pendingchanges table_id  
```  
  
## Arguments  
 *table_id*  
 ID of the table. If the table is not full-text indexed, or change tracking is not enabled on the table, an error is returned.  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**Key**|*|Is the full-text key value from the specified table.|  
|**DocId**|**bigint**|Is an internal document identifier (DocId) column that corresponds to the key value.|  
|**Status**|**int**|0 = Row will be removed from the full-text index.<br /><br /> 1 = Row will be full-text indexed.<br /><br /> 2 = Row is up-to-date.<br /><br /> -1 = Row is in a transitional (batched, but not committed) state or an error state.|  
|**DocState**|**tinyint**|Is a raw dump of the internal document identifier (DocId) map status column.|  
  
 <sup>* The data type for Key is same as the data type of the full-text key column in the base table.</sup>  
  
## Permissions  
 Requires membership in the **sysadmin** fixed server role.  
  
## Remarks  
 If there are no changes to process, an empty rowset is returned.  
  
 Full-Text Search queries do not return rows with a **Status** value of 0. This is because the row has been deleted from base table and is waiting to be deleted from the full-text index.  
  
 To find out how many changes are pending for a particular table, use the **TableFullTextPendingChanges** property of the OBJECTPROPERTYEX function.  
  
## See Also  
 [Full-Text Search and Semantic Search Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/full-text-search-and-semantic-search-stored-procedures-transact-sql.md)   
 [OBJECTPROPERTYEX &#40;Transact-SQL&#41;](../../../t-sql/functions/objectpropertyex-transact-sql.md)  
  
  