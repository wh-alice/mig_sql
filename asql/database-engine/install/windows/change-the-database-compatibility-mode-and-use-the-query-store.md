---
title: "Change the Database Compatibility Mode and Use the Query Store | Microsoft Docs"
ms.custom: ""
ms.date: "2015-09-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "setup-install"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "query plans [SQL Server], migrating"
  - "upgrading SQL Server, migrating query plans"
  - "plan guides [SQL Server], migrating query plans"
ms.assetid: 7e02a137-6867-4f6a-a45a-2b02674f7e65
caps.latest.revision: 19
ms.author: "mikeray"
manager: "jhubbard"
---
# Change the Database Compatibility Mode and Use the Query Store
  In SQL Server 2016, some changes are only enabled once the DATABASE_COMPATIBILITY level for a database has been changed to 130.  This was done for several reasons:  
  
-   Since upgrade is a one-way operation (it is not possible to downgrade the file format), there is value in separating the enablement of new features to a separate operation within the database.  It is possible to revert a setting to a prior DATABASE_COMPATIBILITY level.  The new model reduces the number of things that must happen during an outage window.  
  
-   Changes to the query processor can have complex effects.  Even a “good” change to the system may be great for most of customers may cause an unacceptable regression on an important query elsewhere.  Separating this logic from the upgrade process allows for features, such as the Query Store, to mitigate plan choice regressions quickly or even avoid them completely in production servers.  
  
> [!NOTE]  
>  If the compatibility level of a user database was 100 or higher before the upgrade, it remains the same after upgrade. If the compatibility level was 90 before upgrade, in the upgraded database, the compatibility level is set to 100, which is the lowest supported compatibility level in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)]. The compatibility levels of the tempdb, model, msdb and Resource databases are set to 130 after upgrade. The master system database retains the compatibility level it had before upgrade. 
  
 The upgrade process to enable new query processor functionality is related to the post-release servicing model of the product.  Some of those fixes are released under trace flag 4199.  Customers needing fixes can opt-in to those fixes without causing unexpected regressions for other customers.  The post-release servicing model for query processor hotfixes is documented [here](https://support.microsoft.com/en-us/kb/974006). As of SQL Server 2016, moving to a new compatibility level implies that the 4199 trace flag is no longer needed because those fixes are now enabled by default in the latest compatibility mode (130).  Therefore, as part of the upgrade process, it is important to validate that 4199 is not enabled once the upgrade process completes.  
  
 The recommended workflow for upgrading the query processor to the latest version of the code is:  
  
1.  Upgrade a database to SQL Server 2016 without changing the database compatibility level (keep it at prior level)  
  
2.  Enable the query store on the database. For more information about enabling and using the query store, see [Monitoring Performance By Using the Query Store](../../../relational-databases/performance/monitoring-performance-by-using-the-query-store.md).  
  
3.  Wait sufficient time to collect representative data of the workload.  
  
4.  Change the compatibility level of the database to 130  
  
5.  Using SQL Server Management Studio, evaluate if there are performance regressions on specific queries after the compatibility level change  
  
6.  For cases where there are regressions, force the prior plan in the query store.  
  
7.  If there are query plans  that fail to force or if performance is still insufficient, consider reverting the compatibility level to the prior setting and then engaging Microsoft Customer Support.  
  
## See Also  
 [View or Change the Compatibility Level of a Database](../../../relational-databases/databases/view-or-change-the-compatibility-level-of-a-database.md)  
  
  