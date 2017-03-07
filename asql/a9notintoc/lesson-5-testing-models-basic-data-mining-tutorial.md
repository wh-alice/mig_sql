---
title: "Lesson 5: Testing Models (Basic Data Mining Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016 Preview"
ms.assetid: e9a7ddcf-2b01-485f-bbb5-62638b303bc6
caps.latest.revision: 21
ms.author: "jeannt"
manager: "erikre"
robots: noindex,nofollow
---
# Lesson 5: Testing Models (Basic Data Mining Tutorial)
Now that you have processed the model by using the targeted mailing scenario training set, you will test your models against the testing set. Validation is an important step in the data mining process. Knowing how well your targeted mailing mining models perform against real data is important before you deploy the models into a production environment.  
  
Because the data in the testing set already contains known values for bike buying, it is easy to determine whether the model's predictions are correct. The model that performs the best will be used by the [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)] marketing department to identify the customers for their targeted mailing campaign.  
  
In this lesson you will validate your models using multiple methods:  
  
1.  You’ll make predictions against the testing set to see how accurate the model is on known results. You’ll use a *lift chart* to measure its effectiveness.  
  
    [Testing Accuracy with Lift Charts &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/testing-accuracy-with-lift-charts-basic-data-mining-tutorial.md)  
  
2.  You will test your models on a filtered subset of the data. You can compare multiple models in the same lift chart.  
  
    [Testing a Filtered Model &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/testing-a-filtered-model-basic-data-mining-tutorial.md)  
  
For more information about how model validation in general, see [Data Mining Concepts](../analysis-services/data-mining/data-mining-concepts.md).  
  
## First Task in Lesson  
[Testing Accuracy with Lift Charts &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/testing-accuracy-with-lift-charts-basic-data-mining-tutorial.md)  
  
## Previous Lesson  
[Lesson 4: Exploring the Targeted Mailing Models &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/lesson-4-exploring-the-targeted-mailing-models-basic-data-mining-tutorial.md)  
  
## Next Lesson  
[Lesson 6: Creating and Working with Predictions &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/lesson-6-creating-and-working-with-predictions-basic-data-mining-tutorial.md)  
  
## See Also  
[Lift Chart Tab &#40;Mining Accuracy Chart View&#41;](../a9retired/lift-chart-tab-mining-accuracy-chart-view.md)  
[Lift Chart &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/lift-chart-analysis-services-data-mining.md)  
[Testing and Validation &#40;Data Mining&#41;](../analysis-services/data-mining/testing-and-validation-data-mining.md)  
[Classification Matrix Tab &#40;Mining Accuracy Chart View&#41;](../a9retired/classification-matrix-tab-mining-accuracy-chart-view.md)  
[Classification Matrix &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/classification-matrix-analysis-services-data-mining.md)  
  
