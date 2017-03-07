---
title: "Lesson 3: Building a Market Basket Scenario (Intermediate Data Mining Tutorial) | Microsoft Docs"
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
helpviewer_keywords: 
  - "data mining [Analysis Services], tutorials"
  - "association algorithms [Analysis Services]"
  - "nested tables"
  - "tutorials [Data Mining]"
ms.assetid: 651eef38-772e-4d97-af51-075b1b27fc5a
caps.latest.revision: 27
ms.author: "jeannt"
manager: "erikre"
robots: noindex,nofollow
---
# Lesson 3: Building a Market Basket Scenario (Intermediate Data Mining Tutorial)
The marketing department of [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)] wants to improve the company Web site to promote cross-selling. As part of the site update, they would like the ability to predict products that a customer might want to purchase, based on the other products that are already in the customer's online shopping basket. The marketing department also wants to understand customer purchasing behavior better, so that they can design the Web site so that the items that tend to be purchased together appear together. They have learned that data mining is especially useful for this kind of *market basket analysis* and have asked you to develop a data mining model.  
  
After you complete the tasks in this lesson, you will have a mining model that shows groups of items from historical customer transactions. Additionally, you can use the mining model to predict additional items that a customer may want to purchase.  
  
To complete the tasks in this lesson, you will use the solution and data source that you created in the first lesson of the [Intermediate Data Mining Tutorial &#40;Analysis Services - Data Mining&#41;](../a9notintoc/intermediate-data-mining-tutorial-analysis-services-data-mining.md). You will modify this solution by adding a data source view that contains tables about the customer, including a nested table of customer purchases.  You will then build a mining model that uses the Microsoft Association Rules algorithm, which is suited to market basket scenarios.  
  
This lesson contains the following topics:  
  
-   [Adding a Data Source View with Nested Tables &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/adding-a-data-source-view-with-nested-tables-intermediate-data-mining-tutorial.md)  
  
-   [Creating a Market Basket Structure and Model &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/creating-a-market-basket-structure-and-model-intermediate-data-mining-tutorial.md)  
  
-   [Modifying and Processing the Market Basket Model &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/b6019413-aebd-4ff7-831a-644572ad88b1.md)  
  
-   [Exploring the Market Basket Models &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/exploring-the-market-basket-models-intermediate-data-mining-tutorial.md)  
  
-   [Filtering a Nested Table in a Mining Model &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/filtering-a-nested-table-in-a-mining-model-intermediate-data-mining-tutorial.md)  
  
-   [Predicting Associations &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/predicting-associations-intermediate-data-mining-tutorial.md)  
  
## Next Task in Lesson  
[Adding a Data Source View with Nested Tables &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/adding-a-data-source-view-with-nested-tables-intermediate-data-mining-tutorial.md)  
  
## All Lessons  
[Lesson 1: Creating the Intermediate Data Mining Solution &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/d8e3f89f-091c-434e-8f67-639f073edcdf.md)  
  
[Lesson 2: Building a Forecasting Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/lesson-2-building-a-forecasting-scenario-intermediate-data-mining-tutorial.md)  
  
Lesson 3: Market Basket Scenario (Intermediate Data Mining Tutorial)  
  
[Lesson 4: Building a Sequence Clustering Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/63436bbd-0f73-4012-b6f1-358c81e4d92a.md)  
  
[Lesson 5: Building Neural Network and Logistic Regression Models &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/42c3701a-1fd2-44ff-b7de-377345bbbd6b.md)  
  
## See Also  
[Basic Data Mining Tutorial](../a9notintoc/basic-data-mining-tutorial.md)  
[Lesson 2: Building a Forecasting Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/lesson-2-building-a-forecasting-scenario-intermediate-data-mining-tutorial.md)  
[Lesson 4: Building a Sequence Clustering Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/63436bbd-0f73-4012-b6f1-358c81e4d92a.md)  
  
