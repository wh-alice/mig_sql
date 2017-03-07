---
title: "sp_fulltext_semantic_unregister_language_statistics_db (Transact-SQL) | Microsoft Docs"
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
  - "sp_fulltext_semantic_unregister_language_statistics_db_TSQL"
  - "sp_fulltext_semantic_unregister_language_statistics_db"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "sp_fulltext_semantic_unregister_language_statistics_db"
ms.assetid: 1426ca4a-9a76-489e-98da-8f6d13ff9732
caps.latest.revision: 11
ms.author: "douglasl"
manager: "jhubbard"
---
# sp_fulltext_semantic_unregister_language_statistics_db (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Unregisters an existing Semantic Language Statistics database from the current instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] and deletes any associated metadata.  
  
 This statement does not detach the database or remove the physical database file from the file system. After you unregister the database, you can detach it and delete the physical database file.  
  
||  
|-|  
|**Applies to**: [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] ([!INCLUDE[ssKatmai](../../../a9notintoc/includes/sskatmai-md.md)] through [current version](http://go.microsoft.com/fwlink/p/?LinkId=299658)).|  
  
 ![Topic link icon](../../../a9notintoc/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```tsql  
EXEC sp_fulltext_semantic_unregister_language_statistics_db;  
GO  
```  
  
##  <a name="Arguments"></a> Arguments  
 This procedure does not require any arguments. Since an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] only has one semantic language statistics database, it is not necessary to identify the database.  
  
## Return Code Value  
 **0** (success) or **1** (failure)  
  
## Result Set  
 None.  
  
## General Remarks  
 When a Semantic Language Statistics database is unregistered, all the metadata associated with it is also removed.  
  
 **sp_fulltext_semantic_unregister_language_statistics_db** performs the following steps:  
  
1.  Checks that there are no semantic populations in progress for the current instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
2.  Removes all metadata associated with the specified Semantic Language Statistics database.  
  
 For more information, see [Install and Configure Semantic Search](../../../relational-databases/search/install-and-configure-semantic-search.md).  
  
## Metadata  
 For information about the Semantic Language Statistics database installed on an instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)], query the catalog view [sys.fulltext_semantic_language_statistics_database &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.fulltext-semantic-language-statistics-database-transact-sql.md).  
  
## Security  
  
### Permissions  
 Requires CONTROL SERVER permissions.  
  
## Examples  
 The following example shows how to unregister the Semantic Language Statistics database by calling **sp_fulltext_semantic_unregister_language_statistics_db**.  
  
```tsql  
EXEC sp_fulltext_semantic_unregister_language_statistics_db;  
GO  
```  
  
## See Also  
 [Install and Configure Semantic Search](../../../relational-databases/search/install-and-configure-semantic-search.md)  
  
  