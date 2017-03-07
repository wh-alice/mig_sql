---
title: "Full-Text Search and Semantic Search Catalog Views (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "catalog views [SQL Server], full-text search"
  - "full-text search [SQL Server], catalog views"
  - "full-text indexes [SQL Server], catalog views"
ms.assetid: b08ad2fd-e3d8-458f-96f1-678217e0f419
caps.latest.revision: 18
ms.author: "douglasl"
manager: "jhubbard"
---
# Full-Text Search and Semantic Search Catalog Views (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../../a9retired/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  This section describes the catalog views that provide information about full-text indexes and semantic indexes.  
  
## Full-Text Search Catalog Views  
 [sys.fulltext_catalogs](../../../relational-databases/reference/system-catalog-views/sys.fulltext-catalogs-transact-sql.md)  
 Contains a row for each full-text catalog.  
  
 [sys.fulltext_document_types](../../../relational-databases/reference/system-catalog-views/sys.fulltext-document-types-transact-sql.md)  
 Returns a row for each document type that is available for full-text indexing operations. Each row represents the **IFilter** interface that is registered in the instance of SQL Server.  
  
 [sys.fulltext_index_catalog_usages](../../../relational-databases/reference/system-catalog-views/sys.fulltext-index-catalog-usages-transact-sql.md)  
 Returns a row for each full-text catalog to full-text index reference.  
  
 [sys.fulltext_index_columns](../../../relational-databases/reference/system-catalog-views/sys.fulltext-index-columns-transact-sql.md)  
 Contains a row for each column that is part of a full-text index.  
  
 [sys.fulltext_index_fragments](../../../relational-databases/reference/system-catalog-views/sys.fulltext-index-fragments-transact-sql.md)  
 Contains a row for each full-text index fragment in every table that contains a full-text index.  
  
 [sys.fulltext_indexes](../../../relational-databases/reference/system-catalog-views/sys.fulltext-indexes-transact-sql.md)  
 Contains a row per full-text index of a tabular object.  
  
 [sys.fulltext_languages](../../../relational-databases/reference/system-catalog-views/sys.fulltext-languages-transact-sql.md)  
 Contains one row per language whose word breakers are registered with SQL Server. Each row displays the LCID and name of the language.  
  
 [sys.fulltext_stoplists](../../../relational-databases/reference/system-catalog-views/sys.fulltext-stoplists-transact-sql.md)  
 Contains a row per full-text stoplist in the database.  
  
 [sys.fulltext_stopwords](../../../relational-databases/reference/system-catalog-views/sys.fulltext-stopwords-transact-sql.md)  
 Contains a row per stopword for all stoplists in the database.  
  
 [sys.fulltext_system_stopwords](../../../relational-databases/reference/system-catalog-views/sys.fulltext-system-stopwords-transact-sql.md)  
 Provides access to the system stoplist.  
  
 [sys.registered_search_properties &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.registered-search-properties-transact-sql.md)  
 Contains a row for each search property contained by any search property list on the current database.  
  
 [sys.registered_search_property_lists &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.registered-search-property-lists-transact-sql.md)  
 Contains a row for each search property list on the current database.  
  
## Semantic Search Catalog Views  
 [sys.fulltext_semantic_language_statistics_database &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.fulltext-semantic-language-statistics-database-transact-sql.md)  
 Returns a row about the semantic language statistics database installed on the current instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].  
  
 [sys.fulltext_semantic_languages &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/sys.fulltext-semantic-languages-transact-sql.md)  
 Returns a row for each language whose statistics model is registered with the instance of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)]. When a language model is registered, that language is enabled for semantic indexing.  
  
## See Also  
 [System Views &#40;Transact-SQL&#41;](../../../a9retired/system-views-transact-sql.md)   
 [Catalog Views &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-catalog-views/catalog-views-transact-sql.md)   
 [Full-Text Search and Semantic Search Dynamic Management Views and Functions &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-dynamic-management-views/199dbd5a-29f6-4ef0-8e65-86e32c0aaa3a.md)  
  
  