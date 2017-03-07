---
title: "Load or Update Members (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "leaf members [Master Data Services], creating with staging"
  - "staging process [Master Data Services], creating members"
  - "creating leaf members with staging [Master Data Services]"
  - "consolidated members [Master Data Services], creating with staging"
  - "members [Master Data Services], creating consolidated members with staging"
  - "creating consolidated members with staging [Master Data Services]"
  - "members [Master Data Services], creating leaf members with staging"
ms.assetid: bcd7332e-2a60-4e27-a760-383e8ebb23a2
caps.latest.revision: 8
ms.author: "carlasab"
manager: "jhubbard"
robots: noindex,nofollow
---
# Load or Update Members (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], you can use the staging process to create, update, and delete members in bulk. You can also use the staging process to set and update attribute values.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to insert data into the stg.name_Leaf (for leaf members) or the stg.name_Consolidated (for consolidated members) table in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
-   You must have permissions to execute either the stg.udp_name_Leaf (for leaf members) or stg.udp_name_Consolidated (for consolidated members) stored procedure in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
-   The model must not have a status of **Committed**.  
  
### To load members into the MDS database  
  
1.  Prepare the members for import into the appropriate staging table in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
    -   For leaf members, use stg.name_Leaf. For more information about the required fields, see [Leaf Member Staging Table &#40;Master Data Services&#41;](../master-data-services/leaf-member-staging-table-master-data-services.md).  
  
    -   For consolidated members, use stg.name_Consolidated. For more information about the required fields, see [Consolidated Member Staging Table &#40;Master Data Services&#41;](../master-data-services/consolidated-member-staging-table-master-data-services.md)  
  
2.  Open [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] and connect to the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] instance for your [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
3.  Import the data into the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database. For information about importing data into a database by using [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)], see [SQL Server Import and Export Wizard](SQL%20Server%20Import%20and%20Export%20Wizard.md).  
  
4.  After you successfully import the data, run the stored procedure to load the staged data into the appropriate tables in the MDS database. For more information on the stored procedure, see [Staging Stored Procedure &#40;Master Data Services&#41;](../master-data-services/staging-stored-procedure-master-data-services.md).  
  
## Next Steps  
  
-   View errors that occurred during staging. For more information, see [View Errors that Occur During Staging &#40;Master Data Services&#41;](../master-data-services/view-errors-that-occur-during-staging-master-data-services.md).  
  
## See Also  
 [Overview: Importing Data from Tables &#40;Master Data Services&#41;](../master-data-services/overview-importing-data-from-tables-master-data-services.md)   
 [Staging Process Errors &#40;Master Data Services&#41;](../master-data-services/staging-process-errors-master-data-services.md)   
 [Troubleshooting the Staging Process (Master Data Services)](http://social.technet.microsoft.com/wiki/contents/articles/troubleshooting-the-staging-process-master-data-services.aspx)  
  
  