---
title: "Move Explicit Hierarchy Members (Master Data Services) | Microsoft Docs"
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
  - "staging process [Master Data Services], moving explicit hierarchy members"
  - "explicit hierarchies, moving members with staging"
  - "members [Master Data Services], moving with staging"
ms.assetid: f5361219-b1cc-453f-9bd2-8a6b0a96a3d9
caps.latest.revision: 7
ms.author: "carlasab"
manager: "jhubbard"
robots: noindex,nofollow
---
# Move Explicit Hierarchy Members (Master Data Services)
  In [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)], you can use the staging process to move the location of members in explicit hierarchies in bulk. You can designate:  
  
-   A consolidated member as a parent of a consolidated member.  
  
-   A consolidated member as a parent of a leaf member.  
  
-   A leaf member as a sibling of a leaf or consolidated member.  
  
-   A consolidated member as a sibling of a leaf or consolidated member.  
  
## Prerequisites  
 To perform this procedure:  
  
-   You must have permission to insert data into the stg.name_Relationship table in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
-   You must have permission to execute the stg.udp_name_Relationship stored procedure in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
-   The model must not have a status of **Committed**.  
  
### To move explicit hierarchy members  
  
1.  Prepare the members for import into the stg.name_Relationship table in the [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database. For more information about the required fields, see [Relationship Staging Table &#40;Master Data Services&#41;](../master-data-services/relationship-staging-table-master-data-services.md).  
  
2.  Open [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)] and connect to the [!INCLUDE[ssDE](../a9notintoc/includes/ssde-md.md)] instance for your [!INCLUDE[ssMDSshort](../a9notintoc/includes/ssmdsshort-md.md)] database.  
  
3.  Import the data into stg.name_Relationship. For information about importing data into a database by using [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../a9notintoc/includes/ssisnoversion-md.md)], see [SQL Server Import and Export Wizard](SQL%20Server%20Import%20and%20Export%20Wizard.md).  
  
4.  After you successfully import the data, run the stg.udp_name_Relationship stored procedure to load the staged data into the appropriate MDS tables. For more information about the stored procedure, see [Staging Stored Procedure &#40;Master Data Services&#41;](../master-data-services/staging-stored-procedure-master-data-services.md)  
  
## Next Steps  
  
-   View errors that occurred during staging. For more information, see [View Errors that Occur During Staging &#40;Master Data Services&#41;](../master-data-services/view-errors-that-occur-during-staging-master-data-services.md).  
  
## See Also  
 [Overview: Importing Data from Tables &#40;Master Data Services&#41;](../master-data-services/overview-importing-data-from-tables-master-data-services.md)   
 [Move Members within a Hierarchy &#40;Master Data Services&#41;](../Topic/Move%20Members%20within%20a%20Hierarchy%20\(Master%20Data%20Services\).md)   
 [Staging Process Errors &#40;Master Data Services&#41;](../master-data-services/staging-process-errors-master-data-services.md)   
 [Troubleshooting the Staging Process (Master Data Services)](http://social.technet.microsoft.com/wiki/contents/articles/troubleshooting-the-staging-process-master-data-services.aspx)  
  
  