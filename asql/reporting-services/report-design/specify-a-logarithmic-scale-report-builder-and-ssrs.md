---
title: "Specify a Logarithmic Scale (Report Builder and SSRS) | Microsoft Docs"
ms.custom: ""
ms.date: "03/03/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: f3092c1c-b128-433d-9a95-983508b2a8d4
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
---
# Specify a Logarithmic Scale (Report Builder and SSRS)
  If you have data that is logarithmically proportional, you may want to consider using a logarithmic scale on a chart in a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] paginated report. This helps improve the appearance of the chart by making your data more manageable. Most logarithmic scales use a base of 10.  
  
 This feature is only available on the value axis. The value axis is usually the vertical, or y-axis. On bar charts, however, it is the horizontal, or x-axis.  
  
 If your axis is logarithmic, all other properties relating to the axis will be scaled logarithmically. For example, if you specify a base-10 logarithmic scale on your axis, setting an axis interval of 2 will generate intervals in magnitudes of 10 to the power of 2, or 100. This means your axis values will read 1, 100, 10000, instead of the default result of 1, 10, 100, 1000, 10000.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../a9retired/includes/ssrbrddup-md.md)]  
  
## To specify a logarithmic scale  
  
1.  Right-click the y-axis of your chart, and click **VerticalAxis Properties**. The **VerticalAxis Properties** dialog box appears.  
  
2.  In **Axis Options**, select **Uselogarithmic scale**.  
  
3.  In the **Logbase** text box, type a positive value for the logarithmic base. If no value is specified, the logarithmic base defaults to 10.  
  
## See Also  
 [Formatting Axis Labels on a Chart &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-axis-labels-on-a-chart-report-builder-and-ssrs.md)   
 [Formatting a Chart &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-a-chart-report-builder-and-ssrs.md)   
 [Format Axis Labels as Dates or Currencies &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/format-axis-labels-as-dates-or-currencies-report-builder-and-ssrs.md)   
 [Charts &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/charts-report-builder-and-ssrs.md)  
  
  