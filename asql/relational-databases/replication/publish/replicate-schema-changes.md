---
title: "Replicate Schema Changes | Microsoft Docs"
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
  - "replication [SQL Server], schema changes"
  - "schemas [SQL Server replication], replicating changes"
ms.assetid: c09007f0-9374-4f60-956b-8a87670cd043
caps.latest.revision: 43
ms.author: "rickbyh"
manager: "jhubbard"
---
# Replicate Schema Changes
  This topic describes how to replicate schema changes in [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] by using [!INCLUDE[ssManStudioFull](../../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] or [!INCLUDE[tsql](../../../advanced-analytics/r-services/includes/tsql-md.md)].  
  
 If you make the following schema changes to a published article, they are propagated, by default, to [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Subscribers:  
  
-   ALTER TABLE  
  
-   ALTER VIEW  
  
-   ALTER PROCEDURE  
  
-   ALTER FUNCTION  
  
-   ALTER TRIGGER  
  
 **In This Topic**  
  
-   **Before you begin:**  
  
     [Limitations and Restrictions](#Restrictions)  
  
-   **To replicate schema changes, using:**  
  
     [SQL Server Management Studio](#SSMSProcedure)  
  
     [Transact-SQL](#TsqlProcedure)  
  
##  <a name="BeforeYouBegin"></a> Before You Begin  
  
###  <a name="Restrictions"></a> Limitations and Restrictions  
  
-   The ALTER TABLE … DROP COLUMN statement is always replicated to all Subscribers whose subscription contains the columns being dropped, even if you disable the replication of schema changes.  
  
##  <a name="SSMSProcedure"></a> Using SQL Server Management Studio  
 If you do not want to replicate schema changes for a publication, disable the replication of schema changes in the **Publication Properties - \<Publication>** dialog box. For more information about accessing this dialog box, see [View and Modify Publication Properties](../../../relational-databases/replication/publish/view-and-modify-publication-properties.md).  
  
#### To disable replication of schema changes  
  
1.  On the **Subscription Options** page of the **Publication Properties - \<Publication>** dialog box, set the value of the **Replicate schema changes** property to **False**.  
  
2.  [!INCLUDE[clickOK](../../../analysis-services/data-mining/includes/clickok-md.md)]  
  
     To propagate only specific schema changes, set the property to **True** before a schema change, and then set it to **False** after the change is made. Conversely, to propagate most schema changes, but not a given change, set the property to **False** before the schema change, and then set it to **True** after the change is made.  
  
##  <a name="TsqlProcedure"></a> Using Transact-SQL  
 You can use replication stored procedures to specify whether these schema changes are replicated. The stored procedure that you use depends on the type of publication.  
  
#### To create a snapshot or transactional publication that does not replicate schema changes  
  
1.  At the Publisher on the publication database, execute [sp_addpublication &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addpublication-transact-sql.md), specifying a value of **0** for **@replicate_ddl**. For more information, see [Create a Publication](../../../relational-databases/replication/publish/create-a-publication.md).  
  
#### To create a merge publication that does not replicate schema changes  
  
1.  At the Publisher on the publication database, execute [sp_addmergepublication &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-addmergepublication-transact-sql.md), specifying a value of **0** for **@replicate_ddl**. For more information, see [Create a Publication](../../../relational-databases/replication/publish/create-a-publication.md).  
  
#### To temporarily disable replicating schema changes for a snapshot or transactional publication  
  
1.  For a publication with replication of schema changes, execute [sp_changepublication &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-changepublication-transact-sql.md), specifying a value of **replicate_ddl** for **@property** and a value of **0** for **@value**.  
  
2.  Execute the DDL command on the published object.  
  
3.  (Optional) Re-enable replicating schema changes by executing [sp_changepublication &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-changepublication-transact-sql.md), specifying a value of **replicate_ddl** for **@property** and a value of **1** for **@value**.  
  
#### To temporarily disable replicating schema changes for a merge publication  
  
1.  For a publication with replication of schema changes, execute [sp_changemergepublication &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-changemergepublication-transact-sql.md), specifying a value of **replicate_ddl** for **@property** and a value of **0** for **@value**.  
  
2.  Execute the DDL command on the published object.  
  
3.  (Optional) Re-enable replicating schema changes by executing [sp_changemergepublication &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-changemergepublication-transact-sql.md), specifying a value of **replicate_ddl** for **@property** and a value of **1** for **@value**.  
  
## See Also  
 [Make Schema Changes on Publication Databases](../../../relational-databases/replication/publish/make-schema-changes-on-publication-databases.md)   
 [Make Schema Changes on Publication Databases](../../../relational-databases/replication/publish/make-schema-changes-on-publication-databases.md)  
  
  