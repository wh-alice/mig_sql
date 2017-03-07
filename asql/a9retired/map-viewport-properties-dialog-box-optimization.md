---
title: "Map Viewport Properties Dialog Box, Optimization | Microsoft Docs"
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
  - "10522"
  - "sql13.rtp.rptdesigner.mapviewport.optimization.f1"
ms.assetid: 8c0310ba-eedd-4c9f-95bd-1f9e2a1a8ed3
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Map Viewport Properties Dialog Box, Optimization
  Select **Optimization** for the **Map Viewport Properties** dialog box to help control the resolution for viewing a map in a report.  
  
 When spatial data is embedded in the report, higher resolution means more data is stored in the report. When spatial data is not embedded in the report, higher resolution means that the report processor spends more time creating the map details. Lower resolution means less time waiting for the report to render.  
  
 Click the **Expression** (*fx*) button to edit an expression that sets the value of the option.  
  
## Options  
 **Performance**  
 Slide the pointer closer to **Performance** to simplify the map and display less detail.  
  
 **Quality**  
 Slide the pointer closer to **Quality** to draw the map with greater detail.  
  
 **Map resolution**  
 Specify a map resolution. This value specifies the smallest detail that you want to see in the rendered map in points.  
  
## See Also  
 [Maps &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/maps-report-builder-and-ssrs.md)   
 [Troubleshoot Reports: Map Reports &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/troubleshoot-reports-map-reports-report-builder-and-ssrs.md)  
  
  