---
title: "Create a Linked Report | Microsoft Docs"
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
helpviewer_keywords: 
  - "linked reports [Reporting Services], creating"
ms.assetid: 12be8341-cb57-45e8-a421-2bf66b50234d
caps.latest.revision: 44
ms.author: "asaxton"
manager: "erikre"
---
# Create a Linked Report
  A linked report is a report server item that provides an access point to an existing report. Conceptually, it is similar to a program shortcut that you use to run a program or open a file.  
  
 A linked report is derived from an existing report and retains the original's report definition. A linked report always inherits report layout and data source properties of the original report. All other properties and settings can be different from those of the original report, including security, parameters, location, subscriptions, and schedules.  
  
 You can create a linked report when you want to create additional versions of an existing report. For example, you could use a single regional sales report to create region-specific reports for all of your sales territories.  
  
 Although linked reports are typically based on parameterized reports, a parameterized report is not required. You can create linked reports whenever you want to deploy an existing report with different settings.  
  
### To create a linked report  
  
1.  In Report Manager, navigate to the folder containing the report that you want to link to, and then open the options menu can click **Create Linked Report**.  
  
2.  Type a name for the new linked report. Optionally type a description.  
  
3.  To select a different folder for the report, click **Change Location**. Click the folder you want to use, or type the folder name in the **Location** box. [!INCLUDE[clickOK](../../analysis-services/data-mining/includes/clickok-md.md)] If you do not select a different folder, the linked report is created in the current folder (where the report it is based on is stored).  
  
4.  [!INCLUDE[clickOK](../../analysis-services/data-mining/includes/clickok-md.md)] The linked report opens.  
  
     A linked report's icon differs from other items managed by a report server. The following icon indicates a linked report:  
  
     ![Linked report icon](../../reporting-services/report-server/media/hlp-16linked.gif "Linked report icon")  
  
## See Also  
 [Open and Close a Report &#40;Report Manager&#41;](../../reporting-services/reports/open-and-close-a-report-report-manager.md)   
 [New Linked Report Page &#40;Report Manager&#41;](http://msdn.microsoft.com/en-US/library/ms190170(SQL.130).aspx)   
 [Choose Item Location Page &#40;Report Manager&#41;](http://msdn.microsoft.com/en-US/library/ms181266(SQL.130).aspx)   
 [General Properties Page, Reports &#40;Report Manager&#41;](../Topic/General%20Properties%20Page,%20Reports%20\(Report%20Manager\).md)   
 [Reporting Services Concepts &#40;SSRS&#41;](../../reporting-services/reporting-services-concepts-ssrs.md)   
 [Report Manager  &#40;SSRS Native Mode&#41;](http://msdn.microsoft.com/en-US/library/ms157147(SQL.130).aspx)  
  
  