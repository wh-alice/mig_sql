---
title: "Configure and Manage Word Breakers and Stemmers for Search | Microsoft Docs"
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
  - "languages [full-text search]"
  - "full-text search [SQL Server], stemmers"
  - "linguistic analysis [full-text search]"
  - "full-text indexes [SQL Server], linguistic analysis"
  - "full-text search [SQL Server], word breakers"
  - "default full-text language option"
  - "stemmers [full-text search]"
  - "conjugating verbs [full-text search]"
  - "word breakers [full-text search]"
ms.assetid: d4bdd16b-a2db-4101-a946-583d1c674229
caps.latest.revision: 89
ms.author: "jhubbard"
manager: "jhubbard"
---
# Configure and Manage Word Breakers and Stemmers for Search
  Word breakers and stemmers perform linguistic analysis on all full-text indexed data. Linguistic analysis involves finding word boundaries (word-breaking) and conjugating verbs (stemming). Word breakers and stemmers are language specific, and the rules for linguistic analysis differ for different languages.
-   For a given language, a *word breaker* identifies individual words by determining where word boundaries exist based on the lexical rules of the language. Each word (also known as a *token*) is inserted into the full-text index using a compressed representation to reduce its size.
-   The *stemmer* generates inflectional forms of a particular word based on the rules of that language (for example, "running", "ran", and "runner" are various forms of the word "run").  
  
 Using language-specific word breakers enables the resulting terms to be more accurate for that language.
-   Where there is a word breaker for the language family, but not for the specific sub-language, the major language is used. For example, the French word breaker is used to handle text that is French Canadian.
-   If no word breaker is available for a particular language, the neutral word breaker is used. With the neutral word breaker, words are broken at neutral characters such as spaces and punctuation marks.

To use the word breakers and stemmers provided for all the languages supported by SQL Server, you typically don't have to take any action.
  
##  <a name="register"></a> View info about registered word breakers
For Full-Text Search to use the word breakers for a language, they must be registered. For registered word breakers, associated linguistic resources - stemmers, noise words (stopwords), and thesaurus files - also become available to full-text indexing and querying operations.

### See the list of registered word breakers
To see the list of languages supported by [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Full-Text Search, use the following [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement. The presence of a language in this list indicates that word breakers are registered for the language. 
  
```tsql
SELECT * FROM sys.fulltext_languages
```

To see a list of the word breaker components, use the following statement.

```tsql
EXEC sp_help_fulltext_system_components 'wordbreaker';  
GO  
```

For additional options and more info, see [sp_help_fulltext_system_components &#40;Transact-SQL&#41;](../../relational-databases/reference/system-stored-procedures/sp-help-fulltext-system-components-transact-sql.md).
 
## If you add or remove a word breaker  
If you add, remove, or alter a word breaker, you need to refresh the list of Microsoft Windows locale identifiers (LCIDs) that are supported for full-text indexing and querying. For more information, see [View or Change Registered Filters and Word Breakers](../../relational-databases/search/view-or-change-registered-filters-and-word-breakers.md).  
  
##  <a name="default"></a> Set the default full-text language option  
 For a localized version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Setup sets the **default full-text language** option to the language of the server if an appropriate match exists. For a non-localized version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], the **default full-text language** option is English.  
  
 When you create or alter a full-text index, you can specify a different language for each full-text indexed column. If no language is specified for a column, the default is the value of the configuration option **default full-text language**.  
  
> [!NOTE]  
>  All columns listed in a single full-text query function clause must use the same language, unless the LANGUAGE option is specified in the query. The language used for the full-text indexed column being queried determines the linguistic analysis performed on arguments of the full-text query predicates ([CONTAINS](../../t-sql/queries/contains-transact-sql.md) and [FREETEXT](../../t-sql/queries/freetext-transact-sql.md)) and functions ([CONTAINSTABLE](../../relational-databases/reference/system-functions/containstable-transact-sql.md) and [FREETEXTTABLE](../../relational-databases/reference/system-functions/freetexttable-transact-sql.md)).  
  
##  <a name="lang"></a> Choose the language for an indexed column  
 When creating a full-text index, we recommend that you specify a language for each indexed column. If a language is not specified for a column, the system default language is used. The language of a column determines which word breaker and stemmer are used for indexing that column. Also, the thesaurus file of that language will be used by full-text queries on the column.  
  
 There are a couple of things to consider when choosing the column language for creating a full-text index. These considerations relate to how your text is tokenized and then indexed by Full-Text Engine. For more information, see [Choose a Language When Creating a Full-Text Index](../../relational-databases/search/choose-a-language-when-creating-a-full-text-index.md).  
  
To view the word breaker language of specific columns, run the following statement.
   
```tsql 
SELECT 'language_id' AS "LCID" FROM sys.fulltext_index_columns;
```  

For additional options and more info, see [sys.fulltext_index_columns &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.fulltext-index-columns-transact-sql.md).

##  <a name="tshoot"></a> Troubleshoot word-breaking time-out errors  
 A word-breaking time-out error might occur in a variety of situations. For information about these situations and how to respond in each situation, see [MSSQLSERVER_30053](../Topic/MSSQLSERVER_30053.md).  
  
##  <a name="impact"></a> Understand the impact of updated word breakers  
 Each version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] typically includes new word breakers that have better linguistic rules and are more accurate than earlier word breakers. Potentially, the new word breakers might behave slightly differently from the word breakers in full-text indexes that were imported from previous versions of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)].
 
This is significant if a full-text catalog was imported when a database was upgraded to the current version of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. One or more languages used by the full-text indexes in the full-text catalog might now be associated with new word breakers. For more information, see [Upgrade Full-Text Search](../../relational-databases/search/upgrade-full-text-search.md).  
  

## See Also  
 [CREATE FULLTEXT INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/create-fulltext-index-transact-sql.md)    
 [ALTER FULLTEXT INDEX &#40;Transact-SQL&#41;](../../t-sql/statements/alter-fulltext-index-transact-sql.md)   
 [Configure and Manage Stopwords and Stoplists for Full-Text Search](../../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md)   
 
  