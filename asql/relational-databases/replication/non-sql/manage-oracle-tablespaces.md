---
title: "Manage Oracle Tablespaces | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "replication"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Oracle publishing [SQL Server replication], managing tablespaces"
  - "tablespaces [SQL Server replication]"
ms.assetid: b8ea6c3b-01d6-4efc-bbfb-03b264530bbd
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# Manage Oracle Tablespaces
  A tablespace is a unit of database storage that is roughly equivalent to a file group in [!INCLUDE[msCoName](../../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../../advanced-analytics/r-services/includes/ssnoversion-md.md)]. Tablespaces allow storage and management of database objects within individual groups. For more information, see the Oracle documentation.  
  
 When you configure a table as part of an Oracle publication, you can optionally specify an existing Oracle tablespace to be used when storing replication logging information. If unspecified, the tablespace for the replication objects is the default tablespace associated with the replication administrative user schema that was configured when configuring the Publisher.  
  
 **To specify a tablespace for an article logging table**:  
  
-   Specify a tablespace in the **Article Properties** dialog box. For more information about accessing this dialog box, see [View and Modify Publication Properties](../../../relational-databases/replication/publish/view-and-modify-publication-properties.md).  
  
-   Use [sp_changearticle &#40;Transact-SQL&#41;](../../../relational-databases/reference/system-stored-procedures/sp-changearticle-transact-sql.md). To use **sp_changearticle**, specify the following:  
  
    -   The name of the Oracle Publisher for the parameter **@publisher**.  
  
    -   The name of the Oracle publication for the parameter **@publication**.  
  
    -   The name of the article for the parameter **@article**.  
  
    -   A value of 'tablespace' for the parameter **@property**.  
  
    -   The name of the tablespace for the parameter **@value**.  
  
## See Also  
 [Configure an Oracle Publisher](../../../relational-databases/replication/non-sql/configure-an-oracle-publisher.md)   
 [Objects Created on the Oracle Publisher](../../../relational-databases/replication/non-sql/objects-created-on-the-oracle-publisher.md)  
  
  