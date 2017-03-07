---
title: "SQL Server, Transactions Object | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "SQLServer:Transactions"
  - "Transactions object"
ms.assetid: 85240267-78fd-476a-9ef6-010d6cf32dd8
caps.latest.revision: 29
ms.author: "rickbyh"
manager: "jhubbard"
---
# SQL Server, Transactions Object
  The **Transactions** object in Microsoft [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] provides counters to monitor the number of transactions active in an instance of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)], and the effects of those transactions on resources such as the snapshot isolation row version store in **tempdb**. Transactions are logical units of work; a set of operations that must either all succeed or all be erased from a database in order to maintain the logical integrity of the data. All modifications of data in [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] databases are made in transactions.  
  
 When a database is set to allow snapshot isolation level, [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] must maintain a record of the modifications made to each row in a database. Each time a row is modified, a copy of the row as it existed before the modification is recorded in a row version store in **tempdb**. Many of the counters in the **Transaction** object can be used to monitor the size and rate of growth of the row version store in **tempdb**.  
  
 The **Transactions** object counters report all transactions in one instance of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)].  
  
 This table describes the **SQLServer:Transactions** counters.  
  
|SQL Server Transactions counters|Description|  
|--------------------------------------|-----------------|  
|**Free Space in tempdb (KB)**|The amount of space (in kilobytes) available in **tempdb**. There must be enough free space to hold both the snapshot isolation level version store and all new temporary objects created in this instance of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)].|  
|**Longest Transaction Running Time**|The length of time (in seconds) since the start of the transaction that has been active longer than any other current transaction. This counter only shows activity when the database is under read committed snapshot isolation level. It does not log any activity if the database is in any other isolation level.|  
|**NonSnapshot Version Transactions**|The number of currently active transactions that are not using snapshot isolation level and have made data modifications that have generated row versions in the **tempdb** version store.|  
|**Snapshot Transactions**|The number of currently active transactions using the snapshot isolation level.<br /><br /> Note: The **Snapshot Transactions** object counter responds when the first data access occurs, not when the `BEGIN TRANSACTION` statement is issued.|  
|**Transactions**|The number of currently active transactions of all types.|  
|**Update conflict ratio**|The percentage of those transactions using the snapshot isolation level that have encountered update conflicts within the last second. An update conflict occurs when a snapshot isolation level transaction attempts to modify a row that last was modified by another transaction that was not committed when the snapshot isolation level transaction started.|  
|**Update conflict ratio base**|For internal use only.|
|**Update Snapshot Transactions**|The number of currently active transactions using the snapshot isolation level and have modified data.|  
|**Version Cleanup rate (KB/s)**|The rate (in kilobytes per second) at which row versions are removed from the snapshot isolation version store in **tempdb**.|  
|**Version Generation rate (KB/s)**|The rate (in kilobytes per second) at which new row versions are added to the snapshot isolation version store in **tempdb**.|  
|**Version Store Size (KB)**|The amount of space (in kilobytes) in **tempdb** being used to store snapshot isolation level row versions.|  
|**Version Store unit count**|The number of active allocation units in the snapshot isolation version store in **tempdb**.|  
|**Version Store unit creation**|The number of allocation units that have been created in the snapshot isolation store since the instance of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)] was started.|  
|**Version Store unit truncation**|The number of allocation units that have been removed from the snapshot isolation store since the instance of the [!INCLUDE[ssDE](../../../a9notintoc/includes/ssde-md.md)] was started.|  
  
## See Also  
 [Monitor Resource Usage &#40;System Monitor&#41;](../../../relational-databases/monitor/performance-monitor/monitor-resource-usage-system-monitor.md)  
  
  