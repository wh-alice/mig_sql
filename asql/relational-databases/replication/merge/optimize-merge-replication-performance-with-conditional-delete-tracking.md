---
title: "Optimize Merge Replication Performance with Conditional Delete Tracking | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "conditional delete tracking [SQL Server replication]"
  - "merge replication [SQL Server replication], conditional delete tracking"
  - "articles [SQL Server replication], conditional delete tracking"
ms.assetid: 58f120a3-ea3a-4e97-93f0-0eb4e580ecf2
caps.latest.revision: 23
ms.author: "rickbyh"
manager: "jhubbard"
---
# Optimize Merge Replication Performance with Conditional Delete Tracking
    
> [!NOTE]  
>  [!INCLUDE[ssNoteDepFutureAvoid](../../../database-engine/configure/windows/includes/ssnotedepfutureavoid-md.md)]  
  
 With merge replication you can specify that deletes for one or more articles should not be tracked by replication triggers and system tables. If you specify this option for an article, deletes are not tracked or replicated from the Publisher or any Subscribers. This option is available to support a number of application scenarios and to provide a performance optimization for cases in which the replication of deletes is not necessary or desirable. Performance is enhanced in three ways: metadata for deletes is not stored; deletes are not enumerated during synchronization; deletes are not replicated to and applied at the Subscriber.  
  
> [!NOTE]  
>  To use download-only articles, the compatibility level of the publication must be at least 90RTM.  
  
 The option can be specified when a publication is created or it can be toggled on and off if an application requires that some deletes be replicated and that others not be replicated, such as batch deletes. The following examples illustrate ways in which this option might be used in an application:  
  
-   An application for a mobile sales force typically has tables such as **SalesOrderHeader**, **SalesOrderDetail** and **Product**. Orders are entered at the Subscriber and then replicated to the Publisher, which often supplies data to an order fulfillment system. Many mobile workers use handheld devices which have limited storage: after the order is received at the Publisher, it can be deleted at the Subscriber. The delete is not propagated to the Publisher, because the order is still active in the system.  
  
     In this scenario, deletes would not be tracked for the **SalesOrderHeader** and **SalesOrderDetail** tables. Deletes would be tracked for the **Product** table, because if a product is deleted at the Publisher, the delete should be sent to the Subscriber to keep the product list up to date.  
  
-   An application could store historical data in a table such as **TransactionHistory**, which is periodically purged of records older than a year. The table could be filtered such that Subscribers only receive data on transactions within the current month. Monthly batch deletes at the Publisher that purge older data are not relevant to Subscribers, but they would still be tracked and enumerated by default.  
  
     In this scenario, before the batch processing occurred, activity could be stopped on the system, and the application could disable the tracking of deletes. After the processing has finished, tracking could again be enabled.  
  
> [!IMPORTANT]  
>  If other activity continues at the Publisher, you must ensure that deletes that should be propagated to Subscribers do not occur while delete tracking is disabled.  
  
 **To specify that deletes should not be tracked**  
  
-   Replication [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)] programming: [Specify That Deletes Should Not Be Tracked For Merge Articles &#40;Replication Transact-SQL Programming&#41;](../../../relational-databases/replication/publish/0fe330ca-5fb5-422e-ad6f-92fb5d6a3b6c.md)  
  
## See Also  
 [Article Options for Merge Replication](../../../relational-databases/replication/merge/article-options-for-merge-replication.md)   
 [Optimize Merge Replication Performance with Download-Only Articles](../../../relational-databases/replication/merge/optimize-merge-replication-performance-with-download-only-articles.md)  
  
  