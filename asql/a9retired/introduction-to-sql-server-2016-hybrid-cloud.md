---
title: "Introduction to SQL Server 2016 Hybrid Cloud | Microsoft Docs"
ms.custom: ""
ms.date: "02/28/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: 6dc42752-1fcd-4ab9-8194-c3001ea342e7
caps.latest.revision: 8
ms.author: "jhubbard"
manager: "jhubbard"
robots: noindex,nofollow
---
# Introduction to SQL Server 2016 Hybrid Cloud
  Most applications have some key challenges, such as high efficiency, business value, complex hardware configurations, massive peaks on demand, and complying with industry and corporate regulations. Considering all these factors and building an enterprise-grade technology can be very challenging. Microsoft Hybrid Cloud Strategy provides support for traditional, private cloud, public cloud, and hybrid cloud environments to overcome these key challenges.  
  
 When your business requires a flexible IT infrastructure that can scale on demand, you can build a private cloud in your data center or a public cloud in Windows Azure global data centers. When you extend your data center to meet the public cloud, you build a hybrid cloud model.  
  
 This topic introduces the [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)] features that support Hybrid Cloud scenarios. For detailed information on Microsoft Hybrid Cloud Strategy and SQL Server, see [SQL Server Hybrid IT](http://www.microsoft.com/en-us/sqlserver/solutions-technologies/hybrid-It.aspx) web site.  
  
## SQL Server, Windows Azure, and Hybrid Cloud  
 By using Microsoft technologies, you can run code both on-premises and in the cloud, run in the cloud using on-premises data, or run entirely in the cloud leveraging more than one data center. Therefore, you can move your applications to the cloud at your own pace while preserving the value of existing legacy IT investments.  
  
 In this article, we’ll focus on the hybrid cloud scenarios that span from on-premises SQL Server to Windows Azure public cloud offerings: [SQL Server in Windows Azure Virtual Machines](http://msdn.microsoft.com/en-us/library/windowsazure/jj823132.aspx) and [Windows Azure Storage](http://www.windowsazure.com/en-us/documentation/services/storage/). Specifically, we’ll discuss the following scenarios:  
  
-   [Backup and Restore Databases to/from Windows Azure Storage](../a9retired/introduction-to-sql-server-2016-hybrid-cloud.md#backup)  
  
-   [Maintain Database Replicas on Windows Azure Virtual Machines](../a9retired/introduction-to-sql-server-2016-hybrid-cloud.md#replica)  
  
-   [Store SQL Server Data Files in Windows Azure Storage](../a9retired/introduction-to-sql-server-2016-hybrid-cloud.md#store)  
  
-   [Migrate existing SQL Server databases to Windows Azure Virtual Machines](../a9retired/introduction-to-sql-server-2016-hybrid-cloud.md#migrate)  
  
### Hybrid Cloud Scenarios for SQL Server and Windows Azure  
  
####  <a name="backup"></a> Backup and Restore Databases to/from Windows Azure Storage  
 One of the most fundamental administrator tasks is backing up and restoring databases. With SQL Server and Windows Azure, you can safely backup your databases in the cloud.  
  
 The key benefits of using the backup and restore capabilities of SQL Server with Windows Azure Storage as a backup destination include:  
  
-   Limitless low-cost storage  
  
-   Through the use of block blobs in [!INCLUDE[ssSQL15](../a9notintoc/includes/sssql15-md.md)], you can stripe your backup set to support backup files sizes up to 12.5 TB.  
  
-   Highly available storage (geographically replicated to ensure no data loss)  
  
-   Off-site storage that can support disaster recovery and compliance requirements  
  
-   Simplified remote backup and restore process  
  
 The following is a list of backup and restore capabilities of SQL Server for cloud and on-premises scenarios:  
  
-   The [SQL Server Backup to URL](../relational-databases/backup-restore/sql-server-backup-to-url.md) feature enables you to back up to Windows Azure Storage by specifying URL as the backup destination. With this feature, you can perform a manual backup or configure your own backup strategy like you would for a local storage or other off-site options.  
  
-   The [Backup Encryption](../relational-databases/backup-restore/backup-encryption.md) feature enables you to encrypt the data while creating a backup for your storage destinations: on-premises and Windows Azure Storage.  
  
-   The [Backup Compression &#40;SQL Server&#41;](../relational-databases/backup-restore/backup-compression-sql-server.md) feature enables you to create a backup, which is smaller than an uncompressed backup of the same data. Compressing a backup needs less device I/O and therefore usually increases backup speed significantly. This can bring great benefits when storing backup files in Windows Azure Storage.  
  
-   The [SQL Server Managed Backup to Microsoft Azure](../relational-databases/backup-restore/sql-server-managed-backup-to-microsoft-azure.md) feature enables you to automatically backup SQL Server databases to [Windows Azure Storage](http://www.windowsazure.com/en-us/documentation/services/storage/). With this feature, you can configure SQL Server to manage the backup strategy and schedule backups for a single database, or several databases, or set defaults at the instance level.  
  
-   The [SQL Server Backup to Windows Azure Tool](http://www.microsoft.com/en-us/download/details.aspx?id=40740) enables backup to Windows Azure Blob Storage and encrypts and compresses SQL Server backups stored locally or in the cloud. This tool enables a single cloud backup strategy across for several versions of SQL Server, such as SQL Server 2005, 2008, 2008 R2, and 2014.  
  
####  <a name="replica"></a> Maintain Database Replicas on Windows Azure Virtual Machines  
 Having a stable disaster recovery solution for your databases is essential for your business’s success. Most customers need to configure a disaster recovery site and purchase additional hardware for database replicas. With SQL Server and Windows Azure, you can maintain one or more replicas of your databases in the cloud.  
  
 The key benefits of maintaining secondary replicas in Windows Azure include:  
  
-   Low-cost disaster recovery solution  
  
-   Transparent application failover  
  
-   Available replicas to offload read workloads and backups  
  
 You can maintain secondary replicas in Windows Azure by using any of the following techniques:  
  
-   The [Add Azure Replica Wizard](http://msdn.microsoft.com/library/dn463980\(v=sql.120\).aspx) allows you to deploy one or more replicas of your databases to a virtual machine in Windows Azure for disaster recovery.  
  
-   AlwaysOn Availability Groups, database mirroring, and log shipping are the most common technologies that you can use to address your application’s high availability and disaster recovery needs. For information, see [High Availability and Disaster Recovery for SQL Server in Windows Azure Virtual Machines](http://msdn.microsoft.com/library/windowsazure/jj870962.aspx).  
  
####  <a name="store"></a> Store SQL Server Data Files in Windows Azure Storage  
 Storing on-premises SQL Server data files in Windows Azure Storage provides a flexible, reliable, and limitless off-site storage for your databases. Starting with SQL Server 2014, you can use a new feature, [SQL Server Data Files in Microsoft Azure](../relational-databases/databases/sql-server-data-files-in-microsoft-azure.md), to store SQL Server database files in Windows Azure Storage. With this feature, you can move data and log files from on-premises database into Windows Azure Storage, while keeping the compute node of SQL Server running on-premises. This feature enables you to have unlimited storage capacity in Windows Azure Storage.  
  
 The key benefits of storing SQL Server data files Windows Azure Storage include:  
  
-   Unlimited low-cost storage in Windows Azure Storage  
  
-   Best suited for offloading historical read workloads to the cloud to support on-premises reporting applications  
  
-   Facilitate disaster recovery by separating the compute instance (an instance of SQL Server) and the data (SQL Server data files). This allows you to easily attach the database to another instance of SQL Server in an on-premises environment or in a Windows Azure virtual machine in case of a disaster.  
  
####  <a name="migrate"></a> Migrate existing SQL Server databases to Windows Azure Virtual Machines  
 The cloud computing brings some key benefits to enterprises, such as limitless virtualized resources are available for you on a pay-per-use basis, you can leverage publicly available cloud data centers rather than building out and manage data centers on your own, and therefore you can lower IT and hardware costs.  
  
 With [SQL Server in Windows Azure Virtual Machines](http://msdn.microsoft.com/en-us/library/windowsazure/jj823132.aspx), you can move the existing on-premises applications to Windows Azure with minimal or no code changes. Administrators and developers can still use the same development and administration tools that are available on-premises.  
  
 Moving a database from on-premises SQL Server to SQL Server running in a Windows Azure Virtual Machine typically takes one of these paths:  
  
-   **Moving just the database:** There are several tools and techniques available to move existing on-premises databases to SQL Server in Windows Azure Virtual Machines. For guidelines and recommendations on migration to SQL Server in Windows Azure Virtual Machines, see [Getting Ready to Migrate to SQL Server in Windows Azure Virtual Machines](http://msdn.microsoft.com/library/dn133142.aspx) and also [Migrating to SQL Server in a Windows Azure Virtual Machine](http://msdn.microsoft.com/library/jj156165.aspx).  
  
     In addition, starting with SQL Server 2014, a new wizard, [Deploy a SQL Server Database to a Microsoft Azure Virtual Machine](../relational-databases/databases/deploy-a-sql-server-database-to-a-microsoft-azure-virtual-machine.md) is available for you to deploy the database to another SQL Server instance running in a Windows Azure Virtual Machine.  
  
-   **Moving the entire virtual machine:** You can bring your own SQL Server virtual machines to Windows Azure or create one by using the platform image.  
  
 Whether you move just the database or an entire virtual machine to Windows Azure, you can choose to either using attached disks or use the Azure Blob storage service. For comprehensive information and how-tos, see [SQL Server Deployment in Windows Azure Virtual Machines](http://msdn.microsoft.com/library/dn133141.aspx)and  [SQL Server Data Files in Microsoft Azure](../relational-databases/databases/sql-server-data-files-in-microsoft-azure.md). Storing SQL Server data files in Azure blobs enables you to use Azure snapshots to perform nearly instantaneous backups and quicker restores. For more information, see [File-Snapshot Backups for Database Files in Azure](../relational-databases/backup-restore/file-snapshot-backups-for-database-files-in-azure.md).  
  
 If you plan to move the application tiers (such as the presentation tier, the business tier, and the database tier) to Windows Azure Virtual Machines, we recommend that you review the recommendations given in the [Application Patterns and Development Strategies for SQL Server in Windows Azure Virtual Machines](http://msdn.microsoft.com/en-us/library/dn574746.aspx) article. The goal of this article is to provide solution architects and developers a foundation for good application architecture and design, which they can follow when migrating existing applications to Windows Azure as well as developing new applications in Windows Azure. For each application pattern, the article describes an on-premises scenario, its respective cloud-enabled solution, and the related technical recommendations. In addition, the article discusses Windows Azure specific development strategies so that you can design your applications correctly.  
  
## See Also  
 [SQL Server 2014 CTP2 Product Guide](http://www.microsoft.com/en-us/download/details.aspx?id=39269)   
 [SQL Server 2014](http://www.microsoft.com/en-us/sqlserver/sql-server-2014.aspx)   
 [Microsoft SQL Server Hybrid Cloud Blog Series](http://blogs.msdn.com/b/windowsazure/archive/2013/10/16/microsoft-sql-server-hybrid-cloud-blog-series.aspx)   
 [Migrating Data-Centric Applications to Windows Azure](http://msdn.microsoft.com/library/jj156154.aspx)  
  
  