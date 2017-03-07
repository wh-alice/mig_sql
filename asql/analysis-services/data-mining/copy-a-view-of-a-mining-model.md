---
title: "Copy a View of a Mining Model | Microsoft Docs"
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
  - "clipboards [data mining]"
  - "Mining Model Viewer [Analysis Services], clipboards"
  - "copying mining models to clipboard"
ms.assetid: 768372db-e5b4-4990-b459-03d854fd9a6d
caps.latest.revision: 38
ms.author: "owend"
manager: "jhubbard"
---
# Copy a View of a Mining Model
  The **Mining Model Viewer** tab of Data Mining Designer in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] uses a separate viewer for each type of mining model. Several of the viewers have components from which you can copy the contents to the Clipboard, and from there paste the contents into a document or into image manipulation software. The following components make this functionality available:  
  
-   Cluster Diagram in the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Cluster Viewer and the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Sequence Cluster Viewer  
  
-   Decision Tree in the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Tree Viewer and the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Time Series Viewer  
  
-   State Transitions in the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Sequence Cluster Viewer  
  
-   Dependency Network in the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Association Rules Viewer, the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Naive Bayes Viewer, and the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Tree Viewer  
  
-   Mining model content, from the Node Details pane of the [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Generic Content Tree Viewer  
  
 You can copy the complete representation of the mining model, or just the part that is visible in the viewer.  
  
> [!WARNING]  
>  When you copy a model using the viewer, it does not create a new model object. To create a new model, you must use either the wizard, or the Data Mining Designer,. For more information, see [Make a Copy of a Mining Model](../../analysis-services/data-mining/make-a-copy-of-a-mining-model.md).  
  
### To copy the complete model to the Clipboard  
  
1.  From the **Mining Model** list on the **Mining Model Viewer** tab, select the mining model that you want to view.  
  
2.  Select the appropriate tab, such as the **Dependency Network** tab, and then click **Copy Entire Graph** on the toolbar of that tab.  
  
### To copy the visible piece of the model to the Clipboard  
  
1.  From the **Mining Model** list on the **Mining Model Viewer** tab, select the mining model that you want to view.  
  
2.  Select the appropriate tab, such as the **Dependency Network** tab, and then zoom in or out to view the model at the level that you want.  
  
3.  Click **Copy Graph View** on the toolbar of the selected tab.  
  
### To copy the mining model content to the Clipboard  
  
1.  From the **Mining Model** list on the **Mining Model Viewer** tab, select the mining model that you want to view.  
  
2.  From the **Viewer** drop-down list, select **Microsoft Generic Content Tree Viewer**.  
  
3.  In the **Node Caption (Unique ID)** pane, click a node.  
  
4.  Right-click the **Node Details** pane and then select **Select All**.  
  
5.  Right-click the **Node Details** pane again and select **Copy**.  
  
## See Also  
 [Mining Model Viewer Tasks and How-tos](../../analysis-services/data-mining/mining-model-viewer-tasks-and-how-tos.md)  
  
  