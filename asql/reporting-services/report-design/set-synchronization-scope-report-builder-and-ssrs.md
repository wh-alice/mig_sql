---
title: "Set Synchronization Scope (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: 6f4a11e6-6151-47be-a43f-e3dbf6c0e737
caps.latest.revision: 8
ms.author: "maggies"
manager: "erikre"
---
# Set Synchronization Scope (Report Builder and SSRS)
  In a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] paginated report, indicators convey data values by synchronizing across the range of indicator values within a specified scope.   
    
  By default, the scope is the parent container of the indicator such as the table or matrix that contains the indicator. You can change the synchronization of the indicator depending on the layout of your report. For example, if a data region such as a table has a row group, you can specify the group as the indicator scope. The indicator can also omit synchronization.  
  
 Options such as measurement units can be set by using expressions. For more information, see [Expressions &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/expressions-report-builder-and-ssrs.md).  
  
 For general information about understanding and setting scope within reports, see [Expression Scope for Totals, Aggregates, and Built-in Collections &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/a8d24287-8557-4b03-bea7-ca087f449b62.md).  
  
## To change the synchronization scope of an indicator  
  
1.  Right-click the indicator you want to change and click **Indicator Properties**.  
  
2.  Click **Values and States** in the left pane.  
  
3.  In the **Synchronization scope** list, click the scope that you want to apply.  
  
     The **(None)** option, which removes synchronization scope from the indicator, is always available. Other options depend on the layout of your report.  
  
     Optionally, click the **Expression** (*fx*) button to edit an expression that sets the scope.  
  
4.  [!INCLUDE[clickOK](../../a9notintoc/includes/clickok-md.md)]  
  
## See Also  
 [Indicators &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/indicators-report-builder-and-ssrs.md)  
  
  