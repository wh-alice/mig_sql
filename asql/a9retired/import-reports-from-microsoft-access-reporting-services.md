---
title: "Import Reports from Microsoft Access (Reporting Services) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "Access reports [Reporting Services]"
  - "importing reports"
ms.assetid: 4f29d5b8-b77d-4714-a84a-05523df55646
caps.latest.revision: 39
ms.author: "carlasab"
manager: "erikre"
robots: noindex,nofollow
---
# Import Reports from Microsoft Access (Reporting Services)
  In Report Designer, you can import reports from a [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Access database or project. Access 2002 or a later version must be installed on the same computer on which Report Designer is installed.  
  
 When you use the import feature, all reports in the database or project file are imported. If your Access file contains many reports, you may want to create a separate report project into which to import the reports, and then open the individual RDL files in your main report project. You can edit the reports after they are imported into Report Designer.  
  
> [!NOTE]  
>  [!INCLUDE[ssRSnoversion](../a9notintoc/includes/ssrsnoversion-md.md)] does not support all Access report objects. Items that are not converted are displayed in the **Task List** window. For more information, see [Supported Access Report Features &#40;SSRS&#41;](../a9retired/supported-access-report-features-ssrs.md).  
  
### To import reports from Microsoft Access  
  
1.  Open or create a project into which to import the reports.  
  
2.  On the **Project** menu, point to **Import Reports**, and then click **Microsoft Access**. Alternatively, right-click the project in Solution Explorer, point to **Import Reports**, and then click **Microsoft Access**.  
  
3.  In the **Open** dialog box, select the Access database (.mdb, .accdb) or project (.adp) that contains the reports, and then click **Open**. All the reports in the database or project file are imported and listed in the Reports folder in Solution Explorer.  
  
4.  Check the **Task List** window for build errors. To view the **Task List** window, open the **View** menu, point to **Other Windows**, and then click **Task List**.  
  
## See Also  
 [Design Reports with Report Designer &#40;SSRS&#41;](../reporting-services/tools/design-reporting-services-paginated-reports-with-report-designer-ssrs.md)  
  
  