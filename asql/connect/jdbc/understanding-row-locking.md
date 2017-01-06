---
title: "Understanding Row Locking | Microsoft Docs"
ms.custom: ""
ms.date: "01/01/2017"
ms.prod: "sql-non-specified"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "drivers"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 63c76a2f-f2b9-461f-8904-acbda0169ac3
caps.latest.revision: 15
ms.author: "genemi"
manager: "jhubbard"
translation.priority.ht: 
  - "de-de"
  - "es-es"
  - "fr-fr"
  - "it-it"
  - "ja-jp"
  - "ko-kr"
  - "pt-br"
  - "ru-ru"
  - "sv-se"
  - "zh-cn"
  - "zh-tw"
---
# Understanding Row Locking
[!INCLUDE[Driver_JDBC_Download](../../connect/jdbc/includes)]

  The Microsoft JDBC Driver for SQL Server uses SQL Server row locks. These implement concurrency control among multiple users who are performing modifications in a database at the same time. By default, transactions and locks are managed on a per-connection basis. For example, if an application opens two JDBC connections, locks that are acquired by one connection cannot be shared with the other connection. Neither connection can acquire locks that would conflict with locks held by the other connection.  
  
> [!NOTE]  
>  If row locking is used, all rows in the fetch buffer are locked, so a very large setting for the fetch size can affect concurrency.  
  
 Locking is used to assure transactional integrity and database consistency. Locking prevents users from reading data that is being changed by other users, and prevents multiple users from changing the same data at the same time. If locking is not used, data within the database might become logically incorrect, and queries run against that data might produce unexpected results.  
  
> [!NOTE]  
>  For more information about row locking in SQL Server, see "Locking in the Database Engine" in SQL Server Books Online.  
  
## See Also  
 [Managing Result Sets with the JDBC Driver](../../connect/jdbc/managing-result-sets-with-the-jdbc-driver.md)  
  
  