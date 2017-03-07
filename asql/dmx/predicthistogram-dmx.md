---
title: "PredictHistogram (DMX) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-03-02"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "PredictHistogram"
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "PredictHistogram function"
ms.assetid: 85ffc542-96e7-4f58-aaa3-34d76befcedf
caps.latest.revision: 34
ms.author: "owend"
manager: "erikre"
---
# PredictHistogram (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Returns a table that represents a histogram for the prediction of a given column.  
  
## Syntax  
  
```  
  
PredictHistogram(<scalar column reference> | <cluster column reference>)  
```  
  
## Applies To  
 A scalar column reference or a cluster column reference. Can be used with all algorithm types except the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Association algorithm.  
  
## Return Type  
 A table.  
  
## Remarks  
 A histogram generates statistics columns. The column structure of the returned histogram depends on the type of column reference that is used with the **PredictHistogram** function.  
  
## Scalar Columns  
 For a \<scalar column reference>, the histogram that the **PredictHistogram** function returns consists of the following columns:  
  
-   The value that is being predicted.  
  
-   **$Support**  
  
-   **$Probability**  
  
-   **$ProbabilityVariance**  
  
     [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] data mining algorithms do not support **$ProbabilityVariance**. This column always contains 0 for [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] algorithms.  
  
-   **$ProbabilityStdev**  
  
     [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] data mining algorithms do not support **$ProbabilityStdev**. This column always contains 0 for [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] algorithms.  
  
-   **$AdjustedProbability**  
  
     The **$AdjustedProbability** column is an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] extension to the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] OLE DB for Data Mining specification.  
  
## Cluster Columns  
 The histogram that the **PredictHistogram** function returns for a \<cluster column reference> consists of the following columns:  
  
-   **$Cluster** (represents the cluster name)  
  
-   **$Distance**  
  
-   **$Probability**  
  
## Examples  
 The following example returns the predicted state of the Bike Buyer column in a singleton query. The query also returns the top two most likely states of the Bike Buyer attribute, based on the adjusted probability obtained by using the **PredictHistogram** function.  
  
```  
SELECT  
  [TM Decision Tree].[Bike Buyer],  
  TopCount(PredictHistogram([Bike Buyer]),$AdjustedProbability,3)  
From  
  [TM Decision Tree]  
NATURAL PREDICTION JOIN  
(SELECT 28 AS [Age],  
  '2-5 Miles' AS [Commute Distance],  
  'Graduate Degree' AS [Education],  
  0 AS [Number Cars Owned],  
  0 AS [Number Children At Home]) AS t  
```  
  
## See Also  
 [Cluster &#40;DMX&#41;](../dmx/cluster-dmx.md)   
 [ClusterProbability &#40;DMX&#41;](../dmx/clusterprobability-dmx.md)   
 [PredictAdjustedProbability &#40;DMX&#41;](../dmx/predictadjustedprobability-dmx.md)   
 [PredictProbability &#40;DMX&#41;](../dmx/predictprobability-dmx.md)   
 [PredictStdev &#40;DMX&#41;](../dmx/predictstdev-dmx.md)   
 [PredictSupport &#40;DMX&#41;](../dmx/predictsupport-dmx.md)   
 [PredictVariance &#40;DMX&#41;](../dmx/predictvariance-dmx.md)   
 [Data Mining Algorithms &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/data-mining-algorithms-analysis-services-data-mining.md)   
 [Data Mining Extensions &#40;DMX&#41; Function Reference](../dmx/data-mining-extensions-dmx-function-reference.md)   
 [Functions &#40;DMX&#41;](../dmx/functions-dmx.md)   
 [General Prediction Functions &#40;DMX&#41;](../dmx/general-prediction-functions-dmx.md)  
  
  