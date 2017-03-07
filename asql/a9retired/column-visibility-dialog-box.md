---
title: "Column Visibility Dialog Box | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016"
f1_keywords: 
  - "10127"
  - "sql13.rtp.rptdesigner.columnvisibility.f1"
ms.assetid: ca59d1cd-d782-4298-aa61-4f312c32eb50
caps.latest.revision: 15
ms.author: "asaxton"
manager: "erikre"
robots: noindex,nofollow
---
# Column Visibility Dialog Box
Use the **Column Visibility** dialog box to show or hide the selected column when the report is first run or to use another report item to toggle the visibility of the column.

To open the Column Visibility dialog, right-click the column name in the grouping pane and select **Group Properties**, then click **Visibility**.
  
## Options  
 **When the report is initially run**  
 Select an option to indicate how the report item is initially displayed in the report.  
  
 **Show**  
 Choose this option to show the report item.  
  
 **Hide**  
 Choose this option to hide the report item.  
  
 **Show or hide based on an expression**  
 Choose this option to vary the initial visibility using an expression.  
  
 Type an expression that evaluates to a **Boolean** value of **True** to hide the item and **False** to show the item. Click the Expression (*fx*) button to edit the expression.  
  
 **Display can be toggled by this report item**  
 Choose this option to display a toggle image that enables the user to show or hide this report item in an HTML report viewer.  
  
 Type or select the name of a text box in the report in which to display a toggle image; for example, Textbox1. The text box that you choose must be in the current or containing scope for this report item. For example, to toggle visibility of rows associated with a child group, select a text box in a row associated with the parent group. To toggle visibility of a chart, select a text box that is in the same containing scope as the chart; for example, the report body or a rectangle.  
  
## See Also  
 [Expression Examples &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/expression-examples-report-builder-and-ssrs.md)   
 [Add an Expand or Collapse Action to an Item &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/add-an-expand-or-collapse-action-to-an-item-report-builder-and-ssrs.md)   
 [Images &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/images-report-builder-and-ssrs.md)   
 [Report Designer F1 Help](../reporting-services/tools/report-designer-f1-help.md)  
  
  