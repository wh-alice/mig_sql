---
title: "Map Parallel Properties Dialog Box, Labels | Microsoft Docs"
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
  - "sql13.rtp.rptdesigner.mapparallelproperties.labels.f1"
  - "10519"
ms.assetid: 4560a7e4-e19b-4a6e-8ef4-e963497e01ae
caps.latest.revision: 7
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Map Parallel Properties Dialog Box, Labels
  Use the **MapParallel Properties** dialog box to change label options for the horizontal grid in the map viewport. A parallel represents the following value depending on the specified coordinate system for the viewport:  
  
-   **Planar.** The X coordinate.  
  
-   **Geographic.** The latitude for the current projection.  
  
 Click the **Expression** (*fx*) button to edit an expression that sets the value of the option.  
  
## Options  
 **Interval**  
 Type an integer value in degrees that specifies the interval between parallels. By default, **Auto** is selected. If this option is set to **Auto**, the value is determined by the data from the map dataset.  
  
 **Show labels**  
 Select this option to display labels for the parallels.  
  
 **Placement**  
 Select a location to display the labels relative to the top, center, and bottom of the viewport. The default placement is **Near**.  
  
-   **Near** Display labels at the top.  
  
-   **One Quarter** Display labels half way between the top and the center.  
  
-   **Center** Display labels at the center.  
  
-   **Three Quarters** Display labels half way between the center and the bottom.  
  
-   **Far** Display labels at the bottom.  
  
## See Also  
 [Maps &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/maps-report-builder-and-ssrs.md)   
 [Change Map Legends, Color Scale, and Associated Rules &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/change-map-legends-color-scale-and-associated-rules-report-builder-and-ssrs.md)  
  
  