---
title: "Storage Settings Dialog Box (Analysis Services - Multidimensional Data) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "sql13.asvs.cubeeditor.partitiondesigner.partitionstoragesettings.f1"
  - "sql13.asvs.cubeeditor.cubebuilder.measuregroupstoragesettings.f1"
ms.assetid: 80c41c71-226c-45fe-b9cf-af824b592fe1
caps.latest.revision: 21
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Storage Settings Dialog Box (Analysis Services - Multidimensional Data)
  Use the **Storage Settings** dialog box in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] to set the proactive caching, storage, and notification settings for a dimension, cube, measure group, or partition. You can display the **Storage Settings** dialog box in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)] by:  
  
-   Clicking the ellipsis button (**...**) for the **ProactiveCaching** property value of a dimension, cube, measure group, or partition in the **Properties** window of [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
-   Expanding a measure group in the **Partitions** tab of **Cube Designer** and clicking **Storage Settings**.  
  
-   Expanding a measure group and selecting a partition in the grid for that measure group in the **Partitions** tab of **Cube Designer** and clicking **Storage Settings**.  
  
-   Expanding a measure group and selecting a partition in the grid for that measure group in the **Partitions** tab of **Cube Designer** and clicking **Storage settings** in the **Toolbar** pane on the **Partitions** tab of **Cube Designer**.  
  
## Options  
  
|Term|Settings and Options Definition|Details|  
|----------|-------------------------------------|-------------|  
|**Standard setting**|Select to enable **Standard setting slider** and use predefined settings for storage mode and proactive caching features.||  
|**Standard setting slider**|Set to one of the following predefined settings:||  
||**Real-time ROLAP**|Select to use the following storage and proactive caching settings:<br /><br /> ROLAP storage mode<br /><br /> Enables proactive caching<br /><br /> Drops outdated cache, with a latency period of 0 seconds<br /><br /> Brings object online immediately|  
||**Real-time HOLAP**|Select to use the following storage and proactive caching settings:<br /><br /> HOLAP storage mode<br /><br /> Enables proactive caching<br /><br /> Drops outdated cache, with a latency period of 0 seconds<br /><br /> Updates cache when data changes, with a silence interval of 0 seconds and no silence override interval<br /><br /> Brings object online immediately|  
||**Low-latency MOLAP**|Select to use the following storage and proactive caching settings:<br /><br /> MOLAP storage mode<br /><br /> Enables proactive caching<br /><br /> Drops outdated cache, with a latency period of 30 minutes<br /><br /> Updates cache when data changes, with a silence interval of 10 seconds and a silence override interval of 10 minutes<br /><br /> Brings object online immediately|  
||**Medium-latency MOLAP**|Select to use the following storage and proactive caching settings:<br /><br /> MOLAP storage mode<br /><br /> Enables proactive caching<br /><br /> Drops outdated cache, with a latency period of 4 hours<br /><br /> Updates cache when data changes, with a silence interval of 10 seconds and a silence override interval of 10 minutes<br /><br /> Brings object online immediately|  
||**Automatic MOLAP**|Select to use the following storage and proactive caching settings:<br /><br /> MOLAP storage mode<br /><br /> Enables proactive caching<br /><br /> Updates cache when data changes, with a silence interval of 0 seconds and no silence override interval|  
||**Scheduled MOLAP**|Select to use the following storage and proactive caching settings:<br /><br /> MOLAP storage mode<br /><br /> Enable proactive caching<br /><br /> Updates cache periodically, with a rebuild interval of 1 day|  
||**MOLAP**|Select to use the following storage and proactive caching settings:<br /><br /> MOLAP storage mode|  
|**Custom setting**|Select to explicitly set storage mode, proactive caching, and notification options.||  
|**Options**|Click to display the **Storage Options** dialog box to explicitly set storage mode, proactive caching, and notification options.|For more information about the **Storage Options** dialog box, see [Storage Options Dialog Box &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/storage-options-dialog-box-analysis-services-multidimensional-data.md).|  
  
## See Also  
 [Analysis Services Designers and Dialog Boxes &#40;Multidimensional Data&#41;](../a9retired/analysis-services-designers-and-dialog-boxes-multidimensional-data.md)   
 [Proactive Caching &#40;Partitions&#41;](../analysis-services/multidimensional-models-olap-logical-cube-objects/partitions-proactive-caching.md)   
 [Cube Storage &#40;Analysis Services - Multidimensional Data&#41;](../analysis-services/multidimensional-models-olap-logical-cube-objects/cube-storage-analysis-services-multidimensional-data.md)  
  
  