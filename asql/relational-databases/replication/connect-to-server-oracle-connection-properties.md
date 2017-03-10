---
title: "Connect to Server (Oracle), Connection Properties | Microsoft Docs"
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
  - "sql13.rep.oracleconnection.connectionprops.f1"
helpviewer_keywords: 
  - "Connect to Server dialog box, replication"
ms.assetid: 1bb7396f-cbb2-4f88-b82b-543287ed4172
caps.latest.revision: 16
ms.author: "rickbyh"
manager: "jhubbard"
---
# Connect to Server (Oracle), Connection Properties
  Use the **Connection Properties** tab of the **Connect to Server** dialog box to specify a publishing option of **Gateway** or **Complete**. After a Publisher is identified, this option cannot be changed without dropping and reconfiguring the Publisher. For more information, see [Configure an Oracle Publisher](../../relational-databases/replication/non-sql/configure-an-oracle-publisher.md).  
  
## Options  
 **Publisher type**  
 Select **Gateway** or **Complete**. The **Complete** option is designed to provide snapshot and transactional publications with the complete set of supported features for Oracle publishing. The **Gateway** option provides specific design optimizations to improve performance for cases where replication serves as a gateway between systems. The **Gateway** option cannot be used if you plan to publish the same table in multiple transactional publications. A table can appear in at most one transactional publication and any number of snapshot publications if you select **Gateway**.  
  
 **Timeouts**  
 Specify how long the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributor should attempt to connect to the Oracle Publisher before a timeout error occurs.  
  
## See Also  
 [Glossary of Terms for Oracle Publishing](../../relational-databases/replication/non-sql/glossary-of-terms-for-oracle-publishing.md)   
 [Performance Tuning for Oracle Publishers](../../relational-databases/replication/non-sql/performance-tuning-for-oracle-publishers.md)  
  
  