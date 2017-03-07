---
title: "Classification Matrix Tab (Mining Accuracy Chart View) | Microsoft Docs"
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
  - "sql13.dm.miningmodeleditor.accuracychart.confusionmatrix.f1"
ms.assetid: 85d5a047-d656-41e0-8a31-400271c2a620
caps.latest.revision: 24
ms.author: "owend"
manager: "jhubbard"
robots: noindex,nofollow
---
# Classification Matrix Tab (Mining Accuracy Chart View)
  The **Classification Matrix** tab displays a classification matrix for each model selected in the models grid on the **Column Mapping** tab. The classification matrix is only available if the predictable column that is selected in the **Column Mapping** tab is not continuous. For a more detailed description of the **Classification Matrix** tab, see [Testing and Validation &#40;Data Mining&#41;](../analysis-services/data-mining/testing-and-validation-data-mining.md).  
  
## Options  
 **Copy**  
 Copies the content of each classification matrix to the clipboard.  
  
 **Counts for \<model> on \< predictable column>**  
 Displays a classification matrix for each mining model in the mining structure. The matrix contains the following columns:  
  
|Value|Description|  
|-----------|-----------------|  
|**Predicted**|Contains a row for each state of the predictable column.|  
|**\<states> (actual)**|A column for each state in the predictable column. If the state of the row and the column correspond, the cell represents the actual number of times the state exists in the database. If they do not correspond, the cell represents the error of the prediction.|  
  
## See Also  
 [Mining Accuracy Chart Designer &#40;Data Mining&#41;](../a9retired/mining-accuracy-chart-designer-data-mining.md)   
 [Testing and Validation Tasks and How-tos &#40;Data Mining&#41;](../analysis-services/data-mining/testing-and-validation-tasks-and-how-tos-data-mining.md)   
 [Testing and Validation &#40;Data Mining&#41;](../analysis-services/data-mining/testing-and-validation-data-mining.md)  
  
  