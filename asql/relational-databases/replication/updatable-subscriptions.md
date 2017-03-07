---
title: "Updatable Subscriptions | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
f1_keywords: 
  - "sql13.rep.newsubwizard.updatablesubscriptions.f1"
ms.assetid: 8e9a13a0-6b24-47c6-9d83-3cbaf08f673d
caps.latest.revision: 22
ms.author: "rickbyh"
manager: "jhubbard"
---
# Updatable Subscriptions
  With transactional replication, replicated data should be treated as read-only; however, you can modify replicated data at a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Subscriber by using updatable subscriptions. If you need to modify data at the Subscriber, choose one of the following options depending on your requirements.  
  
|Updatable Subscription Type|Requirements|  
|---------------------------------|------------------|  
|Immediate Updating|Publisher and Subscriber must be connected to update data at the Subscriber.|  
|Queued Updating|Publisher and Subscriber do not have to be connected to update data at the Subscriber. Updates can be made while offline, and later synchronized between the Publisher and Subscriber.|  
  
## Options  
 **Replicate Subscriber changes**  
 Select the check box in the **Replicate** column for each Subscriber that should be able to make updates. For those Subscribers that can make updates, select the appropriate option from the drop-down list box in the **Commit at Publisher** column:  
  
-   Select **Simultaneously commit changes** for an immediate updating subscription.  
  
-   Select **Queue changes and commit when possible** for a queued updating subscription.  
  
## See Also  
 [Create a Pull Subscription](../../relational-databases/replication/create-a-pull-subscription.md)   
 [Create a Push Subscription](../../relational-databases/replication/create-a-push-subscription.md)   
 [Subscribe to Publications](../../relational-databases/replication/subscribe-to-publications.md)   
 [Updatable Subscriptions for Transactional Replication](../Topic/Updatable%20Subscriptions%20for%20Transactional%20Replication.md)  
  
  