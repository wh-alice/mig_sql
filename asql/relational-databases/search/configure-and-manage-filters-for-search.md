---
title: "Configure and Manage Filters for Search | Microsoft Docs"
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
  - "full-text search [SQL Server], filters"
  - "filters [full-text search]"
ms.assetid: 7ccf2ee0-9854-4253-8cca-1faed43b7095
caps.latest.revision: 68
ms.author: "jhubbard"
manager: "jhubbard"
---
# Configure and Manage Filters for Search
  Indexing documents in an **varbinary**, **varbinary(max)**, **image**, or **xml** data type column requires extra processing. This processing must be performed by a filter. The filter extracts the textual information from the document (removing the formatting). The filter then sends the text to the word-breaker component for the language associated with the table column.  
  
 A given filter is specific to a given document type (.doc, .pdf, .xls, .xml, and so forth). These filters implement the IFilter interface. For more information about these document types, query the [sys.fulltext_document_types](../../relational-databases/reference/system-catalog-views/sys.fulltext-document-types-transact-sql.md) catalog view.  
  
 Binary documents can be stored in a single **varbinary(max)** or **image** column. For each document, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] chooses the correct filter based on the file extension. Because the file extension is not visible when the file is stored in a **varbinary(max)** or **image** column, the file extension (.doc, .xls,  .pdf, and so forth) must be stored in a separate column in the table, called a type column. This type column can be of any character-based data type and contains the document file extension, such as .doc for a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Word document. In the **Document** table in [!INCLUDE[ssSampleDBCoShort](../../analysis-services/data-mining/includes/sssampledbcoshort-md.md)], the **Document** column is of type **varbinary(max)**, and the type column, **FileExtension**, is of type **nvarchar(8)**.  
  
> [!NOTE]  
>  A filter might be able to handle objects embedded in the parent object, depending on its implementation. However, [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not configure filters to follow links to other objects.  
  
 [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] installs its own XML and HTML filters. In addition, any filters for [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] proprietary formats (.doc, .xdoc, .ppt and so on) that are already installed on the operating system are also loaded by  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. To identify the filters that are currently loaded on an instance of [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)], use the [sp_help_fulltext_system_components](../../relational-databases/reference/system-stored-procedures/sp-help-fulltext-system-components-transact-sql.md) stored procedure, as follows:  
  
```  
EXEC sp_help_fulltext_system_components 'filter';   
```  
  
 Before you can use filters for non [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] formats, however, you must manually load them into the server instance. For information about installing additional filters, see [View or Change Registered Filters and Word Breakers](../../relational-databases/search/view-or-change-registered-filters-and-word-breakers.md).  
  
 **To view the type column in an existing full-text index**  
  
-   [sys.fulltext_index_columns &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.fulltext-index-columns-transact-sql.md)  
  
## See Also  
 [sys.fulltext_index_columns &#40;Transact-SQL&#41;](../../relational-databases/reference/system-catalog-views/sys.fulltext-index-columns-transact-sql.md)   
 [FILESTREAM Compatibility with Other SQL Server Features](../../relational-databases/blob/filestream-compatibility-with-other-sql-server-features.md)  
  
  