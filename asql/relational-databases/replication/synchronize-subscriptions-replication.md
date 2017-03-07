---
title: "Synchronize Subscriptions (Replication) | Microsoft Docs"
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
  - "synchronization [SQL Server replication], subscriptions"
  - "subscriptions [SQL Server replication], synchronizing"
  - "replication [SQL Server], synchronization"
ms.assetid: cbe13120-8dd9-4309-88dd-07a801c68f5f
caps.latest.revision: 35
ms.author: "rickbyh"
manager: "jhubbard"
---
# Synchronize Subscriptions (Replication)
  Subscriptions are synchronized by replication agents. The Distribution Agent synchronizes subscriptions to transactional and snapshot publications, and the Merge Agent synchronizes subscriptions to merge publications. You can use [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], replication stored procedures, and Replication Management Objects (RMO) to synchronize subscriptions and to control synchronization behavior. The following topics describe how synchronize subscriptions and specify synchronization options.  
  
## In This Section  
  
-   [Create and Apply the Initial Snapshot](../../relational-databases/replication/create-and-apply-the-initial-snapshot.md)  
  
-   [Create a Snapshot for a Merge Publication with Parameterized Filters](../../relational-databases/replication/create-a-snapshot-for-a-merge-publication-with-parameterized-filters.md)  
  
-   [Enable Initialization with a Backup for Transactional Publications &#40;SQL Server Management Studio&#41;](../../relational-databases/replication/9df00514-aa9d-4ac6-9766-d226c9958175.md)  
  
-   [Initialize a Transactional Subscription from a Backup &#40;Replication Transact-SQL Programming&#41;](../../relational-databases/replication/d0637fc4-27cc-4046-98ea-dc86b7a3bd75.md)  
  
-   [Initialize a Subscription Manually](../../relational-databases/replication/initialize-a-subscription-manually.md)  
  
-   [Synchronize a Pull Subscription](../../relational-databases/replication/synchronize-a-pull-subscription.md)  
  
-   [Synchronize a Push Subscription](../../relational-databases/replication/synchronize-a-push-subscription.md)  
  
-   [Reinitialize a Subscription](../../relational-databases/replication/reinitialize-a-subscription.md)  
  
-   [Execute Scripts Before and After a Snapshot Is Applied &#40;SQL Server Management Studio&#41;](../../relational-databases/replication/b7bb1e4c-5b48-4bb1-9dc8-47c911f2cc82.md)  
  
-   [Execute Scripts During Synchronization &#40;Replication Transact-SQL Programming&#41;](../../relational-databases/replication/execute-scripts-during-synchronization-replication-transact-sql-programming.md)  
  
-   [View and Resolve Data Conflicts for Merge Publications &#40;SQL Server Management Studio&#41;](../../relational-databases/replication/aeee9546-4480-49f9-8b1e-c71da1f056c7.md)  
  
-   [View Data Conflicts for Transactional Publications &#40;SQL Server Management Studio&#41;](../../relational-databases/replication/view-data-conflicts-for-transactional-publications-sql-server-management-studio.md)  
  
-   [Synchronize a Subscription Using Windows Synchronization Manager &#40;Windows Synchronization Manager&#41;](../../relational-databases/replication/80f15dd6-e84d-4f96-9866-5b34ea531f1e.md)  
  
-   [Implement a Business Logic Handler for a Merge Article](../../relational-databases/replication/implement-a-business-logic-handler-for-a-merge-article.md)  
  
-   [Debug a Business Logic Handler &#40;Replication Programming&#41;](../../relational-databases/replication/debug-a-business-logic-handler-replication-programming.md)  
  
-   [Control the Behavior of Triggers and Constraints During Synchronization &#40;Replication Transact-SQL Programming&#41;](../../relational-databases/replication/7c4e0f0e-cadc-4c99-98f4-69799b9b356b.md)  
  
-   [Implement a Custom Conflict Resolver for a Merge Article](../../relational-databases/replication/implement-a-custom-conflict-resolver-for-a-merge-article.md)  
  
## See Also  
 [Synchronize Data](../../relational-databases/replication/synchronize-data.md)  
  
  