---
title: "Lesson 9: Build and Run the Application | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-18"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: f52d3f3a-0b09-4b34-9112-0b3655271587
caps.latest.revision: 9
ms.author: "asaxton"
manager: "erikre"
---
# Lesson 9: Build and Run the Application
After you create a data filter for the data table, your next step is to build and run the website application.  
  
### To build and run the application  
  
1.  Press **CTRL+F5** to run the Default.aspx page without debugging, or press F5 to run the page with debugging.  
  
    As part of the build process, the report is compiled and any errors found (such as a syntax error in an expression used in the report) are added to the **Task List** that is located at the bottom of the Visual Studio window.  
  
    The webpage appears in the browser. The ReportViewer control displays the report. You can use the toolbar to browse through the report, zoom, and export the report to Excel.  
  
2.  Hover the mouse over any of the rows under **Name** column. The mouse cursor will display a Hand symbol.  
  
3.  Select a value in the **Name** column. The child report is shown with the corresponding filtered data.  
  
4.  Select the icon, **Go back to parent report**, in the **ReportViewer** tool bar to navigate back to the **Parent** report.  
  
5.  Close the browser to exit.  
  
  
  
