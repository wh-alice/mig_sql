---
title: "Working with Custom Maps | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.reviewer: ""
ms.suite: ""
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: cdaf25e2-66b7-48fd-9acf-1a7f8a654833
caps.latest.revision: 4
ms.author: "maggies"
robots: noindex,nofollow
---
# Working with Custom Maps
Connecting data to Custom Maps requires that the data be prepared in advance so that at least one field matches the region keys which are used in the Custom Map. In order to use a Custom Map it must first be uploaded to the server by the Hub owner. Please refer to [Implementing Custom Maps](../a9retired/implementing-custom-maps.md) and [Managing Custom Maps](Managing%20Custom%20Maps.md) for information on creating and installing custom maps on a [!INCLUDE[PRODUCT_NAME](../a9retired/includes/server-product-name.md)].  
  
## Loading a Custom Map  
  
Once a Map gallery element has been placed on the mobile report design surface it can be connected to a Custom Map by selecting either Custom Map From File or Custom Map from Server. Selecting one of these options will allow you to browse either the server or your local file system for a Custom map.  
  
<div class="image">  
  <img src="images/working_with_custom_maps_screen01.png" width="800" height="293" />  
  <p>Loading a custom map from a server or local file.</p>  
</div>  
  
When loading a custom map from your local file system you must select *two* files: a file with the extension .SHP (shape) and a matching file with the extension .DBF (data). These two files are required for connecting data to a custom map. When loading a custom map from a server, however, each map will be presented as a *single* option. Selection of individual .SHP and .DBF files is not required from server sources.  
  
## Connecting Data to a Custom Map  
  
Three data properties are required for configuring Map instances, these are accessible from the Data View page of the mobile report designer.  
  
In order to connect data to a custom Map the Keys property of the Map instance must be set to a data table field whose content matches the keys contained in the Map's data file. Map data keys in most cases will be region names.   
  
Once Map keys are connected to data a Value field can be set, and in the case of the Range Stop Heat Map a Comparison field can be set as well.  
  
Gradient Heat Maps display the Value properties as shades of a single color.  
  
Bubble Map Value properties determine the radius of a bubble visualization displayed over the associated region.  
  
Comparison fields for Range Stop Heat Maps will be used to determine the delta between the Comparison and the Value. The resulting delta will determine the color within a range which will fill the associated region of the map.  
