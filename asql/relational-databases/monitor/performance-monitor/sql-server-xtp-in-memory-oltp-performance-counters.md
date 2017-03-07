---
title: "SQL Server XTP (In-Memory OLTP) Performance Counters | Microsoft Docs"
ms.custom: ""
ms.date: "2016-04-06"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: fe3cbaf4-65f4-44c5-acc6-7b735cda0c5d
caps.latest.revision: 17
ms.author: "jhubbard"
manager: "jhubbard"
---
# SQL Server XTP (In-Memory OLTP) Performance Counters
[!INCLUDE[tsql-appliesto-ss2016-xxxx-xxxx-xxx_md](../../../a9notintoc/includes/tsql-appliesto-ss2016-xxxx-xxxx-xxx-md.md)]

  [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] provides objects and counters that can be used by Performance Monitor to monitor In-Memory OLTP activity. The objects and counters are shared across all instances of a given version of [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] on the machine, starting in [!INCLUDE[ssSQL14](../../../a9notintoc/includes/sssql14-md.md)].  
  
 In the past the object and counter names began with *XTP*, as in **XTP Cursors**. Now starting with [!INCLUDE[ssSQL15](../../../a9notintoc/includes/sssql15-md.md)], the names are like the following pattern:  
  
-   **SQL Server** *\<version>* **XTP Cursors**  
  
 For *\<version>* the value is something like 2016.  
  
##  <a name="SQLServerPOs"></a> SQL Server XTP Performance Objects  
 The following table describes [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] performance objects.  
  
|Performance object|Description|  
|------------------------|-----------------|  
|[SQL Server XTP Cursors](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-cursors.md)|The SQL Server XTP Cursors performance object contains counters related to internal In-Memory OLTP engine cursors. Cursors are the low-level building blocks the In-Memory OLTP engine uses to process [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] queries. As such, you do not typically have direct control over them.|  
|[SQL Server XTP Databases](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-databases.md)|The SQL Server XTP Databases performance object provides In-Memory OLTP database-specific counters.|  
|[SQL Server XTP Garbage Collection](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-garbage-collection.md)|The SQL Server XTP Garbage Collection performance object contains counters related to the In-Memory OLTP engine's garbage collector.|  
|[SQL Server 2016 XTP IO Governor](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-io-governor.md)|The SQL Server XTP IO Governor performance object contains counters related to the In-Memory OLTP IO Rate Governor.|
|[SQL Server XTP Phantom Processor](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-phantom-processor.md)|The SQL Server XTP Phantom Processor performance object contains counters related to the In-Memory OLTP engine's phantom processing subsystem. This component is responsible for detecting phantom rows in transactions running at the SERIALIZABLE isolation level.|  
|[SQL Server XTP Storage](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-storage.md)|The SQL Server XTP Storage performance object contains counters related to In-Memory OLTP storage in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].|  
|[SQL Server XTP Transaction Log](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-transaction-log.md)|The SQL Server XTP Transaction Log performance object contains counters related to In-Memory OLTP transaction logging in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].|  
|[SQL Server XTP Transactions](../../../relational-databases/monitor/performance-monitor/sql-server-xtp-transactions.md)|The SQL Server XTP Transactions performance object contains counters related to In-Memory OLTP engine transactions in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)].|  
  
  