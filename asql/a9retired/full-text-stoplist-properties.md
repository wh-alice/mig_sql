---
title: "Full-Text Stoplist Properties | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "dbe-search"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "sql13.swb.fulltextsearch.ftstoplistproperties.general.f1"
  - "sql13.swb.fulltextsearch.ftstoplistproperties.schedule.f1"
ms.assetid: 2e907f5b-0cf9-484a-afcf-a4e7f1e2f87f
caps.latest.revision: 20
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Full-Text Stoplist Properties
  Use this dialog box to add or delete individual stopwords, delete all stopwords for a specific language, or clear the current stoplist. A stopword is a commonly used word that is included in a stoplist. The stopwords in a stoplist are omitted from full-text indexing for tables that use the stoplist. For more information, see [Configure and Manage Stopwords and Stoplists for Full-Text Search](../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md).  
  
 **To use SQL Server Management Studio to change stoplist properties**  
  
-   [Configure and Manage Stopwords and Stoplists for Full-Text Search](../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md)  
  
## Options  
 **Action**  
 Specifies the action that you want to perform.  
  
 **Add stopword**  
 Add a commonly used word to the stoplist.  
  
 **Delete stopword**  
 Delete a stopword from the stoplist.  
  
 **Delete all stopwords**  
 Delete all the stopwords for a specific language.  
  
 **Clear stoplist**  
 Clear the stoplist by deleting all the stopwords for all languages.  
  
 **Stopword**  
 If you selected **Add stopword** or **Delete stopword**, enter the stopword in the **Stopword** field. A new stopword must be unique; that is, not yet in this stoplist for the language that you select.  
  
 **Full-text language**  
 If you selected **Add stopword**, **Delete stopword**, or **Delete all stopwords**, select the language of the stopword or stopwords from the list box. This lists all the full-text languages that are supported by the server instance.  
  
## See Also  
 [sys.fulltext_stopwords &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.fulltext-stopwords-transact-sql.md)   
 [sys.fulltext_stoplists &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.fulltext-stoplists-transact-sql.md)   
 [Configure and Manage Stopwords and Stoplists for Full-Text Search](../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md)   
 [ALTER FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../t-sql/statements/alter-fulltext-stoplist-transact-sql.md)   
 [CREATE FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../t-sql/statements/create-fulltext-stoplist-transact-sql.md)   
 [DROP FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../t-sql/statements/drop-fulltext-stoplist-transact-sql.md)  
  
  