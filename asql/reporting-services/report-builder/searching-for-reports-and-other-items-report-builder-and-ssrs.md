---
title: "Searching for Reports and Other Items (Report Builder  and SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 6a586659-5c2b-453b-8f40-a3a469277b17
caps.latest.revision: 7
ms.author: "asaxton"
manager: "erikre"
---
# Searching for Reports and Other Items (Report Builder  and SSRS)
  You can use Report Manager to search a report server for specific items by name or description. You can search for published reports, report models, folders, shared data sources, and resources. You cannot search for schedules, owners, role assignments, specific snapshots in report history, or subscriptions. The search is performed on the report server database where the items are stored.  
  
> [!NOTE]  
>  Performing a file system search will not return search results for items managed by a report server.  
  
-   To search for items in Report Manager, type a search string in the **Search for** text box at the top of the page. Searches begin at the top node in the folder hierarchy and then proceed through every branch. If you do not have permission to access a specific branch, that branch is skipped. This applies to My Reports folders that belong to other users, and to other folders that are not generally available. Only reports and items that you have permission to view are included in the search results.  
  
-   To search for an item by name or description, specify all or part of the text that you want to match. The search string is not case-sensitive. You cannot use search operators such as plus (+) or minus (–) symbols to require or exclude search criteria.  
  
-   To search for specific text within a report, use the toolbar at the top of the report.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
## See Also  
 [Finding and Viewing Reports in Report Manager &#40;Report Builder and SSRS&#41;](https://msdn.microsoft.com/library/dd255286.aspx)   
 [Using My Reports &#40;Report Builder and SSRS&#41;](../../reporting-services/report-builder/using-my-reports-report-builder-and-ssrs.md)   
 [Finding, Viewing, and Managing Reports &#40;Report Builder and SSRS &#41;](../../reporting-services/report-builder/finding-viewing-and-managing-reports-report-builder-and-ssrs.md)   
 [Open and Close a Report &#40;Report Manager&#41;](../../reporting-services/reports/open-and-close-a-report-report-manager.md)  
  
  