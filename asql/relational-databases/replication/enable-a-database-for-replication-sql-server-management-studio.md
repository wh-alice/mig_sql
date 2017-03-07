---
title: "Enable a Database for Replication (SQL Server Management Studio) | Microsoft Docs"
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
  - "databases [SQL Server replication]"
ms.assetid: 8092faa3-9cff-4f81-926c-6a0070d1ce2c
caps.latest.revision: 33
ms.author: "rickbyh"
manager: "jhubbard"
---
# Enable a Database for Replication (SQL Server Management Studio)
  A database is implicitly enabled for replication when a member of the **sysadmin** fixed server role creates a publication with the New Publication Wizard. A member of the **sysadmin** fixed server role can also enable a database for replication explicitly, so that a member of the **db_owner** fixed database role can create one or more publications in that database. To enable a database explicitly, use the **Publication Databases** page of the **Publisher Properties - \<Publisher>** dialog box. For more information about accessing this dialog box, see [Create a Publication](../../relational-databases/replication/publish/create-a-publication.md).  
  
### To enable a database for replication  
  
1.  On the **Publication Databases** page of the **Publisher Properties - \<Publisher>** dialog box, select the **Transactional** and/or **Merge** check box for each database you want to replicate. Select **Transactional** to enable the database for snapshot replication.  
  
2.  [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
  