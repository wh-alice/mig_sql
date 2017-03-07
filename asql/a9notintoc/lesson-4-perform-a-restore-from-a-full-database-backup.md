---
title: "Lesson 4: Perform a Restore From a Full Database Backup | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 580f76e6-9802-4abc-9043-db6de592c733
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Lesson 4: Perform a Restore From a Full Database Backup
This lesson demonstrates the use of a tsql statement to perform a restore from a full database backup created in the previous lesson.  
  
## Perform a Restore of a Database Backup  
To restore a full database backup, use the following steps:  
  
1.  Connect to [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
2.  In the **Object Explorer**, connect to the instance of [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)].  
  
3.  On the Standard menu bar, click **New Query**.  
  
4.  Copy and paste the following example into the query window, modify as needed.  
  
    ```  
    RESTORE DATABASE AdventureWorks2012   
    FROM URL = 'https://mystorageaccount.blob.core.windows.net/privatecontainertest/AdventureWorks2012.bak'   
    WITH CREDENTIAL = 'mycredential';  
    , STATS = 5 – use this to see monitor the progress  
    GO  
  
    ```  
  
5.  Verify the T-SQL statement and click **Execute**  
  
For other tsql and C# code examples for database restore, see [Examples](../relational-databases/backup-restore/sql-server-backup-and-restore-with-microsoft-azure-blob-storage-service.md#Examples).  
  
### Return to Tutorials Portal  
[Tutorial: SQL Server Backup and Restore to Windows Azure Blob Storage Service](../Topic/Tutorial:%20SQL%20Server%20Backup%20and%20Restore%20to%20Windows%20Azure%20Blob%20Storage%20Service.md).  
  
