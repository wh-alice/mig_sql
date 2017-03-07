---
title: "Map Color Rules Dialog Box, General | Microsoft Docs"
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
  - "sql13.rtp.rptdesigner.shared.mapcolorrulesgeneral.f1"
  - "10541"
ms.assetid: 14ff5fc1-4cf8-4a45-9d98-47a1bf1c52c4
caps.latest.revision: 8
ms.author: "maggies"
manager: "erikre"
robots: noindex,nofollow
---
# Map Color Rules Dialog Box, General
  Select **General** on the **Color Rules Properties** dialog box to define color options for map elements on this layer. Map elements include polygons, lines, and points. Color rules can be applied when you have created a relationship between map elements based on spatial data and analytical data from a dataset field or from a spatial data source field.  
  
 To display all map elements on a layer by specifying a decorative gradient with different primary and secondary colors, use the **Fill** page of the Map Polygon Properties Dialog Box. Color rules take precedence over display properties for a layer. For more information, see [Customize the Data and Display of a Map or Map Layer &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/customize-the-data-and-display-of-a-map-or-map-layer-report-builder-and-ssrs.md).  
  
## Options  
 **Apply template style**  
 Select this option to use color based on the theme that was chosen in the wizard or set in the Polygon, Line, or Point layer properties. A theme sets default options for color, font, and borders for the map. For this option, no rule is applied to assign colors to each map element.  
  
 **Visualize data by using color palette**  
 Select this option to visualize analytical data by using colors from a specific color palette.  
  
 **Visualize data by using color ranges**  
 Select this option to visualize analytical data by using a range of colors for each map element. For example, when you specify Red as a start color, Yellow as a middle color, and Green as an end color, values in the low range are Red, values in the middle range are Yellow, and values in the top range are Green.  
  
 **Visualize data by using custom colors**  
 Select this option to visualize analytical data by specifying your own list of colors.  
  
 **Data field**  
 This option appears when you select one of the **Visualize data** options.  
  
 Select the analytical data field to use from the drop-down list. Depending on the source of spatial data, the list displays fields from the spatial data source and from a report dataset that has a relationship between the spatial data and analytical data. To create such a relationship, set the data options on the Analytical Data page for the selected map layer.  
  
 **Palette**  
 Type or select the name of the color palette.  
  
 **Start color**  
 Specify the color to use for data at the low end of the data range.  
  
 **Middle color**  
 Specify the color to use for data in the middle of the data range. Select **No Color** to remove this range.  
  
 **End color**  
 Specify the color to use for data at the high end of the data range.  
  
 **Add**  
 Click **Add** to specify your own colors for the color rule.  
  
## See Also  
 [Maps &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/maps-report-builder-and-ssrs.md)   
 [Change Map Legends, Color Scale, and Associated Rules &#40;Report Builder and SSRS&#41;](../reporting-services/report-design/change-map-legends-color-scale-and-associated-rules-report-builder-and-ssrs.md)  
  
  