---
title: "Plot Data on a Secondary Axis (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: 094f39bf-3634-4852-9fc3-3adec4b266e5
caps.latest.revision: 9
ms.author: "maggies"
manager: "erikre"
---
# Plot Data on a Secondary Axis (Report Builder and SSRS)
  The chart has two axis types: primary and secondary. The secondary axis is useful when comparing two value sets with two distinct data ranges that share a common category.  
  
 For example, suppose you have a chart that calculates Revenue vs. Tax for the year 2008. In this case, the 2008 time period is common to both value sets. However, when both series are plotted on the same y-axis, we cannot make a useful comparison because the scale of the y-axis is optimized for the largest values in the dataset. If we show Revenue on the primary axis, and Tax on the secondary axis, we can display each series on its own y-axis with its own scale of values. The series still share a common x-axis.  
  
 In situations where there are more than two series to be compared, consider a different approach for comparing and displaying multiple series in a chart. For more information, see [Multiple Series on a Chart &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/multiple-series-on-a-chart-report-builder-and-ssrs.md).  
  
 An example of this chart is available as a sample report. For more information about downloading this sample report and others, see [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)][Report Builder and Report Designer sample reports](http://go.microsoft.com/fwlink/?LinkId=198283).  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
### To plot a series on the secondary axis  
  
1.  Right-click the series in the chart or right-click on a field in the **Values** area that you want to display on the secondary axis and click **Series Properties**. The **Series Properties** dialog box appears.  
  
2.  Click **Axes and Chart Area**, and select which of the secondary axes you want to enable, the value axis or the category axis.  
  
## See Also  
 [Formatting Axis Labels on a Chart &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-axis-labels-on-a-chart-report-builder-and-ssrs.md)   
 [Specify an Axis Interval &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/specify-an-axis-interval-report-builder-and-ssrs.md)  
  
  