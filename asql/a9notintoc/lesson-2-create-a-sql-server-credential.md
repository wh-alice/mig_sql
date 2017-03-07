---
title: "Lesson 2: Create a SQL Server Credential | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 64f8805c-1ddc-4c96-a47c-22917d12e1ab
caps.latest.revision: 12
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Lesson 2: Create a SQL Server Credential
**Credential:** A [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] credential is an object that is used to store authentication information required to connect to a resource outside of SQL Server.  Here, [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] backup and restore processes use credential to authenticate to the Windows Azure Blob storage service. The Credential stores the name of the storage account and the storage account **access key** values. Once the credential is created, it must be specified in the WITH CREDENTIAL option when issuing the BACKUP/RESTORE statements. For more information about how to view, copy or regenerate storage account **access keys**, see [Storage Account Access Keys](https://docs.microsoft.com/azure/storage/storage-create-storage-account).  
  
For general information about credentials, see [Credentials](https://msdn.microsoft.com/library/ms161950.aspx).  
  
For information, on other examples where credentials are used, see [Create a SQL Server Agent Proxy](https://docs.microsoft.com/sql/ssms/agent/create-a-sql-server-agent-proxy).  
  
> [!IMPORTANT]  
> The requirements for creating a SQL Server credential described below are specific to SQL Server backup processes ([SQL Server Backup to URL](../relational-databases/backup-restore/sql-server-backup-to-url.md), and [SQL Server Managed Backup to Microsoft Azure](../relational-databases/backup-restore/sql-server-managed-backup-to-microsoft-azure.md)). SQL Server, when accessing Azure storage to write or read backups uses the storage account name and access key information.  For more information on creating credentials for storing database files in Azure storage, see [Lesson 2: Create a SQL Server credential using a shared access signature](../relational-databases/tutorials/lesson-2-create-a-sql-server-credential-using-a-shared-access-signature.md)  
  
## Create a SQL Server Credential  
To create a SQL Server Credential, use the following steps:  
  
1.  Connect to SQL Server Management Studio.  
  
2.  In Object Explorer, connect to the instance of Database Engine that has AdventureWorks2012 database installed, or use your own database you plan to use for this tutorial.  
  
3.  On the **Standard** tool bar, click **New Query**.  
  
4.  Copy and paste the following example into the query window, modify as needed.  
  
    ```  
    CREATE CREDENTIAL mycredential   
    WITH IDENTITY= 'mystorageaccount' – this is the name of the storage account you specified when creating a storage account (See Lesson 1)   
    , SECRET = '<storage account access key>' – this should be either the Primary or Secondary Access Key for the storage account (See Lesson 1)  
  
    ```  
  
    ![mapping storage account to sql credentials](../a9notintoc/media/backuptocloud-storage-credential-mapping.gif "mapping storage account to sql credentials")  
  
5.  Verify the T-SQL statement and click **Execute**.  
  
For more information about the Windows Azure Blob storage service for backup concepts and requirements, see [Introduction to Key Components and Concepts](../relational-databases/backup-restore/sql-server-backup-and-restore-with-microsoft-azure-blob-storage-service.md#intorkeyconcepts).  
  
### Next Lesson  
[Lesson 3: Write a Full Database Backup to the Windows Azure Blob Storage Service](../a9notintoc/lesson-3-write-a-full-database-backup-to-the-windows-azure-blob-storage-service.md).  
  
