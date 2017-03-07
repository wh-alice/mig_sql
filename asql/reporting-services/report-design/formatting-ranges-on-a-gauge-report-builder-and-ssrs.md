---
title: "Formatting Ranges on a Gauge (Report Builder and SSRS) | Microsoft Docs"
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
ms.assetid: ffdec8ca-3e95-41cd-850b-9e8c83be4b49
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
---
# Formatting Ranges on a Gauge (Report Builder and SSRS)
 In a [!INCLUDE[ssRSnoversion_md](../../a9notintoc/includes/ssrsnoversion-md.md)] paginated report, the gauge range is a zone or area on the gauge scale that indicates an important subsection of values on the gauge. Using a gauge range, you can visually indicate when the pointer value has gone into a certain span of values. Ranges are defined by a start value and an end value.  
  
 You can also use ranges to define different sections of a gauge. For example, on a gauge with values from 0 to 10, you can define a red range that has a value from 0 to 3, a yellow range that has a value from 4 to 7 and a green range that has a value from 8 to 10. If the start value that you specified is greater than the end value that you specified, the values are swapped so that the start value is the end value and the end value is the start value.  
  
 You can position the range in the same way that you position pointers on a scale. The **Position** and **Distance from scale** properties determine the position of the range. For more information, see [Gauges &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/gauges-report-builder-and-ssrs.md).  
  
> [!NOTE]  
>  [!INCLUDE[ssRBRDDup](../../a9retired/includes/ssrbrddup-md.md)]  
  
## See Also  
 [Formatting Scales on a Gauge &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-scales-on-a-gauge-report-builder-and-ssrs.md)   
 [Formatting Pointers on a Gauge &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/formatting-pointers-on-a-gauge-report-builder-and-ssrs.md)   
 [Set a Minimum or Maximum on a Gauge &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/set-a-minimum-or-maximum-on-a-gauge-report-builder-and-ssrs.md)   
 [Tutorial: Adding a KPI to Your Report &#40;Report Builder&#41;](../../reporting-services/tutorials/tutorial-adding-a-kpi-to-your-report-report-builder.md)   
 [Gauges &#40;Report Builder and SSRS&#41;](../../reporting-services/report-design/gauges-report-builder-and-ssrs.md)  
  
  