---
title: "Report History Page (Report Manager) | Microsoft Docs"
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
  - "SQL Server 2016"
ms.assetid: 4c64e58a-ed83-4e29-a422-9baaac2be4b8
caps.latest.revision: 24
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Report History Page (Report Manager)
  Use the Report History page to view report snapshots that are generated and stored over time. Depending on options that are set on the report server, report history may contain only the more recent snapshots.  
  
 Report history is always viewed within the context of the report from which it originates. You cannot view the history of all reports on a report server in one place.  
  
 To generate report history, the report must be able to run unattended (that is, it must use stored credentials; parameterized reports must contain default parameter values for all parameters). Report history can be generated manually or as a scheduled operation. History properties on the report determine the ways in which report history can be created.  
  
 You can click a report history snapshot to view it. Snapshots that appear in report history are distinguished only by the date and time at which they were created. There is no visual indication to distinguish whether a snapshot was generated in response to a schedule or a manual operation.  
  
> [!NOTE]  
>  This feature is not available in every edition of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. For a list of features that are supported by the editions of [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], see [Features Supported by the Editions of SQL Server 2016](../Topic/Features%20Supported%20by%20the%20Editions%20of%20SQL%20Server%202016.md).  
  
## Navigation  
 Use the following procedure to navigate to this location in the user interface (UI).  
  
### To open the Report History page  
  
1.  Open Report Manager, and locate the report for which you want to view report snapshots.  
  
2.  Hover over the report, and click the drop-down arrow.  
  
3.  In the drop-down menu, click **View Report History**.  
  
## Options  
 **Delete**  
 Click to delete one or more snapshots. Before clicking **Delete**, select the check box next to the snapshot that you want to delete.  
  
 **New Snapshot**  
 Click to add a snapshot to report history. This button is available when you choose the option **Allow history to be created manually** on the History properties page of the report.  
  
 **Last Run**  
 Displays the date and time at which the snapshot was created. Click a description to view a particular snapshot.  
  
 **Size**  
 Displays the size of the report definition plus the data in the report. This value indicates how much space in the report server database is used by the report definition and data. The size of the rendered report, which includes formatting, is actually larger. The total size, indicated in parentheses, sums the sizes of all snapshots in the report history for the current report.  
  
## See Also  
 [View or Delete Report History (Report Manager)](http://msdn.microsoft.com/en-us/44cb1e6f-a6b8-498a-8e8b-ca28e7ab1007)   
 [Add a Snapshot to Report History &#40;Report Manager&#41;](../reporting-services/report-server/add-a-snapshot-to-report-history-report-manager.md)   
 [General Properties Page, Reports &#40;Report Manager&#41;](../a9retired/general-properties-page-reports-report-manager.md)   
 [Report Manager F1 Help](../a9retired/report-manager-f1-help.md)   
 [Snapshot Options Properties Page &#40;Report Manager&#41;](../a9retired/snapshot-options-properties-page-report-manager.md)  
  
  