---
title: "Behavior Changes to Full-Text Search | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "full-text search [SQL Server], breaking changes"
  - "behavior changes [full-text search]"
  - "full-text indexes [SQL Server], breaking changes"
ms.assetid: 573444e8-51bc-4f3d-9813-0037d2e13b8f
caps.latest.revision: 41
ms.author: "douglasl"
manager: "jhubbard"
robots: noindex,nofollow
---
# Behavior Changes to Full-Text Search
  This topic describes behavior changes in full-text search. Behavior changes affect how features work or interact in [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] as compared to earlier versions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)].  
  
## Behavior Changes in Full-Text Search in [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)]  
None. 
  
## Behavior Changes in Full-Text Search in [!INCLUDE[ssSQL14](../a9notintoc/includes/sssql14-md.md)]  
 None.  
  
## Behavior Changes in Full-Text Search in [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)]  
 [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)] installs a new version of the word breakers and stemmers for US English (LCID 1033) and UK English (LCID 2057). However you can switch to the previous version of these components if you want to retain the previous behavior. For more information, see [Change the Word Breaker Used for US English and UK English](../relational-databases/search/change-the-word-breaker-used-for-us-english-and-uk-english.md).  
  
### New Word Breakers and Stemmers Installed  
 [!INCLUDE[ssSQL11](../a9notintoc/includes/sssql11-md.md)] updates all the word breakers and stemmers used by Full-Text Search and Semantic Search. For consistency between the contents of indexes and the results of queries, we recommend that you repopulate existing full-text indexes.  
  
1.  There are new word breakers for English. If you have to retain the previous behavior, see [Change the Word Breaker Used for US English and UK English](../relational-databases/search/change-the-word-breaker-used-for-us-english-and-uk-english.md).  
  
2.  The third-party word breakers for Danish, Polish, and Turkish that were included with previous releases of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] have been replaced with [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] components. The new components are enabled by default.  
  
3.  There are new word breakers for Czech and Greek. Previous releases of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] Full-Text Search did not include support for these two languages.  
  
### Behavior Changes of New Word Breakers and Stemmers  
 The new components might return different results than the older components when you populate and query full-text indexes. The following tables demonstrate some of the differences that can be expected in English results.  
  
 If you have to retain the previous behavior of the word breakers and stemmers, see the following topics:  
  
-   [Change the Word Breaker Used for US English and UK English](../relational-databases/search/change-the-word-breaker-used-for-us-english-and-uk-english.md)  
  
-   [Revert the Word Breakers Used by Search to the Previous Version](../relational-databases/search/revert-the-word-breakers-used-by-search-to-the-previous-version.md)  
  
 In some cases, the new components return *more* results:  
  
|**Term**|**Results with previous word breaker and stemmer**|**Results with new word breaker and stemmer**|  
|--------------|--------------------------------------------------------|---------------------------------------------------|  
|cat-dog|cat<br /><br /> dog|cat<br /><br /> cat-dog<br /><br /> dog|  
|cat@dog.com|cat<br /><br /> com<br /><br /> dog|cat<br /><br /> cat@dog.com<br /><br /> com<br /><br /> dog|  
|12/11/2011<br /><br /> *(where the term is a date)*|12/11/2011<br /><br /> dd20111211|11<br /><br /> 12<br /><br /> 12/11/2011<br /><br /> 2011<br /><br /> dd20111211|  
  
 In some cases, the new components return *similar* results:  
  
|**Term**|**Results with previous word breaker and stemmer**|**Results with new word breaker and stemmer**|  
|--------------|--------------------------------------------------------|---------------------------------------------------|  
|100$|100$<br /><br /> nn100$|100$<br /><br /> nn100usd|  
|022|022<br /><br /> nn022|022<br /><br /> nn22|  
|10:49AM<br /><br /> *(where the term is a time)*|10:49am<br /><br /> tt1049|10:49am<br /><br /> tt24104900|  
  
 In some cases the new components return *fewer* results or results that may be unexpected by applications:  
  
|**Term**|**Results with previous word breaker and stemmer**|**Results with new word breaker and stemmer**|  
|--------------|--------------------------------------------------------|---------------------------------------------------|  
|jěˊÿｑℭžl<br /><br /> *(where the terms are not valid English characters)*|‘jěˊÿｑℭžl’|je yq zl|  
|table's|table’s<br /><br /> table|table’s|  
|cat-|cat<br /><br /> cat-|cat|  
|v-z*(where v and z are noise words)*|*(no results)*|v-z|  
|$100 000 USD|$100<br /><br /> 000<br /><br /> nn000<br /><br /> nn100$<br /><br /> usd|$100 000 usd<br /><br /> nn100000usd|  
|beautiful U.S land|beautiful<br /><br /> land<br /><br /> u.s<br /><br /> us|beautiful<br /><br /> land|  
|Mt. Kent and Mt Challenger|challenger<br /><br /> kent<br /><br /> mt<br /><br /> mt.|mt<br /><br /> kent<br /><br /> challenger|  
  
## See Also  
 [Full-Text Search](../relational-databases/search/full-text-search.md)   
 [Full-Text Search Backward Compatibility](../a9retired/full-text-search-backward-compatibility.md)   
 [Upgrade Full-Text Search](../relational-databases/search/upgrade-full-text-search.md)   
 [Get Started with Full-Text Search](../relational-databases/search/get-started-with-full-text-search.md)  
  
  