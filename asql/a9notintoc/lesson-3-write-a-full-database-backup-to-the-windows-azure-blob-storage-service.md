---
title: "Lesson 3: Write a Full Database Backup to the Windows Azure Blob Storage Service | Microsoft Docs"
ms.custom: ""
ms.date: "2016-12-12"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 454c8296-64e9-46ed-b141-5ebfbc8a4fe2
caps.latest.revision: 10
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Lesson 3: Write a Full Database Backup to the Windows Azure Blob Storage Service
This lesson demonstrates using a tsql statement to perform a full database backup to Azure Blob storage service.  
  
## Perform a Full Database Backup to the Azure Blob Storage Service  
To create a full database backup, use the following steps:  
  
1.  Connect to [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)].  
  
2.  In the **Object Explorer**, connect to the instance of [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)].  
  
3.  On the Standard menu bar, click **New Query**.  
  
4.  Copy and paste the following example into the query window, modify as needed, and click **Execute**.  
  
    ```  
    BACKUP DATABASE[AdventureWorks2012]   
    TO URL = 'https://mystorageaccount.blob.core.windows.net/privatecontainertest/AdventureWorks2012.bak'   
    /* URL includes the endpoint for the BLOB service, followed by the container name, and the name of the backup file*/   
    WITH CREDENTIAL = 'mycredential';  
    /* name of the credential you created in the previous step */   
    GO  
  
    ```  
  
5.  In the object explorer, connect to Azure Storage. Browse to find the container and the newly created backup files.  
  
For other tsql and C# code examples on database backup, see [Examples](../relational-databases/backup-restore/sql-server-backup-and-restore-with-microsoft-azure-blob-storage-service.md#Examples).  
  
## Next Lesson  
[Lesson 4: Perform a Restore From a Full Database Backup](../a9notintoc/lesson-4-perform-a-restore-from-a-full-database-backup.md).  
  
