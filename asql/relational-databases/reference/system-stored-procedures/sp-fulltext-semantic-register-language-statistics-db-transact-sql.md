---
title: "sp_fulltext_semantic_register_language_statistics_db (Transact-SQL) | Microsoft Docs"
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
  - "sp_fulltext_semantic_register_language_statistics_db"
  - "sp_fulltext_semantic_register_language_statistics_db_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_fulltext_semantic_register_language_statistics_db"
ms.assetid: bef1b104-5a44-4327-9ae4-45eae3000f7e
caps.latest.revision: 12
ms.author: "douglasl"
manager: "jhubbard"
---
# sp_fulltext_semantic_register_language_statistics_db (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../database-engine/configure/windows/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Registers a pre-populated Semantic Language Statistics database in the current instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 You can initiate semantic extraction only after you have attached this language statistics database and registered it by using this stored procedure. You only need to perform this task once for each instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../analysis-services/data-mining/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```tsql  
EXEC sp_fulltext_semantic_register_language_statistics_db  
    [ @dbname = ] ‘database_name’;  
GO  
```  
  
##  <a name="Arguments"></a> Arguments  
 [ @dbname = ] ‘*database_name*’  
 Is the name of the Semantic Language Statistics database to be registered for the current instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. The database must already be attached. *database_name* is **sysname**, and may not be NULL.  
  
## Return Code Value  
 **0** (success) or **1** (failure)  
  
## Result Set  
 None.  
  
## General Remarks  
 The Semantic Language Statistics database contains language-related statistics that are required for semantic processing of textual content.  
  
 **sp_fulltext_semantic_register_language_statistics_db** performs the following steps:  
  
1.  Checks that the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] is a version that supports semantic processing.  
  
2.  Checks that the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not already have a Semantic Language Statistics database defined.  
  
3.  Checks that the database is a valid Semantic Language Statistics database.  
  
4.  Sets permissions on the Semantic Language Statistics database to restrict access to the database by users.  
  
5.  Inserts the metadata that defines the name of the Semantic Language Statistics database for the instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
6.  Inserts the metadata that defines the mappings between the installed Semantic Language Statistics database and the internal Language Model tables.  
  
7.  Checks to ensure that the database is ready to be used.  
  
 For more information, see [Install and Configure Semantic Search](../../../relational-databases/search/install-and-configure-semantic-search.md).  
  
## Metadata  
 For information about the Semantic Language Statistics database installed on an instance of [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)], query the catalog view [sys.fulltext_semantic_language_statistics_database &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.fulltext-semantic-language-statistics-database-transact-sql.md).  
  
## Security  
  
### Permissions  
 Requires CONTROL SERVER permissions.  
  
## Examples  
 The following example shows how to register the Semantic Language Statistics database by calling **sp_fulltext_semantic_register_language_statistics_db**.  
  
```tsql  
EXEC sp_fulltext_semantic_register_language_statistics_db @dbname = 'semanticsDb';  
GO  
```  
  
## See Also  
 [Install and Configure Semantic Search](../../../relational-databases/search/install-and-configure-semantic-search.md)  
  
  