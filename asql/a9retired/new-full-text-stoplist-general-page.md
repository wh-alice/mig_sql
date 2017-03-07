---
title: "New Full-Text Stoplist (General Page) | Microsoft Docs"
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
  - "sql13.swb.fulltextsearch.ftstoplist.general.f1"
ms.assetid: 97f8e82d-82ab-4525-91c9-1ee3ae217309
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# New Full-Text Stoplist (General Page)
  Use this dialog box to create a full-text stoplist. A *stoplist* is a set of commonly used words, called *stopwords*, that are omitted from full-text indexing for tables that use the stoplist. For more information, see [Configure and Manage Stopwords and Stoplists for Full-Text Search](../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md).  
  
 **To use SQL Server Management Studio to create a stoplist**  
  
-   [Configure and Manage Stopwords and Stoplists for Full-Text Search](../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md)  
  
## Options  
 **Full-text stoplist name**  
 Enter the name of the full-text stoplist.  
  
 **Owner**  
 Specify the owner of the full-text stoplist. If you want ownership to be assigned to yourself, that is, to the current user, leave this field empty.  
  
 To specify a different user, click the browse button.  
  
### Create stoplist options  
 Click one of the following create options:  
  
 **Create an empty stoplist**  
 The new stoplist will not contain any stopwords.  
  
 **Create from the system stoplist**  
 The new stoplist is created from the stoplist that exists by default in the [Resource database](../relational-databases/databases/resource-database.md).  
  
 **Create from an existing full-text stoplist**  
 The new stoplist is created by copying an existing stoplist.  
  
 **Source database**  
 Specifies the name of the database to which the existing stoplist belongs. The current database is selected by default. Optionally, select a different database from the list box.  
  
 **Source stoplist**  
 Specifies the name of an existing stoplist. From the list of available stoplists, select the one to use as the source. The available stoplists are listed in the order in which they appear in Object Explorer.  
  
 If any languages specified in the stop words of the source stoplist are not registered in the current database, CREATE FULLTEXT STOPLIST succeeds, but warning(s) are returned and the corresponding stop words are not added.  
  
## See Also  
 [ALTER FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../t-sql/statements/alter-fulltext-stoplist-transact-sql.md)   
 [CREATE FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../t-sql/statements/create-fulltext-stoplist-transact-sql.md)   
 [DROP FULLTEXT STOPLIST &#40;Transact-SQL&#41;](../t-sql/statements/drop-fulltext-stoplist-transact-sql.md)   
 [Configure and Manage Stopwords and Stoplists for Full-Text Search](../relational-databases/search/configure-and-manage-stopwords-and-stoplists-for-full-text-search.md)   
 [sys.fulltext_stoplists &#40;Transact-SQL&#41;](../relational-databases/reference/system-catalog-views/sys.fulltext-stoplists-transact-sql.md)  
  
  