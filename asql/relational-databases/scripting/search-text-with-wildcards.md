---
title: "Search Text with Wildcards | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "vs.wildcards"
  - "vswildcardsbuilder"
helpviewer_keywords: 
  - "searches [SQL Server Management Studio], wildcards"
  - "Query Editor [SQL Server Management Studio], wildcard searches"
  - "wildcard options [SQL Server Management Studio]"
ms.assetid: 449600f8-cc87-4b3f-878a-59c158a88a40
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# Search Text with Wildcards
  The following expressions can replace characters or digits in the **Find what** field of the [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] **Find and Replace** dialog box.  
  
#### To search using wildcards  
  
1.  To enable the use of wildcards in the **Find what** field during Quick Find, **Find in Files**, **Quick Replace**, or **Replace in Files** operations, select the **Use** option under **Find Options** and then choose **Wildcards**.  
  
2.  The triangular **Reference List** button next to the **Find what** field then becomes available. Click this button to display a list of the available wildcards. When you choose any item from the **Reference List**, it is inserted into the **Find what** string.  
  
 The following table describes the wildcards available in the **Reference List**.  
  
|Expression|Syntax|Description|  
|----------------|------------|-----------------|  
|Any single character|?|Matches any single character.|  
|Any single digit|#|Matches any single digit. For example, 7# matches numbers that include 7 followed by another number, such as 71, but not 17.|  
|Characters not in set|[! ]|Matches any one character that is not specified in the set.|  
|One or more characters|*|Matches any one or more characters. For example, new* matches any text that includes "new", such as newfile.txt.|  
|Set of characters|[ ]|Matches any one of the characters specified in the set.|  
  
## See Also  
 [Search and Replace](../../relational-databases/scripting/search-and-replace.md)   
 [Search Text with Regular Expressions](../../relational-databases/scripting/search-text-with-regular-expressions.md)  
  
  