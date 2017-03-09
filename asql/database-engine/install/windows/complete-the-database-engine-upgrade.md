---
title: "Complete the Database Engine Upgrade | Microsoft Docs"
ms.custom: ""
ms.date: "2015-09-22"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "server-general"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 3f08087e-e532-416c-8caa-e0ec88c57596
caps.latest.revision: 10
ms.author: "mikeray"
manager: "jhubbard"
---
# Complete the Database Engine Upgrade
  After the upgrade to SQL Server 2016 is complete, there are a number of additional steps that you may need to take. These include the following:  
  
 After upgrading the [!INCLUDE[ssDE](../../../analysis-services/instances/install/windows/includes/ssde-md.md)], complete the following tasks:  
  
-   **Backup your databases:** Perform a full backup of each upgraded database.  
  
-   **Enable new features:** In SQL Server 2016, some changes are only enabled once the DATABASE_COMPATIBILITY level for a database has been changed to 130.  For more information and for the recommended workflow, see [Change the Database Compatibility Mode and Use the Query Store](../../../database-engine/install/windows/change-the-database-compatibility-mode-and-use-the-query-store.md).  
  
-   **Integration Services:**  
  
     Migrate Integration Services packages to [!INCLUDE[ssCurrent](../../../advanced-analytics/r-services/includes/sscurrent-md.md)] format. For more information, see [Upgrade Integration Services Packages](../../../integration-services/install/windows/upgrade-integration-services-packages.md).  
  
-   **Reporting Services:** For a new installation upgrade, restore the Reporting Services  encryption Keys. For more information, see [Back Up and Restore Reporting Services Encryption Keys](../../../reporting-services/install/windows/ssrs-encryption-keys-back-up-and-restore-encryption-keys.md).  
  
-   **Master Data Services:**  Upgrade the MDS database schema and create the SQL Server 2016 web application. For more information, see [Upgrade Master Data Services](../../../database-engine/install/windows/upgrade-master-data-services.md).  
  
-   **Data Quality Services:** Upgrade the DQS databases schema and verify the DQS databases schema upgrade. For more information, see [Upgrade Data Quality Services](../../../database-engine/install/windows/upgrade-data-quality-services.md).  
  
-   **Full Text Search:** Re-populate full-text catalogs to ensure semantic consistency in query results. For more information, see [Populate Full-Text Indexes](../../../relational-databases/search/populate-full-text-indexes.md).  
  
## Did this Article Help You? We’re Listening  
 What information are you looking for, and did you find it? We’re listening to your feedback to improve the content. Please submit your comments to [sqlfeedback@microsoft.com](mailto:sqlfeedback@microsoft.com?subject=Your%20feedback%20about%20the%20Complete%20the%20Database%20Engine%20Upgrade%20page)  
  
  