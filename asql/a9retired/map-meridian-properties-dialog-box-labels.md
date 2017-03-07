---
title: "Map Meridian Properties Dialog Box, Labels | Microsoft Docs"
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
  - "sql13.rtp.rptdesigner.mapmeridianproperties.labels.f1"
  - "10518"
ms.assetid: 47650a82-3b0c-4e32-8565-e9332bdcf4d6
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Map Meridian Properties Dialog Box, Labels
  Use the **MapMeridian Properties** dialog box to change label options for the vertical grid in the map viewport. A meridian represents the following value depending on the specified coordinate system for the viewport:  
  
-   **Planar**. The Y coordinate.  
  
-   **Geographic**. The longitude for the current projection.  
  
 Click the **Expression** (*fx*) button to edit an expression that sets the value of the option.  
  
## Options  
 **Interval**  
 Type an integer value in degrees that specifies the interval between meridians. By default, **Auto** is selected. **Auto** indicates that value is automatically determined by spatial data.  
  
 **Show labels**  
 Select this option to display labels for the meridians.  
  
 **Placement**  
 Select a location to display the labels relative to the top, center, and bottom of the viewport. The default placement is **Near**.  
  
-   **Near** Display labels at the left edge.  
  
-   **One Quarter** Display labels half way between the left edge and the center.  
  
-   **Center** Display labels at the center.  
  
-   **Three Quarters** Display labels half way between the center and the right edge.  
  
-   **Far** Display labels at the right edge.  
  
## See Also  
 [Maps &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/maps-report-builder-and-ssrs.md)  
  
  