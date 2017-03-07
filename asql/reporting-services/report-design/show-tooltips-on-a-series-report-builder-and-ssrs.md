---
title: "Show ToolTips on a Series (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: 4c9606ff-e1c3-4cf7-a4e7-bb16f1a9e8ab
caps.latest.revision: 8
ms.author: "maggies"
manager: "erikre"
---
# Show ToolTips on a Series (Report Builder and SSRS)
  You can add a ToolTip to each data point on the series of a chart to display information related to the data point, such as the group name, the value of the data point, or the percentage of the data point relative to the series total. When users hover over the data point in a rendered paginated report, they'll see this information.  
  
 You cannot add a ToolTip to a calculated series.  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../reporting-services/report-builder/includes/ssrbrddup-md.md)]  
  
## To specify a ToolTip on each data point  
  
1.  Right-click on the series or right-click on the field in the **Values** area, and click **Series Properties**.  
  
2.  Click **Series Data** and, for the **ToolTip** property, type in a string or expression. You can use any chart-specific keyword to represent another element on the chart. For more information, see [Formatting Data Points on a Chart &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-data-points-on-a-chart-report-builder-and-ssrs.md).  
  
## See Also  
 [Formatting Data Points on a Chart &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-data-points-on-a-chart-report-builder-and-ssrs.md)   
 [Change the Text of a Legend Item &#40;Report Builder and SSRS&#41;](../Topic/Change%20the%20Text%20of%20a%20Legend%20Item%20\(Report%20Builder%20and%20SSRS\).md)   
 [Formatting Series Colors on a Chart &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-series-colors-on-a-chart-report-builder-and-ssrs.md)   
 [Add a Drillthrough Action on a Report &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/add-a-drillthrough-action-on-a-report-report-builder-and-ssrs.md)  
  
  