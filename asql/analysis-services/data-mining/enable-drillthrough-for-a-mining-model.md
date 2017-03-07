---
title: "Enable Drillthrough for a Mining Model | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "data mining [Analysis Services], how-to topics"
  - "drillthrough [Analysis Services]"
ms.assetid: 4fa44f60-ef9a-4b59-98c0-c0baf1195c8e
caps.latest.revision: 28
ms.author: "owend"
manager: "jhubbard"
---
# Enable Drillthrough for a Mining Model
  If you have enabled drillthrough for a mining model, when you browse the model you can retrieve detailed information about the cases that were used to create the model. To view this information, you must have the necessary permissions, and the structure must have already been processed.  
  
 **Permissions** For a user to drill through to either model data or structure data, the user must be a member of a role that has [AllowDrillThrough](../../analysis-services/scripting/properties/allowdrillthrough-element-assl.md) permissions on the mining model or mining structure. Drillthrough permissions are set separately on the structure and model.  
  
-   Drillthrough permissions on the model enable you to drill through from the model, even if you do not have permissions on the structure.  
  
-   Drillthrough permissions on the structure provide the additional ability to include structure columns in drillthrough queries from the model, by using the [StructureColumn &#40;DMX&#41;](../../dmx/structurecolumn-dmx.md) function. You can also query the training and test cases in the structure by using the SELECT… FROM \<structure>.CASES syntax.  
  
 **Caching of training cases** Drillthrough works by retrieving information about the training cases in the mining structure. This information is cached when the structure is processed. Therefore, if you choose to clear all cached data by changing the <xref:Microsoft.AnalysisServices.MiningStructureCacheMode> property to **ClearAfterProcessing**, drillthrough will not work.  
  
> [!NOTE]  
>  If the training cases have not been cached, you must change the <xref:Microsoft.AnalysisServices.MiningStructureCacheMode> property to **KeepTrainingCases** and then reprocess the model before you can view the case data.  
  
 For more information, see [Drillthrough Queries &#40;Data Mining&#41;](../../analysis-services/data-mining/drillthrough-queries-data-mining.md).  
  
### To enable drillthrough on a mining model  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], on the **Mining Models** tab of Data Mining Designer, right-click the name of the mining model on which you want to enable drillthrough, and select **Properties**.  
  
2.  In the **Properties** windows, click **AllowDrillthrough**, and select **True**.  
  
3.  In the **Mining Models** tab, right-click the model, and select **Process Model**.  
  
### To enable caching for a mining structure  
  
1.  In [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], on the **Mining Structure** tab of Data Mining Designer, right-click the name of the mining structure.  
  
2.  Open the **Properties** window.  
  
3.  In the **Properties** window, locate the **CacheMode** property, and select **KeepTrainingCases** from the list.  
  
4.  On the **Database** menu, select **Process**.  
  
## See Also  
 [Drillthrough Queries &#40;Data Mining&#41;](../../analysis-services/data-mining/drillthrough-queries-data-mining.md)  
  
  