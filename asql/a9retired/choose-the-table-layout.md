---
title: "Choose the Table Layout | Microsoft Docs"
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
f1_keywords: 
  - "sql13.rtp.rptwizard.choosetablelayout.f1"
ms.assetid: 370079eb-4a13-42f6-8f90-8fb8adf4d55e
caps.latest.revision: 25
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Choose the Table Layout
  Use this page of the Report Wizard to select the layout of the table in the report.  
  
## Options  
 **Stepped**  
 Create a report that contains one column for each field, with group fields appearing in group headers to the left of the detail field columns. This type of table does not have group footers.  
  
 **Block**  
 Create a report that contains one column for each field, with group fields appearing in the first detail row for each group. This type of table has group footers only if **Include subtotals** is also selected.  
  
 **Include subtotals**  
 Choose this option to include a subtotal for the numeric fields in the report. If **Stepped** is selected, the subtotal is placed in the group header rows. If **Block** is selected, the subtotal appears in the group footer rows.  
  
 **Enable drilldown**  
 Choose this option to hide the inner groups of the report, and enable a visibility toggle, resulting in a drilldown report.  
  
## See Also  
 [Report Wizard Help](../a9retired/report-wizard-help.md)  
  
  