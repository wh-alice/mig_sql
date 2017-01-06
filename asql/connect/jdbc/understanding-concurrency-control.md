---
title: "Understanding Concurrency Control | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 98b7dabe-9b12-4e1d-adeb-e5b5cb0c96f3
caps.latest.revision: 24
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# Understanding Concurrency Control
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Concurrency control refers to the various techniques that are used to preserve the integrity of the database when multiple users are updating rows at the same time. Incorrect concurrency can lead to problems such as dirty reads, phantom reads, and non-repeatable reads. The Microsoft JDBC Driver for SQL Server provides interfaces to all the concurrency techniques used by SQL Server to resolve these issues.  
  
> [!NOTE]  
>  For more information about SQL Server concurrency, see "Managing Concurrent Data Access" in SQL Server Books Online.  
  
## Remarks  
 The JDBC driver supports the following concurrency types:  
  
|Concurrency Type|Characteristics|Row Locks|Description|  
|----------------------|---------------------|---------------|-----------------|  
|CONCUR_READ_ONLY|Read Only|No|Updates through the cursor are not allowed, and no locks are held on the rows that make up the result set.|  
|CONCUR_UPDATABLE|Optimistic Read Write|No|Database assumes row contention is unlikely, but possible. Row integrity is checked with a timestamp comparison.|  
|CONCUR_SS_SCROLL_LOCKS|Pessimistic Read Write|Yes|Database assumes row contention is likely. Row integrity is ensured with row locking.|  
|CONCUR_SS_OPTIMISTIC_CC|Optimistic Read Write|No|Database assumes row contention is unlikely, but possible. Row integrity is verified with a timestamp comparison.<br /><br /> For SQL Server 2005 and later, the server will change this to CONCUR_SS_OPTIMISTIC_CCVAL if the table does not contain a timestamp column.<br /><br /> For SQL Server 2000, if the underlying table has a timestamp column, OPTIMISTIC WITH ROW VERSIONING is used even if OPTIMISTIC WITH VALUES is specified. If OPTIMISTIC WITH ROW VERSIONING is specified and the table does not have timestamps, OPTIMISTIC WITH VALUES is used.|  
|CONCUR_SS_OPTIMISTIC_CCVAL|Optimistic Read Write|No|Database assumes row contention is unlikely, but possible. Row integrity is checked with a row data comparison.|  
  
## Result Sets That Are Not Updateable  
 An updatable result set is a result set in which rows can be inserted, updated, and deleted. In the following cases, SQL Server cannot create an updatable cursor. The exception generated is, "Result set is not updatable."  
  
|Cause|Description|Remedy|  
|-----------|-----------------|------------|  
|Statement is not created by using JDBC 2.0 (or later) syntax|JDBC 2.0 introduced new methods to create statements. If JDBC 1.0 syntax is used, the result set defaults to read-only.|Specify result set type and concurrency when creating the statement.|  
|Statement is created by using TYPE_SCROLL_INSENSITIVE|SQL Server creates a static snapshot cursor. This is disconnected from the underlying table rows to help protect the cursor from row updates by other users.|Use TYPE_SCROLL_SENSITIVE, TYPE_SS_SCROLL_KEYSET, TYPE_SS_SCROLL_DYNAMIC, or TYPE_FORWARD_ONLY with CONCUR_UPDATABLE to avoid creating a static cursor.|  
|Table design precludes a KEYSET or DYNAMIC cursor|The underlying table does not have unique keys to enable SQL Server to uniquely identify a row.|Add unique keys to the table to provide unique identification of each row.|  
  
## See Also  
 [Managing Result Sets with the JDBC Driver](../../connect/jdbc/managing-result-sets-with-the-jdbc-driver.md)  
  
  