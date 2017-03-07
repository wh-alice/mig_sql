---
title: "Take Advantage of New SQL Server 2016 Features | Microsoft Docs"
ms.custom: ""
ms.date: "2015-09-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: d8879659-8efa-4442-bcbb-91272647ae16
caps.latest.revision: 8
ms.author: "mikeray"
manager: "jhubbard"
robots: noindex,nofollow
---
# Take Advantage of New SQL Server 2016 Features
  After upgrading to [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)], there are a number of specific features that you will want to look at to improve performance and add capabilities to your [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] solutions. In this topic, we will discuss a few features from that list. For a full list of new features for the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)], see [What's New in Database Engine](../Topic/What's%20New%20in%20Database%20Engine.md)  
  
## Column Store Indexes  
 This release offers several new improvements for columnstore indexes including updateable nonclustered columnstore indexes, columnstore indexes on in-memory tables, and many more new features for operational analytics. For more information, see [Columnstore Indexes Versioned Feature Summary](../Topic/Columnstore%20Indexes%20Versioned%20Feature%20Summary.md).  
  
## Query Store  
 Query store is a new feature that provides DBAs with insight on query plan choice and performance. It simplifies performance troubleshooting by enabling you to quickly find performance differences caused by changes in query plans. The feature automatically captures a history of queries, plans, and runtime statistics, and retains these for your review. It separates data by time windows, allowing you to see database usage patterns and understand when query plan changes happened on the server. The query store presents information by using a Management Studio dialog box, and lets you force the query to one of the selected query plans. For more information, see [Monitoring Performance By Using the Query Store](../relational-databases/performance/monitoring-performance-by-using-the-query-store.md).  
  
## Temporal  
 A temporal table is a new type of table that provides correct information about stored facts at any point in time. Each temporal table consists of two tables actually, one for the current data and one for the historical data. The system ensures that when the data changes in the table with the current data the previous values are stored in the historical table. Querying constructs are provided to hide this complexity from users. For more information, see [Temporal Tables](../relational-databases/tables/temporal-tables.md).  
  
## JSON  
 Format query results as JSON by adding the FOR JSON clause to a SELECT statement. Use the FOR JSON clause, for example, to delegate the formatting of JSON output from your client applications to SQL Server. For more information, see [Format Query Results as JSON with FOR JSON &#40;SQL Server&#41;](../relational-databases/json/format-query-results-as-json-with-for-json-sql-server.md)  
  
## Always Encrypted  
 With Always Encrypted, SQL Server can perform operations on encrypted data, and best of all the encryption key resides with the application inside the customer’s trusted environment and not on the server. Always Encrypted secures customer data so DBAs do not have access to plain text data. Encryption and decryption of data happens transparently at the driver level minimizing changes that have to be made to existing applications. For more information, see [Always Encrypted &#40;Database Engine&#41;](../relational-databases/security/encryption/always-encrypted-database-engine.md).  
  
## Did this Article Help You? We’re Listening  
 What information are you looking for, and did you find it? We’re listening to your feedback to improve the content. Please submit your comments to [sqlfeedback@microsoft.com](mailto:sqlfeedback@microsoft.com?subject=Your%20feedback%20about%20the%20Take%20Advantage%20of%20New%20SQL%20Server%202016%20Features%20page)  
  
  