---
title: "Find a Specific Node in a Dependency Network | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "nodes [Analysis Services]"
  - "dependency network nodes [Analysis Services]"
  - "Mining Model Viewer [Analysis Services], dependency network nodes"
ms.assetid: 37c54602-ab25-48be-ae7a-59819deea8ed
caps.latest.revision: 26
ms.author: "owend"
manager: "jhubbard"
---
# Find a Specific Node in a Dependency Network
  A dependency network in a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] mining model can contain many nodes, making it difficult to locate the data you are interested in. To solve this problem, you can use the **Find Node** dialog box on the **Dependency Network** tab of Data Mining Designer to search for a specific node.  
  
### To find a specific node in a dependency network  
  
1.  On the **Mining Model Viewer** tab of **Data Mining Designer** in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], click **Find Node** on the toolbar of the **Dependency Network** tab of the mining model viewer.  
  
     The **Find Node** dialog box opens.  
  
2.  In the **Node name contains** box, enter part of the name of the node for which you want to search.  
  
     The list of nodes is filtered to display only those nodes that contain part of the search path.  
  
3.  Select the correct node from the list, and then click **OK**.  
  
## See Also  
 [Mining Model Viewer Tasks and How-tos](../../analysis-services/data-mining/mining-model-viewer-tasks-and-how-tos.md)  
  
  