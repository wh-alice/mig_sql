---
title: "Mining Model Viewers (Data Mining Model Designer) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "sql13.dm.miningmodeleditor.viewers.f1"
ms.assetid: 4ba391d5-c97b-4848-ba7c-7d096fa4b7dd
caps.latest.revision: 30
ms.author: "owend"
manager: "jhubbard"
robots: noindex,nofollow
---
# Mining Model Viewers (Data Mining Model Designer)
  Use the **Mining Model Viewer** tab to explore the mining models that a mining structure contains.  
  
 First you select the mining model and then you select a viewer. Each model always has two viewers available: a custom viewer, which can include multiple tabs, and the generic viewer.  
  
 For a walkthrough of how to use each viewer, see [Data Mining Model Viewers](../analysis-services/data-mining/data-mining-model-viewers.md).  
  
## Common Options  
 **Refresh viewer content**  
 Reload the mining model in the viewer.  
  
 **Mining Model**  
 Choose a mining model to view that is contained in the current mining structure. The mining model will first open in its associated custom viewer.  
  
 **Viewer**  
 Choose a viewer to use to explore the selected mining model. This list includes the viewers that [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] provides for each mining model, the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Mining Content Viewer, and any plug-in viewers.  
  
 The following diagram shows a custom viewer and the generic viewer for the same model.  
  
-   The upper diagram shows the viewer for a mining model based on the Microsoft Time Series algorithm. This particular custom viewer automatically creates a graph of the time series and provides five predictions.  
  
-   The lower diagram shows the same model displayed using the **Microsoft Generic Content Tree Viewer**. This viewer presents the contents of the mining model according to a standardized schema. For more information, see [Microsoft Generic Content Tree Viewer &#40;Data Mining&#41;](../a9retired/microsoft-generic-content-tree-viewer-data-mining.md).  
  
 ![Overview of mining model designer](../a9retired/media/generic-mining-model-tab1.gif "Overview of mining model designer")  
  
## Viewers and Their Components  
 Depending on the model that you select, you will see a different custom viewer, tailored to the algorithm that you used to create the selected data mining model. Each custom viewer has a variety of tools and dialog boxes for helping you explore the statistics and patterns in the model.  
  
 The following list describes the options in each of the custom viewers.  
  
### Microsoft Association Rules Algorithm  
  
-   [Browse a Model Using the Microsoft Association Rules Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-association-rules-viewer.md)  
  
    -   [Itemsets Tab &#40;Mining Model Viewer&#41;](../a9retired/itemsets-tab-mining-model-viewer.md)  
  
    -   [Rules Tab &#40;Mining Model Viewer&#41;](../a9retired/rules-tab-mining-model-viewer.md)  
  
    -   [Dependency Network Tab &#40;Mining Model Viewer&#41;](../a9retired/dependency-network-tab-mining-model-viewer.md)  
  
### Microsoft Clustering Algorithm  
  
-   [Browse a Model Using the Microsoft Cluster Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-cluster-viewer.md)  
  
    -   [Cluster Diagram Tab &#40;Mining Model Viewer&#41;](../a9retired/cluster-diagram-tab-mining-model-viewer.md)  
  
    -   [Cluster Profiles Tab &#40;Mining Model Viewer&#41;](../a9retired/cluster-profiles-tab-mining-model-viewer.md)  
  
    -   [Cluster Characteristics Tab &#40;Mining Model Viewer&#41;](../a9retired/cluster-characteristics-tab-mining-model-viewer.md)  
  
    -   [Cluster Discrimination Tab &#40;Mining Model Viewer&#41;](../a9retired/cluster-discrimination-tab-mining-model-viewer.md)  
  
    -   [Mining Legend Dialog Box &#40;Mining Model Viewer&#41;](../a9retired/mining-legend-dialog-box-mining-model-viewer.md)  
  
### Microsoft Decision Tree Algorithm  
  
-   [Browse a Model Using the Microsoft Tree Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-tree-viewer.md)  
  
    -   [Decision Tree Tab &#40;Mining Model Viewer&#41;](../a9retired/decision-tree-tab-mining-model-viewer.md)  
  
    -   [Dependency Network Tab &#40;Mining Model Viewer&#41;](../a9retired/dependency-network-tab-mining-model-viewer.md)  
  
    -   [Mining Legend Dialog Box &#40;Mining Model Viewer&#41;](../a9retired/mining-legend-dialog-box-mining-model-viewer.md)  
  
### Microsoft Linear Regression Algorithm  
  
-   [Browse a Model Using the Microsoft Neural Network Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-neural-network-viewer.md)  
  
    -   [Decision Tree Tab &#40;Mining Model Viewer&#41;](../a9retired/decision-tree-tab-mining-model-viewer.md)  
  
    -   [Dependency Network Tab &#40;Mining Model Viewer&#41;](../a9retired/dependency-network-tab-mining-model-viewer.md)  
  
    -   [Mining Legend Dialog Box &#40;Mining Model Viewer&#41;](../a9retired/mining-legend-dialog-box-mining-model-viewer.md)  
  
### Microsoft Logistic Regression Algorithm  
  
-   [Browse a Model Using the Microsoft Neural Network Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-neural-network-viewer.md)  
  
### Microsoft Naïve Bayes Algorithm  
  
-   [Browse a Model Using the Microsoft Naive Bayes Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-naive-bayes-viewer.md)  
  
    -   [Dependency Network Tab &#40;Mining Model Viewer&#41;](../a9retired/dependency-network-tab-mining-model-viewer.md)  
  
    -   [Attribute Profiles Tab &#40;Mining Model Viewer&#41;](../a9retired/attribute-profiles-tab-mining-model-viewer.md)  
  
    -   [Attribute Characteristics Tab &#40;Mining Model Viewer&#41;](../a9retired/attribute-characteristics-tab-mining-model-viewer.md)  
  
    -   [Attribute Discrimination Tab &#40;Mining Model Viewer&#41;](../a9retired/attribute-discrimination-tab-mining-model-viewer.md)  
  
### Microsoft Neural Network Algorithm  
  
-   [Browse a Model Using the Microsoft Neural Network Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-neural-network-viewer.md)  
  
    -   [Dependency Network Tab &#40;Mining Model Viewer&#41;](../a9retired/dependency-network-tab-mining-model-viewer.md)  
  
    -   [Neural Network &#40;Mining Model Viewer&#41;](../a9retired/neural-network-mining-model-viewer.md)  
  
    -   [Find Node Dialog Box &#40;Mining Model Viewer&#41;](../a9retired/find-node-dialog-box-mining-model-viewer.md)  
  
### Microsoft Sequence Clustering Algorithm  
  
-   [Browse a Model Using the Microsoft Sequence Cluster Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-sequence-cluster-viewer.md)  
  
    -   [Sequence Clustering Cluster Diagram Tab &#40;Mining Model Viewer](../a9retired/sequence-clustering-cluster-diagram-tab-mining-model-viewer.md)  
  
    -   [Sequence Clustering Cluster Profiles Tab &#40;Mining Model Viewer](../a9retired/sequence-clustering-cluster-profiles-tab-mining-model-viewer.md)  
  
    -   [Sequence Clustering Cluster Characteristics Tab &#40;Mining Model Viewer&#41;](../a9retired/sequence-clustering-cluster-characteristics-tab-mining-model-viewer.md)  
  
    -   [Sequence Clustering Cluster Discrimination Tab &#40;Mining Model Viewer&#41;](../a9retired/sequence-clustering-cluster-discrimination-tab-mining-model-viewer.md)  
  
    -   [Sequence Clustering Cluster Transition Tab &#40;Mining Model Viewer&#41;](../a9retired/sequence-clustering-cluster-transition-tab-mining-model-viewer.md)  
  
### Microsoft Time Series Algorithm  
  
-   [Browse a Model Using the Microsoft Time Series Viewer](../analysis-services/data-mining/browse-a-model-using-the-microsoft-time-series-viewer.md)  
  
    -   [Model Tab &#40;Mining Model Viewers&#41;](../a9retired/model-tab-mining-model-viewers.md)  
  
    -   [Chart Tab &#40;Mining Model Viewers&#41;](../a9retired/chart-tab-mining-model-viewers.md)  
  
    -   [Mining Legend Dialog Box &#40;Mining Model Viewer&#41;](../a9retired/mining-legend-dialog-box-mining-model-viewer.md)  
  
## See Also  
 [Mining Models View &#40;Data Mining Model Designer&#41;](../a9retired/mining-models-view-data-mining-model-designer.md)   
 [Mining Structure View &#40;Data Mining Model Designer&#41;](../a9retired/mining-structure-view-data-mining-model-designer.md)   
 [Mining Accuracy Chart Designer &#40;Data Mining&#41;](../a9retired/mining-accuracy-chart-designer-data-mining.md)   
 [Prediction Query Builder &#40;Data Mining&#41;](../a9retired/prediction-query-builder-data-mining.md)  
  
  