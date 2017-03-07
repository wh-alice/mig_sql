---
title: "Full-Text Catalog Properties (General Page) | Microsoft Docs"
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
  - "sql13.swb.fulltextsearch.ftcatalogproperties.general.f1"
ms.assetid: d1f66762-2d40-4f24-b635-a417d22ee79a
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Full-Text Catalog Properties (General Page)
  This section shows the options and functions available on the **General** page of the **Full-Text Catalog Properties** dialog box.  
  
> [!NOTE]  
>  For [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] databases, a full-text catalog is a logical concept that refers to a group of full-text indexes. The full-text catalog is a virtual object that does not belong to any filegroup.  
  
## Options  
  
### Properties  
 **Default Catalog**  
 Displays whether the catalog is the default catalog for the database.  
  
 **Population Status**  
 Indicates the status of the catalog. Possible values are:  
  
-   **Idle**  
  
-   **Crawl in Progress**  
  
-   **Paused**  
  
-   **Throttled**  
  
-   **Recovering**  
  
-   **Shutdown**  
  
-   **Incremental population in progress**  
  
-   **Building index**  
  
-   **Disk is full—Paused**  
  
-   **Change tracking**  
  
 **Item Count**  
 Displays the number of full-text items in the catalog.  
  
 **Catalog Size**  
 Displays the size, in megabytes, of the full-text catalog.  
  
 **Name**  
 The name of the full-text catalog.  
  
 **Accent Sensitive**  
 View or modify whether the catalog is sensitive to diacritical marks, such as a tilde (**~**), acute accent mark (**´**), or umlaut (**¨**). Valid values are:  
  
-   **No**  
  
-   **Yes**  
  
 **Last Population Date**  
 Displays the date the catalog was last populated.  
  
 **Owner**  
 The owner of the full-text catalog.  
  
 **Unique Key Count**  
 The number of unique words that make up the full-text index for the catalog.  
  
### Catalog Action  
  
|||  
|-|-|  
|**None**|Does not perform **Optimize catalog**, **Rebuild catalog**, or **Repopulate catalog** operations.|  
|**Optimize catalog**|Optimizes the space utilization of the catalog and improves query performance. It also improves the accuracy of relevance ranking of search results.<br /><br /> This action executes ALTER FULLTEXT CATALOG *catalog_name* REORGANIZE.|  
|**Rebuild catalog**|Deletes and rebuilds the full-text catalog. This operation must be performed if a fundamental catalog property is changed, such as accent sensitivity.<br /><br /> For the rebuild to succeed, the filegroup the full-text catalog resides in must be online or read-writeable. After the rebuild, the full-text index will be repopulated.<br /><br /> This action executes ALTER FULLTEXT CATALOG *catalog_name* REBUILD.|  
|**Repopulate catalog**|Updates the catalog with recent changes to the data. This option does require catalog downtime.|  
  
## See Also  
 [Populate Full-Text Indexes](../relational-databases/search/populate-full-text-indexes.md)  
  
  