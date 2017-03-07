---
title: "sys.identity_columns (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "identity_columns"
  - "sys.identity_columns"
  - "sys.identity_columns_TSQL"
  - "identity_columns_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sys.identity_columns catalog view"
ms.assetid: 97ee01e6-9c9e-4fd9-884b-68b4084669d5
caps.latest.revision: 44
ms.author: "rickbyh"
manager: "jhubbard"
---
# sys.identity_columns (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-all_md](../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-all-md.md)]

  Contains a row for each column that is an identity column.  
  
 The **sys.identity_columns** view inherits rows from the **sys.columns** view. The **sys.identity_columns** view returns the columns in the **sys.columns** view, plus the **seed_value**, **increment_value**, **last_value**, and **is_not_for_replication** columns. For more information, see [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md).  
  
|Column name|Data type|Description|  
|-----------------|---------------|-----------------|  
|**\<columns inherited from sys.columns>**||The **sys.identity_columns** view returns all columns in the **sys.columns** view. It also returns the additional columns described below. For a description of the columns that the **sys.identity_columns** view inherits from **sys.columns**, see [sys.columns &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/sys.columns-transact-sql.md).|  
|**seed_value**|**sql_variant**|Seed value for this identity column. The data type of the seed value is the same as the data type of the column itself.|  
|**increment_value**|**sql_variant**|Increment value for this identity column. The data type of the seed value is the same as the data type of the column itself.|  
|**last_value**|**sql_variant**|Last value generated for this identity column. The data type of the seed value is the same as the data type of the column itself.|  
|**is_not_for_replication**|**bit**|Identity column is declared NOT FOR REPLICATION.|  
  
> [!NOTE]  
>  To create an automatically incrementing number that can be used in multiple tables or that can be called from applications without referencing any table, see [Sequence Numbers](../../relational-databases/sequence-numbers/sequence-numbers.md).  
  
## Permissions  
 [!INCLUDE[ssCatViewPerm](../../relational-databases/system-catalog-views/includes/sscatviewperm-md.md)] For more information, see [Metadata Visibility Configuration](../../relational-databases/security/metadata-visibility-configuration.md).  
  
## See Also  
 [Object Catalog Views &#40;Transact-SQL&#41;](../../relational-databases/system-catalog-views/object-catalog-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../Topic/Catalog%20Views%20\(Transact-SQL\).md)   
 [Querying the SQL Server System Catalog FAQ](../../relational-databases/system-catalog-views/querying-the-sql-server-system-catalog-faq.md)  
  
  