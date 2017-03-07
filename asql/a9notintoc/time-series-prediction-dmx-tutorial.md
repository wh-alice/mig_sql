---
title: "Time Series Prediction DMX Tutorial | Microsoft Docs"
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
ms.assetid: 38ea7c03-4754-4e71-896a-f68cc2c98ce2
caps.latest.revision: 10
ms.author: "jeannt"
manager: "erikre"
robots: noindex,nofollow
---
# Time Series Prediction DMX Tutorial
In this tutorial, you will learn how to create a time series mining structure, create three custom time series mining models, and then make predictions by using those models.  
  
The mining models are based on the data contained in the  [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] sample database, which stores data for the fictitious company [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)]. [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)] is a large, multinational manufacturing company.  
  
## Tutorial Scenario  
[!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)] has decided to use data mining to generate sales projections. They have already built some regional forecasting models; for more information, see [Lesson 2: Building a Forecasting Scenario &#40;Intermediate Data Mining Tutorial&#41;](../a9notintoc/lesson-2-building-a-forecasting-scenario-intermediate-data-mining-tutorial.md). However, the Sales Department needs to be able to periodically update the data mining model with new sales data. They also want to customize the models to provide different projections.  
  
[!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] provides several tools that can be used to accomplish this task:  
  
-   The Data Mining Extensions (DMX) query language  
  
-   The Microsoft Time Series Algorithm  
  
-   Query Editor in [!INCLUDE[ssManStudioFull](../a9notintoc/includes/ssmanstudiofull-md.md)]  
  
The [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Time Series algorithm creates models that can be used for prediction of time-related data. Data Mining Extensions (DMX) is a query language provided by [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] that you can use to create mining models and prediction queries.  
  
## What You Will Learn  
This tutorial assumes that you are already familiar with the objects that [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] uses to create mining models. If you have not previously created a mining structure or mining model by using DMX, see [Bike Buyer DMX Tutorial](../a9notintoc/bike-buyer-dmx-tutorial.md).  
  
This tutorial is divided into the following lessons:  
  
[Lesson 1: Creating a Time Series Mining Model and Mining Structure](../a9notintoc/lesson-1-creating-a-time-series-mining-model-and-mining-structure.md)  
In this lesson, you will learn how to use the **CREATE MINING MODEL** statement to add a new forecasting model and a related mining model.  
  
[Lesson 2: Adding Mining Models to the Time Series Mining Structure](../a9notintoc/lesson-2-adding-mining-models-to-the-time-series-mining-structure.md)  
In this lesson, you will learn how to use the ALTER MINING STRUCTURE statement to add new mining models to the time series structure. You will also learn how to customize the algorithm used for analyzing a time series.  
  
[Lesson 3: Processing the Time Series Structure and Models](../a9notintoc/lesson-3-processing-the-time-series-structure-and-models.md)  
In this lesson, you will learn how to train the models by using the **INSERT INTO** statement and populating the structure with data from the [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] database.  
  
[Lesson 4: Creating Time Series Predictions Using DMX](../a9notintoc/lesson-4-creating-time-series-predictions-using-dmx.md)  
In this lesson, you will learn how to create time series predictions.  
  
[Lesson 5: Extending the Time Series Model](../a9notintoc/lesson-5-extending-the-time-series-model.md)  
In this lesson, you will learn how to use the **EXTEND_MODEL_CASES** parameter to update the model with new data when you make predictions.  
  
## Requirements  
Before doing this tutorial, make sure that the following are installed:  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)]  
  
-   The [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] database  
  
By default, the sample databases are not installed, to enhance security. To install the official sample databases for [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], go to [http://www.CodePlex.com/MSFTDBProdSamples](http://go.microsoft.com/fwlink/?LinkId=88417) or on the Microsoft SQL Server Samples and Community Projects home page in the section Microsoft SQL Server Product Samples. Click **Databases**, then click the **Releases** tab and select the databases that you want.  
  
> [!NOTE]  
> When you review tutorials, we recommend that you add **Next topic** and **Previous topic** buttons to the document viewer toolbar.  
  
## See Also  
[Basic Data Mining Tutorial](../a9notintoc/basic-data-mining-tutorial.md)  
[Intermediate Data Mining Tutorial &#40;Analysis Services - Data Mining&#41;](../a9notintoc/intermediate-data-mining-tutorial-analysis-services-data-mining.md)  
  
