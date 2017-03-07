---
title: "Advanced Merge Replication Conflict Detection and Resolution | Microsoft Docs"
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
  - "merge replication conflict resolution [SQL Server replication], about conflict resolution"
  - "default conflict resolver"
  - "column-level conflict tracking"
  - "row-level conflict tracking"
  - "viewing merge replication conflicts"
  - "resolving merge replication conflicts"
  - "logical record-level conflict tracking [SQL Server replication]"
  - "conflict resolution [SQL Server replication], merge replication"
ms.assetid: 063d3d9c-ccb5-4fab-9d0c-c675997428b4
caps.latest.revision: 46
ms.author: "rickbyh"
manager: "jhubbard"
---
# Advanced Merge Replication - Conflict Detection and Resolution
  When a Publisher and a Subscriber are connected and synchronization occurs, the Merge Agent detects if there are any conflicts. If conflicts are detected, the Merge Agent uses a conflict resolver (which is specified when an article is added to a publication) to determine which data is accepted and propagated to other sites.  
  
> [!NOTE]  
>  Although a Subscriber synchronizes with the Publisher, conflicts typically occur between updates that are made at different Subscribers, instead of updates being made at a Subscriber and at the Publisher.  
  
 The behavior of conflict detection and resolution depends on the following options, which are described in this topic:  
  
-   Whether you specify column-level tracking, row-level tracking, or logical record-level tracking.  
  
-   Whether you specify the default priority-based resolution mechanism or specify an article resolver. An article resolver can be:  
  
    -   A *business logic handler* written in managed code.  
  
    -   A COM-based *custom resolver*.  
  
    -   A COM-based resolver supplied by [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)].  
  
     If the default resolution mechanism is used, behavior is further determined by the type of subscription used: client or server.  
  
## Conflict Detection  
 Whether a data change qualifies as a conflict or not depends on the type of conflict tracking you set for an article:  
  
-   If you select column-level conflict tracking, it is considered a conflict if changes are made to the same column in the same row at more than one replication node.  
  
-   If you select row-level tracking, it is considered a conflict if changes are made to any columns in the same row at more than one replication node (the columns affected in the corresponding rows need not be the same).  
  
-   If you select logical record-level tracking, it is considered a conflict if changes are made to any row in the same logical record at more than one replication node (the columns affected in the corresponding rows need not be the same).  
  
 For more information, see [Detecting and Resolving Conflicts in Logical Records](../../../relational-databases/replication/merge/advanced-merge-replication-conflict-resolving-in-logical-record.md).  
  
 To specify the conflict tracking and resolution level for an article, see [Specify the Conflict Tracking and Resolution Level for Merge Articles](../../../relational-databases/replication/publish/specify-the-conflict-tracking-and-resolution-level-for-merge-articles.md).  
  
## Conflict Resolution  
 After a conflict is detected, the Merge Agent launches the selected conflict resolver and uses the resolver to determine the conflict winner. The winning row is applied at the Publisher and Subscriber, and the data from the losing row is written to a conflict table. Conflicts are resolved immediately after the resolver executes, unless you select to resolve conflicts interactively.  
  
### Resolver Types  
 In merge replication, conflict resolution takes place at the article level. For publications composed of several articles, you can have different conflict resolvers serving different articles, or the same conflict resolver serving one article, several articles, or all the articles comprising a publication.  
  
 If you plan to use the default priority-based conflict resolver, you do not have to set the resolver property of an article. If you want to use an article resolver instead of the default resolver, you must set the resolver property for the article that will use it by selecting an available resolver on the Publisher. Any specific information that needs to be passed to the resolver can also be specified in the resolver information property.  
  
 Merge replication offers four types of conflict resolvers:  
  
-   The default priority-based conflict resolver  
  
     The default resolution mechanism behaves differently, depending on whether a subscription is a client subscription or a server subscription. You assign priority values to individual Subscribers that use server subscriptions; changes made at the node with the highest priority win any conflicts. For client subscriptions, the first change written to the Publisher wins the conflict.  
  
     After a subscription is created, it cannot be changed from one type to another.  
  
-   A business logic handler  
  
     The business logic handler framework allows you to write a managed code assembly that is called during the merge synchronization process. The assembly includes business logic that can respond to conflicts and a number of other conditions during synchronization. For more information, see [Execute Business Logic During Merge Synchronization](../../../relational-databases/replication/merge/execute-business-logic-during-merge-synchronization.md).  
  
-   A COM-based custom resolver  
  
     Merge replication provides an API for writing resolvers as COM objects in languages such as [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vcprvc](../../../relational-databases/replication/merge/includes/vcprvc-md.md)] or [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[vbprvb](../../../a9retired/includes/vbprvb-md.md)]. For more information, see [COM-Based Custom Resolvers](../../../relational-databases/replication/merge/advanced-merge-replication-conflict-com-based-custom-resolvers.md).  
  
-   A COM-based resolver supplied by [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)]  
  
     [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] includes a number of COM-based resolvers. For more information, see [Microsoft COM-Based Resolvers](../../../relational-databases/replication/merge/advanced-merge-replication-conflict-com-based-resolvers.md).  
  
 For information about how to select the appropriate type of resolver, see [Choose a Resolver](../../../relational-databases/replication/merge/advanced-merge-replication-conflict-choose-a-resolver.md).  
  
> [!NOTE]  
>  Some article resolvers are written to handle conflicts only for certain operations. For example a resolver might handle updates, but not inserts or deletes. The default priority-based conflict resolver handles any conflicts not handled by the article resolver.  
  
 To specify a merge subscription type and conflict resolution priority, see  
  
-   [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)]: [Specify a Merge Subscription Type and Conflict Resolution Priority &#40;SQL Server Management Studio&#41;](../../../relational-databases/replication/2b828d83-2341-4924-b92a-4f81a22246c0.md)  
  
-   Replication [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] programming and Replication Management Objects (RMO) programming: [Create a Pull Subscription](../../../relational-databases/replication/create-a-pull-subscription.md) and [Create a Push Subscription](../../../relational-databases/replication/create-a-push-subscription.md)  
  
### Interactive Resolver  
 Replication supplies an Interactive Resolver user interface that can be used in conjunction with either the default priority-based conflict resolver or an article resolver. When performing on-demand synchronization through [!INCLUDE[msCoName](../../../a9notintoc/includes/msconame-md.md)] Windows Synchronization Manager, the Interactive Resolver displays conflict data at run-time, and lets you choose how to resolve conflicts. For more information about how to enable interactive resolution and launch the Interactive Resolver, see [Interactive Conflict Resolution](../../../relational-databases/replication/merge/advanced-merge-replication-conflict-interactive-resolution.md).  
  
## Viewing Conflicts  
 The most straightforward way to view conflicts is to use the Replication Conflict Viewer, available from [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] ([!INCLUDE[ssNoVersion](../../../a9notintoc/includes/ssnoversion-md.md)] also provides stored procedures that allow the conflict tables to be queried.). The Conflict Viewer and Interactive Resolver are similar tools, but the Interactive Resolver allows you to resolve conflicts as synchronization occurs, whereas the Conflict Viewer is designed for viewing conflicts after they have been resolved. If the conflict metadata is still available in the system tables (conflict metadata is retained for 14 days by default), you can override conflict resolution outcomes in the Conflict Viewer, but if direct intervention is regularly required, consider using the Interactive Resolver.  
  
> [!NOTE]  
>  Conflicts that involve logical records are not displayed in Conflict Viewer. To view information about these conflicts, use replication stored procedures. For more information, see [View Conflict Information for Merge Publications &#40;Replication Transact-SQL Programming&#41;](../../../relational-databases/replication/4907fe35-10ee-4f81-b924-fc419b1864d2.md).  
  
 The Conflict Viewer displays information from three system tables:  
  
-   Replication creates a conflict table for each table in a merge article, with a name in the form **MSmerge_conflict_\<PublicationName>_\<ArticleName>**.  
  
     Conflict tables have the same structure as the tables on which they are based. A row in one of these tables consists of the losing version of a conflict row (the winning version of the row is in the actual user table).  
  
-   The **MSmerge_conflicts_info** table provides information about each conflict, including the conflict type.  
  
-   The **sysmergearticles** table identifies which user tables have conflict tables and provides information about the conflict tables.  
  
 By default, conflict information is stored:  
  
-   At the Publisher and Subscriber if the publication compatibility level is 90RTM or higher.  
  
-   At the Publisher if the publication compatibility level is lower than 80RTM.  
  
-   At the Publisher if Subscribers are running [!INCLUDE[ssEW](../../../a9retired/includes/ssew-md.md)]. Conflict data cannot be stored on [!INCLUDE[ssEW](../../../a9retired/includes/ssew-md.md)] Subscribers.  
  
 **To view conflicts**  
  
-   [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)]: [View and Resolve Data Conflicts for Merge Publications &#40;SQL Server Management Studio&#41;](../../../relational-databases/replication/aeee9546-4480-49f9-8b1e-c71da1f056c7.md)  
  
-   Replication [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)] Programming: [View Conflict Information for Merge Publications &#40;Replication Transact-SQL Programming&#41;](../../../relational-databases/replication/4907fe35-10ee-4f81-b924-fc419b1864d2.md)  
  
## See Also  
 [Synchronize Data](../../../relational-databases/replication/synchronize-data.md)  
  
  