---
title: "Lesson 2: Building a Forecasting Scenario (Intermediate Data Mining Tutorial) | Microsoft Docs"
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
  - "time series [Analysis Services]"
  - "data mining [Analysis Services], tutorials"
  - "tutorials [Data Mining]"
ms.assetid: 9a988156-c900-4c22-97fa-f6b0c1aea9e2
caps.latest.revision: 31
ms.author: "jeannt"
manager: "erikre"
robots: noindex,nofollow
---
# Lesson 2: Building a Forecasting Scenario (Intermediate Data Mining Tutorial)
As the sales analyst for [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)], you have been asked to forecast the sales of products for the next year. In particular, you have been asked to compare forecasts for the different regions and product lines. Additionally, you have been asked to determine whether sales of different products vary depending on the time of the year.  
  
To find the requested information, in this lesson you will summarize the company's sales data at the monthly level, and you will also summarize sales figures by three regions: Europe, North America, and the Pacific.  
  
After you complete the tasks in this lesson, you will be able to answer the following questions:  
  
-   How do the sales of different bike models change over time?  
  
-   Are there differences between the patterns for sales in the three regions?  
  
-   Can we forecast sales peaks?  
  
The lesson can be completed in two parts:  
  
-   Part One introduces the basics of how to create and use a time series model.  
  
-   Part Two walks you through creation of a general time series model, based on all regions. You can use this general model for *cross-prediction*.  
  
To complete the tasks in this lesson, which are listed below, you will use the [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] data source that you created in [Lesson 1: Creating the Intermediate Data Mining Solution &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/d8e3f89f-091c-434e-8f67-639f073edcdf.md).  
  
> [!WARNING]  
> The dates in the [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)] sample database have been updated for this release. If you use an earlier version of [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)], you can build the model following these steps, but you might see different results.  
  
**Creating a Simple Forecasting Model**  
  
-   [Adding a Data Source View for Forecasting &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/adding-a-data-source-view-for-forecasting-intermediate-data-mining-tutorial.md)  
  
-   [Creating a Forecasting Structure and Model &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/creating-a-forecasting-structure-and-model-intermediate-data-mining-tutorial.md)  
  
-   [Modifying the Forecasting Structure &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/modifying-the-forecasting-structure-intermediate-data-mining-tutorial.md)  
  
-   [Customizing and Processing the Forecasting Model &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/4bd25e15-9d9e-4528-b7bc-ccb856643aec.md)  
  
-   [Exploring the Forecasting Model &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/exploring-the-forecasting-model-intermediate-data-mining-tutorial.md)  
  
-   [Creating Time Series Predictions &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/creating-time-series-predictions-intermediate-data-mining-tutorial.md)  
  
**Creating a General Forecasting Model for Cross-Prediction**  
  
-   [Advanced Time Series Predictions &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/advanced-time-series-predictions-intermediate-data-mining-tutorial.md)  
  
-   [Time Series Predictions using Updated Data &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/time-series-predictions-using-updated-data-intermediate-data-mining-tutorial.md)  
  
-   [Time Series Predictions using Replacement Data &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/a23a6e1d-1d49-41ea-8314-925dc8e4df5e.md)  
  
-   [Comparing Predictions for Forecasting Models &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/comparing-predictions-for-forecasting-models-intermediate-data-mining-tutorial.md)  
  
## Next Task in Lesson  
[Adding a Data Source View for Forecasting &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/adding-a-data-source-view-for-forecasting-intermediate-data-mining-tutorial.md)  
  
[Understanding the Requirements for a Time Series Model &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/1ce2b3e3-108a-4f7e-985f-a20b816d0da7.md)  
  
## All Lessons  
[Lesson 1: Creating the Intermediate Data Mining Solution &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/d8e3f89f-091c-434e-8f67-639f073edcdf.md)  
  
Lesson 2: Forecasting Scenario (Intermediate Data Mining Tutorial)  
  
[Lesson 3: Building a Market Basket Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/lesson-3-building-a-market-basket-scenario-intermediate-data-mining-tutorial.md)  
  
[Lesson 4: Building a Sequence Clustering Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/63436bbd-0f73-4012-b6f1-358c81e4d92a.md)  
  
[Lesson 5: Building Neural Network and Logistic Regression Models &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/42c3701a-1fd2-44ff-b7de-377345bbbd6b.md)  
  
## See Also  
[Basic Data Mining Tutorial](../a9notintoc/basic-data-mining-tutorial.md)  
[Intermediate Data Mining Tutorial &#40;Analysis Services - Data Mining&#41;](../a9notintoc/intermediate-data-mining-tutorial-analysis-services-data-mining.md)  
[Microsoft Time Series Algorithm](../analysis-services/data-mining/microsoft-time-series-algorithm.md)  
  
