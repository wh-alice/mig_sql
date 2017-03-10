---
title: "Semantic Search DDL, Functions, Stored Procedures, and Views | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-search"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "semantic search [SQL Server], database objects"
ms.assetid: 182f395f-3168-48a4-b723-ef4403544f9f
caps.latest.revision: 14
ms.author: "douglasl"
manager: "jhubbard"
---
# Semantic Search DDL, Functions, Stored Procedures, and Views
  Lists the Transact-SQL statements and the database objects that support statistical semantic search in [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].  
  
 For the list of statements and database objects that support full-text search, see [Full-Text Search DDL, Functions, Stored Procedures, and Views](../../relational-databases/search/full-text-search-ddl-functions-stored-procedures-and-views.md).  
  
##  <a name="ddl"></a> Data Definition Language (DDL) Statements  
  
|Object|More Information|  
|------------|----------------------|  
|[ALTER FULLTEXT INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/alter-fulltext-index-transact-sql.md)|[Enable Semantic Search on Tables and Columns](../../relational-databases/search/enable-semantic-search-on-tables-and-columns.md)|  
|[CREATE FULLTEXT INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-fulltext-index-transact-sql.md)|[Enable Semantic Search on Tables and Columns](../../relational-databases/search/enable-semantic-search-on-tables-and-columns.md)|  
  
##  <a name="func"></a> System Functions  
  
|Object|More Information|  
|------------|----------------------|  
|[semantickeyphrasetable &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/semantickeyphrasetable-transact-sql.md)|[Find Key Phrases in Documents with Semantic Search](../../relational-databases/search/find-key-phrases-in-documents-with-semantic-search.md)|  
|[semanticsimilaritydetailstable &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/semanticsimilaritydetailstable-transact-sql.md)|[Find Similar and Related Documents with Semantic Search](../../relational-databases/search/find-similar-and-related-documents-with-semantic-search.md)|  
|[semanticsimilaritytable &#40;Transact-SQL&#41;](../../relational-databases/reference/system-functions/semanticsimilaritytable-transact-sql.md)|[Find Similar and Related Documents with Semantic Search](../../relational-databases/search/find-similar-and-related-documents-with-semantic-search.md)|  
  
##  <a name="meta"></a> System Metadata Functions  
  
|Object|More Information|  
|------------|----------------------|  
|[COLUMNPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/columnproperty-transact-sql.md)|[Enable Semantic Search on Tables and Columns](../../relational-databases/search/enable-semantic-search-on-tables-and-columns.md)|  
|[DATABASEPROPERTYEX &#40;Transact-SQL&#41;](../../t-sql/functions/databasepropertyex-transact-sql.md)|[Enable Semantic Search on Tables and Columns](../../relational-databases/search/enable-semantic-search-on-tables-and-columns.md)|  
|[FULLTEXTCATALOGPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/fulltextcatalogproperty-transact-sql.md)|[Manage and Monitor Semantic Search](../../relational-databases/search/manage-and-monitor-semantic-search.md)|  
|[INDEXPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/indexproperty-transact-sql.md)|[Manage and Monitor Semantic Search](../../relational-databases/search/manage-and-monitor-semantic-search.md)|  
|[OBJECTPROPERTYEX &#40;Transact-SQL&#41;](../../t-sql/functions/objectpropertyex-transact-sql.md)|[Enable Semantic Search on Tables and Columns](../../relational-databases/search/enable-semantic-search-on-tables-and-columns.md)|  
|[SERVERPROPERTY &#40;Transact-SQL&#41;](../../t-sql/functions/serverproperty-transact-sql.md)|[Install and Configure Semantic Search](../../relational-databases/search/install-and-configure-semantic-search.md)|  
  
##  <a name="sproc"></a> System Stored Procedures  
  
|Object|More Information|  
|------------|----------------------|  
|[sp_fulltext_semantic_register_language_statistics_db &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-fulltext-semantic-register-language-statistics-db-transact-sql.md)|[Install and Configure Semantic Search](../../relational-databases/search/install-and-configure-semantic-search.md)|  
|[sp_fulltext_semantic_unregister_language_statistics_db &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-fulltext-semantic-unregister-language-statistics-db-transact-sql.md)|[Install and Configure Semantic Search](../../relational-databases/search/install-and-configure-semantic-search.md)|  
  
##  <a name="cv"></a> Catalog Views  
  
|Object|More Information|  
|------------|----------------------|  
|[sys.fulltext_index_columns &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.fulltext-index-columns-transact-sql.md)|[Manage and Monitor Semantic Search](../../relational-databases/search/manage-and-monitor-semantic-search.md)|  
|[sys.fulltext_semantic_language_statistics_database &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.fulltext-semantic-language-statistics-database-transact-sql.md)|[Install and Configure Semantic Search](../../relational-databases/search/install-and-configure-semantic-search.md)|  
|[sys.fulltext_semantic_languages &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.fulltext-semantic-languages-transact-sql.md)|[Install and Configure Semantic Search](../../relational-databases/search/install-and-configure-semantic-search.md)|  
  
##  <a name="dmv"></a> Dynamic Management Views  
  
|Object|More Information|  
|------------|----------------------|  
|[sys.dm_db_fts_index_physical_stats &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-db-fts-index-physical-stats-transact-sql.md)|[Manage and Monitor Semantic Search](../../relational-databases/search/manage-and-monitor-semantic-search.md)|  
|[sys.dm_fts_index_population &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-fts-index-population-transact-sql.md)|[Manage and Monitor Semantic Search](../../relational-databases/search/manage-and-monitor-semantic-search.md)|  
|[sys.dm_fts_semantic_similarity_population &#40;Transact-SQL&#41;](../../relational-databases/reference/system-dynamic-management-views/sys.dm-fts-semantic-similarity-population-transact-sql.md)|[Manage and Monitor Semantic Search](../../relational-databases/search/manage-and-monitor-semantic-search.md)|  
  
## See Also  
 [Manage and Monitor Semantic Search](../../relational-databases/search/manage-and-monitor-semantic-search.md)  
  
  