---
title: "Transaction Isolation Levels | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
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
  - "locking [SQL Server], hints"
  - "isolation levels [SQL Server], metadata access"
  - "hints [SQL Server], locking"
ms.assetid: 02bb71fa-1e92-4782-a9cf-6e256cc1f3ea
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# Transaction Isolation Levels
[!INCLUDE[tsql-appliesto-ss2012-xxxx-xxxx-xxx_md](../../integration-services/system/stored-procedures/includes/tsql-appliesto-ss2012-xxxx-xxxx-xxx-md.md)]

  [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] does not guarantee that lock hints will be honored in queries that access metadata through catalog views, compatibility views, information schema views, metadata-emitting built-in functions.  
  
 Internally, the [!INCLUDE[ssDEnoversion](../../analysis-services/instances/install/windows/includes/ssdenoversion-md.md)] only honors the READ COMMITTED isolation level for metadata access. If a transaction has an isolation level that is, for example, SERIALIZABLE and within the transaction, an attempt is made to access metadata by using catalog views or metadata-emitting built-in functions, those queries will run until they are completed as READ COMMITTED. However, under snapshot isolation, access to metadata might fail because of concurrent DDL operations. This is because metadata is not versioned. Therefore, accessing the following under snapshot isolation might fail:  
  
-   Catalog views  
  
-   Compatibility views  
  
-   Information Schema Views  
  
-   Metadata-emitting built-in functions  
  
-   **sp_help** group of stored procedures  
  
-   [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Native Client catalog procedures  
  
-   Dynamic management views and functions  
  
 For more information about isolation levels, see [SET TRANSACTION ISOLATION LEVEL &#40;Transact-SQL&#41;](../../t-sql/statements/set-transaction-isolation-level-transact-sql.md).  
  
 The following table provides a summary of metadata access under various isolation levels.  
  
|Isolation level|Supported|Honored|  
|---------------------|---------------|-------------|  
|READ UNCOMMITTED|No|Not guaranteed|  
|READ COMMITTED|Yes|Yes|  
|REPEATABLE READ|No|No|  
|SNAPSHOT ISOLATION|No|No|  
|SERIALIZABLE|No|No|  
  
  