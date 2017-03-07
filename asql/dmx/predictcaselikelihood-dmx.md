---
title: "PredictCaseLikelihood (DMX) | Microsoft Docs"
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
  - "PredictCaseLikelihood"
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "PredictCaseLikelihood function"
ms.assetid: b00180e5-b2eb-49e2-891d-e39fb378f50a
caps.latest.revision: 39
ms.author: "owend"
manager: "erikre"
---
# PredictCaseLikelihood (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  This function returns the likelihood that an input case will fit in the existing model. Used only with clustering models.  
  
## Syntax  
  
```  
  
PredictCaseLikelihood([NORMALIZED|NONNORMALIZED])  
```  
  
## Arguments  
 NORMALIZED  
 Return value contains the probability of the case within the model divided by the probability of the case without the model.  
  
 NONNORMALIZED  
 Return value contains the raw probability of the case, which is the product of the probabilities of the case attributes.  
  
## Applies To  
 Models that are built by using the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Clustering and [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Sequence Clustering algorithms.  
  
## Return Type  
 Double-precision floating point number between 0 and 1. A number closer to 1 indicates that the case has a higher probability of occurring in this model. A number closer to 0 indicates that the case is less likely to occur in this model.  
  
## Remarks  
 By default, the result of the **PredictCaseLikelihood** function is normalized. Normalized values are typically more useful as the number of attributes in a case increase and the differences between the raw probabilities of any two cases become much smaller.  
  
 The following equation is used to calculate the normalized values, given x and y:  
  
-   x = likelihood of the case based on the clustering model  
  
-   y = Marginal case likelihood, calculated as the log likelihood of the case based on counting the training cases  
  
-   Z = Exp( log(x) – Log(Y))  
  
 Normalized = (z/ (1+z))  
  
## Examples  
 The following example returns the likelihood that the specified case will occur within the clustering model, which is based on the [!INCLUDE[ssSampleDBCoShort](../a9notintoc/includes/sssampledbcoshort-md.md)] DW database.  
  
```  
SELECT  
  PredictCaseLikelihood() AS Default_Likelihood,  
  PredictCaseLikelihood(NORMALIZED) AS Normalized_Likelihood,  
  PredictCaseLikelihood(NONNORMALIZED) AS Raw_Likelihood,  
FROM  
  [TM Clustering]  
NATURAL PREDICTION JOIN  
(SELECT 28 AS [Age],  
  '2-5 Miles' AS [Commute Distance],  
  'Graduate Degree' AS [Education],  
  0 AS [Number Cars Owned],  
  0 AS [Number Children At Home]) AS t  
```  
  
 Expected results:  
  
|Default_Likelihood|Normalized_Likelihood|Raw_Likelihood|  
|-------------------------|----------------------------|---------------------|  
|6.30672792729321E-08|6.30672792729321E-08|9.5824454056846E-48|  
  
 The difference between these results demonstrates the effect of normalization. The raw value for **CaseLikelihood** suggests that the probability of the case is about 20 percent; however, when you normalize the results, it becomes apparent that the likelihood of the case is very low.  
  
## See Also  
 [Data Mining Algorithms &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/data-mining-algorithms-analysis-services-data-mining.md)   
 [Data Mining Extensions &#40;DMX&#41; Function Reference](../dmx/data-mining-extensions-dmx-function-reference.md)   
 [Functions &#40;DMX&#41;](../dmx/functions-dmx.md)   
 [General Prediction Functions &#40;DMX&#41;](../dmx/general-prediction-functions-dmx.md)  
  
  