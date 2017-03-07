---
title: "Start Pie Chart Values at the Top of the Pie (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: d0e6fb59-ca4e-4d70-97cb-0ad183da21d3
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
---
# Start Pie Chart Values at the Top of the Pie (Report Builder and SSRS)
In pie charts in [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] paginated reports, by default the first value in the dataset starts at 90 degrees from the top of the pie. 

![report-builder-pie-chart-start-at-90](../../reporting-services/report-design/media/report-builder-pie-chart-start-at-90.png)

*Chart values start at 90 degrees.*

You may want the first value start at the top instead. 

![report-builder-pie-chart-start-at-top](../../reporting-services/report-design/media/report-builder-pie-chart-start-at-top.png)

*Chart values start at the top of the chart.*
  
## To Start the Pie Chart at the Top of the Pie  
  
1.  Click the pie itself.  
  
2.  If the **Properties** pane is not open, on the **View** tab, click **Properties**.  
  
3.  In the **Properties** pane, under **Custom Attributes**, change **PieStartAngle** from **0** to **270**.  
  
4.  Click **Run** to preview your report.  
  
 The first value now starts at the top of the pie chart.  
  
## See Also  
 [Formatting a Chart &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-a-chart-report-builder-and-ssrs.md)   
 [Pie Charts &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/pie-charts-report-builder-and-ssrs.md)  
  
  