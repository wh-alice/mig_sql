---
title: "PredictAssociation (DMX) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-09-14"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "language-reference"
f1_keywords: 
  - "PredictAssociation"
dev_langs: 
  - "DMX"
helpviewer_keywords: 
  - "PredictAssociation function"
ms.assetid: 33eb66b5-84c6-449f-aaae-316345bc4ad5
caps.latest.revision: 33
ms.author: "owend"
manager: "erikre"
---
# PredictAssociation (DMX)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx_md](../a9retired/includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

  Predicts associative membership.  
  
For example, you can use the PredictAssociation function to obtain the set of recommendations given the current state of the shopping basket for a customer. 
  
## Syntax  
  
```  
  
PredictAssociation(<table column reference>, option1, option2, n ...)  
```  
  
## Applies To  
 Algorithms that contain predictable nested tables, including association and some classification algorithms. Classification algorithms that support nested tables include the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Decision Trees, [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Naive Bayes, and [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Neural Network algorithms.  
  
## Return Type  
 \<table expression>  
  
## Remarks  
 The options for the **PredictAssociation** function include EXCLUDE_NULL, INCLUDE_NULL, INCLUSIVE, EXCLUSIVE (default), INPUT_ONLY, INCLUDE_STATISTICS, and INCLUDE_NODE_ID.  
  
> [!NOTE]  
>  INCLUSIVE, EXCLUSIVE, INPUT_ONLY, and INCLUDE_STATISTICS apply only for a table column reference, and EXCLUDE_NULL and INCLUDE_NULL apply only for a scalar column reference.  
  
 INCLUDE_STATISTICS only returns **$Probability** and **$AdjustedProbability**.  
  
 If the numeric parameter *n* is specified, the **PredictAssociation** function returns the top n most likely values based on the probability:  
  
```  
PredictAssociation(colref, [$AdjustedProbability], n)  
```  
  
 If you include **$AdjustedProbability**, the statement returns the top *n* values based on the **$AdjustedProbability**.  
  
## Examples  
 The following example uses the **PredictAssociation** function to return the four products in the Adventure Works database that are most likely to be sold together.  
  
```  
SELECT  
  PredictAssociation([Association].[v Assoc Seq Line Items],4)  
From  
  [Association]  
```  
The following example demonstrates how you can use a nested table as input to the prediction function, useing the SHAPE clause. The SHAPE query creates a rowset with customerId as one column and a nested table as a second column, which contains the list of products a customer has already brought. 

~~~~
SELECT T.[CustomerId], PredictAssociation(MyNestedTable, 5) // returns top 5 associated items
FROM My Model
PREDICTION JOIN
SHAPE {
    OPENQUERY([Adventure Works DW],'SELECT CustomerID, OrderNumber
    FROM vAssocSeqOrders ORDER BY OrderNumber')
} APPEND (
    {OPENQUERY([Adventure Works DW],'SELECT OrderNumber, model FROM 
    dbo.vAssocSeqLineItems ORDER BY OrderNumber, Model')}
  RELATE OrderNumber to OrderNumber) AS T
~~~~  

  
## See Also  
 [Data Mining Extensions &#40;DMX&#41; Function Reference](../dmx/data-mining-extensions-dmx-function-reference.md)   
 [Functions &#40;DMX&#41;](../dmx/functions-dmx.md)   
 [General Prediction Functions &#40;DMX&#41;](../dmx/general-prediction-functions-dmx.md)  
  
  