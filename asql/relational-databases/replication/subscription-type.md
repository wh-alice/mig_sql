---
title: "Subscription Type | Microsoft Docs"
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
  - "sql13.rep.newsubwizard.subscriptiontype.f1"
ms.assetid: 9a50f588-ee45-4a87-826f-372ff0798587
caps.latest.revision: 20
ms.author: "rickbyh"
manager: "jhubbard"
---
# Subscription Type
  Merge replication offers two subscription types: server and client (referred to in previous versions of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] as global and local, respectively). Subscribers with a server subscription can:  
  
-   Republish data to other Subscribers.  
  
-   Serve as alternate synchronization partners.  
  
-   Resolve conflicts according to a priority you set.  
  
 Most Subscribers do not require this functionality and can use a client subscription. Client subscriptions still allow conflict detection and resolution, but Subscribers are not assigned a priority: the first Subscriber to submit a change to the Publisher wins any conflicts that might arise from that change.  
  
> [!NOTE]  
>  Subscription type cannot be changed after a subscription is created.  
  
## Options  
 **Subscription properties**  
 For each Subscriber, select **Client** or **Server** from the drop-down list box in the **Subscription Type** column. For Subscribers with server subscriptions, enter a number between 0 and 99.99 in the **Priority for Conflict Resolution** column (the higher the number, the higher the priority for the Subscriber).  
  
## See Also  
 [Create a Pull Subscription](../../relational-databases/replication/create-a-pull-subscription.md)   
 [Create a Push Subscription](../../relational-databases/replication/create-a-push-subscription.md)   
 [Subscribe to Publications](../../relational-databases/replication/subscribe-to-publications.md)  
  
  