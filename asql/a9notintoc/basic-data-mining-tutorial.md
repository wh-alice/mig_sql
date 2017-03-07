---
title: "Basic Data Mining Tutorial | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "databases [Analysis Services], tutorials"
  - "data mining [Analysis Services], tutorials"
  - "tutorials [Data Mining]"
ms.assetid: 6602edb6-d160-43fb-83c8-9df5dddfeb9c
caps.latest.revision: 48
ms.author: "jeannt"
manager: "erikre"
robots: noindex,nofollow
---
# Basic Data Mining Tutorial
Welcome to the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] Basic Data Mining Tutorial. [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] provides an integrated environment for creating data mining models and making predictions. In this tutorial, you will complete a scenario for a targeted mailing campaign in which you use machine learning to analyze and predict customer purchasing behavior. The tutorial demonstrates how to use three of the most important data mining algorithms: clustering, decision trees, and Naive Bayes. You will also learn how to analyze your findings using the mining model viewers, and to create predictions and accuracy charts using the data mining tools that are included in [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)]. The fictitious company, [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)], is used for all examples.  
  
When you are comfortable using the data mining tools, we recommend that you also complete the [Intermediate Data Mining Tutorial &#40;Analysis Services - Data Mining&#41;](../a9notintoc/intermediate-data-mining-tutorial-analysis-services-data-mining.md). The lessons demonstrate how to use forecasting, market basket analysis, time series, association models, nested tables, and sequence clustering.  
  
## Tutorial Scenario  
In this tutorial, you are an employee of [!INCLUDE[ssSampleDBCoFull](../a9notintoc/includes/sssampledbcofull-md.md)] who has been tasked with learning more about the company's customers based on historical purchases, and then using that historical data to make predictions that can be used in marketing. The company has never done data mining before, so you must create a new database specifically for data mining and set up several data mining models.  
  
## What You Will Learn  
This tutorial teaches you how to create and work with several different types of machine learning methods. You will also learn how to create a copy of a mining model, and apply a filter to the input data to get different results. Afterwards you can compare the results of both models using a lift chart. Finally, you will use drillthrough to retrieve additional data from the underlying mining structure.  
  
[!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] Data Mining includes the following features that help you easily develop and compare multiple predictive models and then take actions on the results :  
  
-   *Holdout Test Sets -*When you create a mining structure, you can now divide the data in the mining structure into training and testing sets. This lets you test models on similar data sets, and compare the accuracy of related models.  
  
-   *Mining model filters -*You can now attach filters to a mining model, and apply the filter during both training and testing. This lets you easily build related models on different subsets of the data.  
  
-   *Drillthrough to Structure Cases and Structure Columns -* You can now easily move from the general patterns in the mining model to actionable detail in the data source.  
  
This tutorial is divided into the following lessons:  
  
[Lesson 1: Preparing the Analysis Services Database &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/lesson-1-preparing-the-analysis-services-database-basic-data-mining-tutorial.md)  
In this lesson, you will learn how to create a new [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] database, add a data source and data source view, and prepare the new database to be used with data mining.  
  
[Lesson 2: Building a Targeted Mailing Structure &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/lesson-2-building-a-targeted-mailing-structure-basic-data-mining-tutorial.md)  
In this lesson, you will learn how to create a mining model structure that can be used as part of a targeted mailing scenario.  
  
[Lesson 3: Adding and Processing Models](../a9notintoc/lesson-3-adding-and-processing-models.md)  
In this lesson you will learn how to add models to a structure. The models you create are built with the following algorithms:  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Decision Trees  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Clustering  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] Naive Bayes  
  
[Lesson 4: Exploring the Targeted Mailing Models &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/lesson-4-exploring-the-targeted-mailing-models-basic-data-mining-tutorial.md)  
In this lesson you will learn how to explore and interpret the findings of each model using the Viewers.  
  
[Lesson 5: Testing Models &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/lesson-5-testing-models-basic-data-mining-tutorial.md)  
In this lesson, you make a copy of one of the targeted mailing models, add a mining model filter to restrict the training data to a particular set of customers, and then assess the viability of the model.  
  
[Lesson 6: Creating and Working with Predictions &#40;Basic Data Mining Tutorial&#41;](../a9notintoc/lesson-6-creating-and-working-with-predictions-basic-data-mining-tutorial.md)  
In this final lesson of the Basic Data Mining Tutorial, you use the model to predict which customers are most likely to purchase a bike. You then drill through to the underlying cases to obtain contact information.  
  
## Requirements  
Make sure that the following are installed:  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)]  
  
-   [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] in multidimensional mode  
  
-   The [!INCLUDE[ssSampleDBDWobject](../a9notintoc/includes/sssampledbdwobject-md.md)] database.  
  
To enhance security, the sample databases are not installed with [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)]. To install the official databases for [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)], visit the [Microsoft SQL Sample Databases](http://go.microsoft.com/fwlink/?LinkId=88417) page and select [!INCLUDE[ssCurrent](../a9notintoc/includes/sscurrent-md.md)].  
  
## See Also  
[Data Mining Solutions](../analysis-services/data-mining/data-mining-solutions.md)  
[Mining Model Tasks and How-tos](../analysis-services/data-mining/mining-model-tasks-and-how-tos.md)  
[Creating and Querying Data Mining Models with DMX: Tutorials &#40;Analysis Services - Data Mining&#41;](../a9notintoc/145b81a7-c0c3-4ca3-bb32-0b482423b9a0.md)  
  
