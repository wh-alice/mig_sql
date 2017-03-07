---
title: "Row Visibility Dialog Box (Report Builder) | Microsoft Docs"
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
  - "10126"
ms.assetid: 117fb20c-2fda-437e-bcc5-9010d6d4b53b
caps.latest.revision: 13
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Row Visibility Dialog Box (Report Builder)
  Use the **Row Visibility** dialog box to show or hide the selected row when the report is first run or to use another report item to toggle the visibility of the row.  
  
## Options  
 **When the report is initially run**  
 Select an option to indicate how the row is initially displayed in the report.  
  
 **Show**  
 Select this option to show the row.  
  
 **Hide**  
 Select this option to hide the row.  
  
 **Show or hide based on an expression**  
 Select this option to vary the initial visibility using an expression.  
  
 Type an expression that evaluates to a **Boolean** value of **True** to hide the item and **False** to show the item. Click the **Expression** (*fx*) button to edit the expression.  
  
 **Display can be toggled by this report item**  
 Choose this option to display a toggle image that enables the user to show or hide this row in an HTML report viewer.  
  
 Type or select the name of a text box in the report in which to display a toggle image; for example, Textbox1. The text box that you choose must be in the current or containing scope for this report item. For example, to toggle visibility of rows associated with a child group, select a text box in a row associated with the parent group. To toggle visibility of a chart, select a text box that is in the same containing scope as the chart; for example, the report body or a rectangle.  
  
## See Also  
 [Expression Examples &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/expression-examples-report-builder-and-ssrs.md)   
 [Add an Expand or Collapse Action to an Item &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/add-an-expand-or-collapse-action-to-an-item-report-builder-and-ssrs.md)   
 [Images &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/images-report-builder-and-ssrs.md)   
 [Report Builder Help for Dialog Boxes, Panes, and Wizards](http://msdn.microsoft.com/en-us/2da24891-0b6d-4d3c-8b18-81b98752642f)   
 [Image Properties Dialog Box, General &#40;Report Builder and SSRS&#41;](../a9retired/image-properties-dialog-box-general-report-builder-and-ssrs.md)  
  
  