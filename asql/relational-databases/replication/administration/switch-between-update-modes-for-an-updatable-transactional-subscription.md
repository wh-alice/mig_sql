---
title: "Switch Between Update Modes for an Updatable Transactional Subscription | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "transactional replication, updatable subscriptions"
  - "updatable subscriptions, update modes"
  - "subscriptions [SQL Server replication], updatable"
ms.assetid: ab5ebab1-7ee4-41f4-999b-b4f0c420c921
caps.latest.revision: 38
ms.author: "rickbyh"
manager: "jhubbard"
---
# Switch Between Update Modes for an Updatable Transactional Subscription
  This topic describes how to switch between update modes for an updatable transaction subscription in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)]. Specify the mode for updatable subscriptions using the New Subscription Wizard. For information about setting the mode when using this wizard, see [View and Modify Pull Subscription Properties](../../../relational-databases/replication/view-and-modify-pull-subscription-properties.md).  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
     [Recommendations](#Recommendations)  
  
-   **To switch between update modes for an updatable transactional subscription, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   You can fail over from immediate to queued updating at any time. After you do, however, you cannot return to immediate updating until the Subscriber and Publisher are connected and the Queue Reader Agent has applied all pending messages in the queue to the Publisher.  
  
###  <a name="Recommendations"></a> Recommendations  
  
-   When an updating subscription to a transactional publication supports failover from one updating mode to another, you can programmatically switch update modes to handle situations when connectivity changes for a short period of time. The update mode can be set programmatically and on demand using replication stored procedures. For more information, see [Updatable Subscriptions for Transactional Replication](../Topic/Updatable%20Subscriptions%20for%20Transactional%20Replication.md).  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
  
> [!NOTE]  
>  To change the update mode after the subscription is created, the **update_mode** property must be set to **failover** (which allows a switch from immediate updating to queued updating) or **queued failover** (which allows a switch from queued updating to immediate updating) when the subscription is created. These properties are set automatically in the New Subscription Wizard.  
  
#### To set the updating mode for a push subscription  
  
1.  Connect to the Subscriber in [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)], and then expand the server node.  
  
2.  Expand the **Replication** folder, and then expand the **Local Subscriptions** folder.  
  
3.  Right-click the subscription for which you want to set the update mode, and then click **Set Update Method**.  
  
4.  In the **Set Update Method - \<Subscriber>: \<SubscriptionDatabase>** dialog box, select **Immediate updating** or **Queued updating**.  
  
5.  [!INCLUDE[clickOK](../../../analysis-services/data-mining/includes/clickok-md.md)]  
  
#### To set the updating mode for a pull subscription  
  
1.  In the **Subscription Properties - \<Publisher>: \<PublicationDatabase>** dialog box, select a value of **Immediately replicate changes** or **Queue changes** for the **Subscriber update method** option.  
  
2.  [!INCLUDE[clickOK](../../../analysis-services/data-mining/includes/clickok-md.md)]  
  
 For more information about accessing the **Subscription Properties - \<Publisher>: \<PublicationDatabase>** dialog box, see [View and Modify Pull Subscription Properties](../../../relational-databases/replication/view-and-modify-pull-subscription-properties.md).  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
  
#### To switch between update modes  
  
1.  Verify that the subscription supports failover by executing [sp_helppullsubscription](../../../relational-databases/system-stored-procedures/sp-helppullsubscription-transact-sql.md) for a pull subscription or [sp_helpsubscription](../../../relational-databases/system-stored-procedures/sp-helpsubscription-transact-sql.md) for a push subscription. If the value of **update mode** in the result set is **3** or **4**, failover is supported.  
  
2.  At the Subscriber on the subscription database, execute [sp_setreplfailovermode](../../../relational-databases/system-stored-procedures/sp-setreplfailovermode-transact-sql.md). Specify **@publisher**, **@publisher_db**, **@publication**, and one of the following values for **@failover_mode**:  
  
    -   **queued** - fail over to queued updating when connectivity has been temporarily lost.  
  
    -   **immediate** - fail over to immediate updating when connectivity has been restored.  
  
## See Also  
 [Updatable Subscriptions for Transactional Replication](../Topic/Updatable%20Subscriptions%20for%20Transactional%20Replication.md)  
  
  