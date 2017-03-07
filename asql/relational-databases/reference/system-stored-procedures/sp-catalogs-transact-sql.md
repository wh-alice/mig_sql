---
title: "sp_catalogs (Transact-SQL) | Microsoft Docs"
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
  - "sp_catalogs_TSQL"
  - "sp_catalogs"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_catalogs"
ms.assetid: ebb29ee2-be65-4e09-9c53-e3c6d12633e1
caps.latest.revision: 18
ms.author: "rickbyh"
manager: "jhubbard"
---
# sp_catalogs (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns the list of catalogs in the specified linked server. This is equivalent to databases in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```  
  
sp_catalogs [ @server_name = ] 'linked_svr'  
```  
  
## Arguments  
 [ **@server_name =**] **'***linked_svr***'**  
 Is the name of a linked server. *linked_svr* is **sysname**, with no default.  
  
## Result Sets  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**Catalog_name**|**nvarchar(**128**)**|Name of the catalog|  
|**Description**|**nvarchar(**4000**)**|Description of the catalog|  
  
## Permissions  
 Requires SELECT permission on the schema.  
  
## Examples  
 The following example returns catalog information for the linked server named `OLE DB ODBC Linked Server #3`.  
  
> [!NOTE]  
>  For **sp_catalogs** to provide useful information, the `OLE DB ODBC Linked Server #3` must already exist.  
  
```  
USE master;  
GO  
EXEC sp_catalogs 'OLE DB ODBC Linked Server #3';  
```  
  
## See Also  
 [sp_addlinkedserver &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addlinkedserver-transact-sql.md)   
 [sp_columns_ex &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-columns-ex-transact-sql.md)   
 [sp_column_privileges &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-column-privileges-transact-sql.md)   
 [sp_foreignkeys &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-foreignkeys-transact-sql.md)   
 [sp_indexes &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-indexes-transact-sql.md)   
 [sp_linkedservers &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-linkedservers-transact-sql.md)   
 [sp_primarykeys &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-primarykeys-transact-sql.md)   
 [sp_tables_ex &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-tables-ex-transact-sql.md)   
 [sp_table_privileges &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-table-privileges-transact-sql.md)   
 [System Stored Procedures &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/system-stored-procedures-transact-sql.md)  
  
  