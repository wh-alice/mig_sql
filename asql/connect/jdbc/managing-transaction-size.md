---
title: "Managing Transaction Size | Microsoft Docs"
ms.custom: ""
ms.date: "12/30/2016"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 82900342-bc80-445f-98a4-468a303aae1e
caps.latest.revision: 9
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
# Managing Transaction Size
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  When you work with transactions, it is important to keep your transactions as brief as possible. The default mode of auto-commit, which you can enable or disable by using the [setAutoCommit](../../connect/jdbc/reference/setautocommit-method--sqlserverconnection-.md) method, will commit every action for you. This is the easiest mode to work with for most developers.  
  
 When you use manual transactions, make sure that your code commits the transaction as quickly as possible. Holding open a transaction blocks other users from accessing the data. For example, a good programming practice might be to put a rollback call in your catch block and a commit call in the finally block. However, this depends on the design of your application.  
  
 Keeping the size of your transactions small creates better concurrency. For example, if you start a manual transaction and modify 10,000 rows in a 20,000-row table, you will have half the table completely blocked from all other users, even if they are only reading the data. Reducing your modifications to 2,000 rows leaves 90 percent of the table available.  
  
 Additionally, be sure to use the lock time out setting if your application expects some blocking issues and needs to time out from these. You can do this by using the [setLockTimeout](../../connect/jdbc/reference/setlocktimeout-method--sqlserverdatasource-.md) method. The default for the lock time out is -1, which means that it will block indefinitely while waiting for the lock. You can set the lock time out to 30 seconds, which will cause the blocked connection to time out in 30 seconds if blocked by another connection.  
  
## See Also  
 [Improving Performance and Reliability with the JDBC Driver](../../connect/jdbc/improving-performance-and-reliability-with-the-jdbc-driver.md)  
  
  