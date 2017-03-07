---
title: "Define and Modify a Column Filter | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "filters [SQL Server replication], column"
  - "modifying filters, column"
  - "modifying filters"
  - "column filters [SQL Server replication]"
ms.assetid: d7c3186a-9a8c-45d8-ab34-05beec4c26dd
caps.latest.revision: 40
ms.author: "rickbyh"
manager: "jhubbard"
---
# Define and Modify a Column Filter
  This topic describes how to define and modify a column filter in [!INCLUDE[ssCurrent](../../../a9notintoc/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../../a9notintoc/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../../a9notintoc/includes/tsql-md.md)].  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
-   **To define and modify a column filter, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   Some columns cannot be filtered; for more information, see [Filter Published Data](../../../relational-databases/replication/publish/filter-published-data.md). If you modify a column filter after subscriptions have been initialized, you must generate a new snapshot and reinitialize all subscriptions after making the change. For more information about requirements for property changes, see [Change Publication and Article Properties](../../../relational-databases/replication/publish/change-publication-and-article-properties.md).  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
 Define column filters on the **Articles** page of the New Publication Wizard. For more information about using the New Publication Wizard, see [Create a Publication](../../../relational-databases/replication/publish/create-a-publication.md).  
  
 Define and modify column filters on the **Articles** page of the **Publication Properties - \<Publication>** dialog box. For more information about publication and article properties, see [View and Modify Publication Properties](../../../relational-databases/replication/publish/view-and-modify-publication-properties.md).  
  
#### To define a column filter  
  
1.  On the **Articles** page of the New Publication Wizard, expand the table to be filtered in the **Objects to publish** pane.  
  
2.  Clear the check box next to each column you want to filter.  
  
#### To modify column filtering  
  
1.  On the **Articles** page of the **Publication Properties - \<Publication>** dialog box, expand the table to be filtered in the **Objects to publish** pane.  
  
2.  Clear the check box next to each column you want to filter, and ensure that the check box is selected for each column that should be included in the article.  
  
3.  [!INCLUDE[clickOK](../../../a9notintoc/includes/clickok-md.md)]  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
 When creating table articles, you can define which columns to include in the article and change the columns after the article has been defined. You can create and modify filtered columns programmatically using replication stored procedures.  
  
> [!NOTE]  
>  The following procedures assume that the underlying table has not changed. For information on replicating data definition language (DDL) changes to published tables, see [Make Schema Changes on Publication Databases](../../../relational-databases/replication/publish/make-schema-changes-on-publication-databases.md).  
  
#### To define a column filter for an article published in a snapshot or transactional publication  
  
1.  Define the article to filter. For more information, see [Define an Article](../../../relational-databases/replication/publish/define-an-article.md).  
  
2.  At the Publisher on the publication database, execute [sp_articlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-articlecolumn-transact-sql.md). This defines the columns to include or remove from the article.  
  
    -   If publishing only a few columns from a table with many columns, execute [sp_articlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-articlecolumn-transact-sql.md) once for each column being added. Specify the column name for **@column** and a value of **add** for **@operation**.  
  
    -   If publishing most of the columns in a table with many columns, execute [sp_articlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-articlecolumn-transact-sql.md), specifying a value of **null** for **@column** and a value of **add** for **@operation** to add all columns. Then execute [sp_articlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-articlecolumn-transact-sql.md), once for each column being excluded, specifying a value of **drop** for **@operation** and the excluded column name for **@column**.  
  
3.  At the Publisher on the publication database, execute [sp_articleview](../../../relational-databases/reference/system-stored-procedures/sp-articleview-transact-sql.md). Specify the publication name for **@publication** and the name of the filtered article for **@article**. This creates the synchronization objects for the filtered article.  
  
#### To change a column filter to include additional columns for an article published in a snapshot or transactional publication  
  
1.  At the Publisher on the publication database, execute [sp_articlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-articlecolumn-transact-sql.md) once for each column being added. Specify the column name for **@column** and a value of **add** for **@operation**.  
  
2.  At the Publisher on the publication database, execute [sp_articleview](../../../relational-databases/reference/system-stored-procedures/sp-articleview-transact-sql.md). Specify the publication name for **@publication** and the name of the filtered article for **@article**. If the publication has existing subscriptions, specify a value of **1** for **@change_active**. This re-creates the synchronization objects for the filtered article.  
  
3.  Rerun the Snapshot Agent job for the publication to generate an updated snapshot.  
  
4.  Reinitialize subscriptions. For more information, see [Reinitialize Subscriptions](../../../relational-databases/replication/reinitialize-subscriptions.md).  
  
#### To change a column filter to remove columns for an article published in a snapshot or transactional publication  
  
1.  At the Publisher on the publication database, execute [sp_articlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-articlecolumn-transact-sql.md) once for each column being removed. Specify the column name for **@column** and a value of **drop** for **@operation**.  
  
2.  At the Publisher on the publication database, execute [sp_articleview](../../../relational-databases/reference/system-stored-procedures/sp-articleview-transact-sql.md). Specify the publication name for **@publication** and the name of the filtered article for **@article**. If the publication has existing subscriptions, specify a value of **1** for **@change_active**. This re-creates the synchronization objects for the filtered article.  
  
3.  Rerun the Snapshot Agent job for the publication to generate an updated snapshot.  
  
4.  Reinitialize subscriptions. For more information, see [Reinitialize Subscriptions](../../../relational-databases/replication/reinitialize-subscriptions.md).  
  
#### To define a column filter for an article published in a merge publication  
  
1.  Define the article to filter. For more information, see [Define an Article](../../../relational-databases/replication/publish/define-an-article.md).  
  
2.  At the Publisher on the publication database, execute [sp_mergearticlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-mergearticlecolumn-transact-sql.md). This defines the columns to include or remove from the article.  
  
    -   If publishing only a few columns from a table with many columns, execute [sp_mergearticlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-mergearticlecolumn-transact-sql.md) once for each column being added. Specify the column name for **@column** and a value of **add** for **@operation**.  
  
    -   If publishing most of the columns in a table with many columns, execute [sp_mergearticlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-mergearticlecolumn-transact-sql.md), specifying a value of **null** for **@column** and a value of **add** for **@operation** to add all columns. Then execute [sp_mergearticlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-mergearticlecolumn-transact-sql.md), once for each column being excluded, specifying a value of **drop** for **@operation** and the excluded column name for **@column**.  
  
#### To change a column filter to include additional columns for an article published in a merge publication  
  
1.  At the Publisher on the publication database, execute [sp_mergearticlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-mergearticlecolumn-transact-sql.md) once for each column being added. Specify the column name for **@column**, a value of **add** for **@operation** and a value of **1** for both **@force_invalidate_snapshot** and **@force_reinit_subscription**.  
  
2.  Rerun the Snapshot Agent job for the publication to generate an updated snapshot.  
  
3.  Reinitialize subscriptions. For more information, see [Reinitialize Subscriptions](../../../relational-databases/replication/reinitialize-subscriptions.md).  
  
#### To change a column filter to remove columns for an article published in a merge publication  
  
1.  At the Publisher on the publication database, execute [sp_mergearticlecolumn](../../../relational-databases/reference/system-stored-procedures/sp-mergearticlecolumn-transact-sql.md) once for each column being removed. Specify the column name for **@column**, a value of **drop** for **@operation** and a value of **1** for both **@force_invalidate_snapshot** and **@force_reinit_subscription**.  
  
2.  Rerun the Snapshot Agent job for the publication to generate an updated snapshot.  
  
3.  Reinitialize subscriptions. For more information, see [Reinitialize Subscriptions](../../../relational-databases/replication/reinitialize-subscriptions.md).  
  
###  <a name="TsqlExample"></a> Example (Transact-SQL)  
 In this transactional replication example, the `DaysToManufacture` column is removed from an article based on the `Product` table.  
  
 [!code-sql[HowTo#sp_AddTranArticle](../../../a9retired/codesnippet/tsql/define-and-modify-a-colu_1.sql)]  
  
 In this merge replication example, the `CreditCardApprovalCode` column is removed from an article based on the `SalesOrderHeader` table.  
  
 [!code-sql[HowTo#sp_AddMergeArticle](../../../a9retired/codesnippet/tsql/define-and-modify-a-colu_2.sql)]  
  
## See Also  
 [Change Publication and Article Properties](../../../relational-databases/replication/publish/change-publication-and-article-properties.md)   
 [Filter Published Data](../../../relational-databases/replication/publish/filter-published-data.md)   
 [Filter Published Data for Merge Replication](../../../relational-databases/replication/merge/filter-published-data-for-merge-replication.md)  
  
  