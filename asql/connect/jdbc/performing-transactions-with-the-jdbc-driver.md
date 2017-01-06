---
title: "Performing Transactions with the JDBC Driver | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: afbb776f-05dc-4e79-bb25-2c340483e401
caps.latest.revision: 16
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
# Performing Transactions with the JDBC Driver
![Download](../../ssdt/media/download.png)[Download JDBC Driver](http://go.microsoft.com/fwlink/?LinkId=245496)

  Transaction processing is a mandatory requirement of all applications that must guarantee consistency of their persistent data. With the Microsoft JDBC Driver for SQL Server, transaction processing can either be performed locally or distributed. Transactions are atomic, consistent, isolated, and durable (ACID) modules of execution.  
  
 The topics in this section describe how the JDBC driver supports transactions including isolation levels, transaction savepoints, and result set holdability.  
  
## In This Section  
  
|Topic|Description|  
|-----------|-----------------|  
|[Understanding Transactions](../../connect/jdbc/understanding-transactions.md)|Provides an overview of how transactions are used with the JDBC driver.|  
|[Understanding XA Transactions](../../connect/jdbc/understanding-xa-transactions.md)|Provides an overview of how XA transactions are used with the JDBC driver.|  
|[Understanding Isolation Levels](../../connect/jdbc/understanding-isolation-levels.md)|Describes the various isolation levels that are supported by the JDBC driver.|  
|[Using Savepoints](../../connect/jdbc/using-savepoints.md)|Describes how to use the JDBC driver with transaction savepoints.|  
|[Using Holdability](../../connect/jdbc/using-holdability.md)|Describes how to use the JDBC driver with result set holdability.|  
  
## See Also  
 [Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)  
  
  