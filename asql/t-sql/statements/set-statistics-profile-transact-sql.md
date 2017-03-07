---
title: "SET STATISTICS PROFILE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-06-10"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "PROFILE"
  - "SET_STATISTICS_PROFILE_TSQL"
  - "PROFILE_TSQL"
  - "SET STATISTICS PROFILE"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "profiles [SQL Server], displaying"
  - "statements [SQL Server], profile information"
  - "SET STATISTICS PROFILE statement"
  - "STATISTICS PROFILE option"
  - "statistical information [SQL Server], profiles"
ms.assetid: c635e262-35fa-421a-aa6f-a1c30f351647
caps.latest.revision: 34
ms.author: "rickbyh"
manager: "jhubbard"
---
# SET STATISTICS PROFILE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx_md](../../relational-databases/import-export/includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

  Displays the profile information for a statement. STATISTICS PROFILE works for ad hoc queries, views, and stored procedures.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md)  
  
## Syntax  
  
```  
  
SET STATISTICS PROFILE { ON | OFF }  
```  
  
## Remarks  
 When STATISTICS PROFILE is ON, each executed query returns its regular result set, followed by an additional result set that shows a profile of the query execution.  
  
 The additional result set contains the SHOWPLAN_ALL columns for the query and these additional columns.  
  
|Column name|Description|  
|-----------------|-----------------|  
|**Rows**|Actual number of rows produced by each operator|  
|**Executes**|Number of times the operator has been executed|  
  
## Permissions  
 To use SET STATISTICS PROFILE and view the output, users must have the following permissions:  
  
-   Appropriate permissions to execute the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements.  
  
-   SHOWPLAN permission on all databases containing objects that are referenced by the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements.  
  
 For [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements that do not produce STATISTICS PROFILE result sets, only the appropriate permissions to execute the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements are required. For [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statements that do produce STATISTICS PROFILE result sets, checks for both the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement execution permission and the SHOWPLAN permission must succeed, or the [!INCLUDE[tsql](../../advanced-analytics/r-services/includes/tsql-md.md)] statement execution is aborted and no Showplan information is generated.  
  
## See Also  
 [SET Statements &#40;Transact-SQL&#41;](../../t-sql/statements/set-statements-transact-sql.md)   
 [SET SHOWPLAN_ALL &#40;Transact-SQL&#41;](../../t-sql/statements/set-showplan-all-transact-sql.md)   
 [SET STATISTICS TIME &#40;Transact-SQL&#41;](../../t-sql/statements/set-statistics-time-transact-sql.md)   
 [SET STATISTICS IO &#40;Transact-SQL&#41;](../../t-sql/statements/set-statistics-io-transact-sql.md)  
  
  