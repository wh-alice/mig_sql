---
title: "Tabular Modeling (Adventure Works Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-05-06"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
keywords: 
  - "Analysis Services"
  - "Tabular Model"
  - "Tutorial"
  - "SSAS"
ms.assetid: 140d0b43-9455-4907-9827-16564a904268
caps.latest.revision: 39
ms.author: "owend"
manager: "erikre"
---
# Tabular Modeling (Adventure Works Tutorial)
This tutorial provides lessons on how to create an Analysis Services tabular model at the [1200 compatibility level](../../analysis-services/tabular-models/compatibility-level-for-tabular-models-in-analysis-services.md) by using [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)], and deploy your model to an on-premises or Azure instance of Analysis Services.  
  
  
## What you'll learn   
  
-   How to create a new tabular model project in [!INCLUDE[ssBIDevStudio](../../analysis-services/includes/ssbidevstudio-md.md)].  
  
-   How to import data from a SQL Server relational database into a tabular model project.  
  
-   How to create and manage relationships between tables in the model.  
  
-   How to create and manage calculations, measures, and Key Performance Indicators that help users analyze model data.  
  
-   How to create and manage perspectives and hierarchies that help users more easily browse model data by providing business and application specific viewpoints.  
  
-   How to create partitions that divide table data into smaller logical parts that can be processed independent from other partitions.  
  
-   How to secure model objects and data by creating roles with user members.  
  
-   How to deploy a tabular model to an on-premises or Azure instance of Analysis Services.  
  
## Scenario  
This tutorial is based on [!INCLUDE[ssSampleDBCoFull](../../analysis-services/data-mining/includes/sssampledbcofull-md.md)], a fictitious company. [!INCLUDE[ssSampleDBCoFull](../../analysis-services/data-mining/includes/sssampledbcofull-md.md)] is a large, multinational manufacturing company that produces and distributes metal and composite bicycles to commercial markets in North America, Europe, and Asia. The headquarters for [!INCLUDE[ssSampleDBCoFull](../../analysis-services/data-mining/includes/sssampledbcofull-md.md)] is in Bothell, Washington, where the company employs 500 workers. Additionally, [!INCLUDE[ssSampleDBCoFull](../../analysis-services/data-mining/includes/sssampledbcofull-md.md)] employs several regional sales teams throughout its market base.  
  
To better support the data analysis needs of sales and marketing teams and of senior management, you are tasked with creating a tabular model for users to analyze internet sales data in the AdventureWorksDW sample database.  
  
In order to complete the tutorial, and the Adventure Works Internet Sales tabular model, you must complete a number of lessons. Within each lesson are a number of tasks; completing each task in order is necessary for completing the lesson. While in a particular lesson there may be several tasks that accomplish a similar outcome; however, how you complete each task is slightly different. This is to show that there is often more than one way to complete a particular task, and to challenge you by using skills you learned in previous tasks.  
  
The purpose of the lessons is to guide you through authoring a basic tabular model running in In-Memory mode by using many of the features included in [!INCLUDE[ssBIDevStudio](../../analysis-services/includes/ssbidevstudio-md.md)]. Because each lesson builds upon the previous lesson, you should complete the lessons in order. Once you have completed all of the lessons, you will have authored and deployed the Adventure Works Internet Sales sample tabular model on an Analysis Services server.  
  
This tutorial does not provide lessons or information about managing a deployed tabular model database by using SQL Server Management Studio, or using a reporting client application to connect to a deployed model to browse model data.  
  
## Prerequisites  
In order to complete this tutorial, you must have the following prerequisites:  
  
-   The latest version of [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)]. [Get the latest version](https://msdn.microsoft.com/library/mt204009.aspx).

-   The latest version of SQL Server Management Studio. [Get the latest version](https://docs.microsoft.com/sql/ssms/download-sql-server-management-studio-ssms). 
  
-   A client application such as [Power BI Desktop](https://powerbi.microsoft.com/desktop/) or [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] Excel.    
  
-   A SQL Server instance with the Adventure Works DW 2014 sample database. This sample database includes the data necessary to complete this tutorial. [Get the latest version](http://go.microsoft.com/fwlink/?LinkID=335807).  
  

-   An Azure Analysis Services or [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] Analysis Services instance to deploy your model to. [Sign up for a free Azure Analysis Services trial](https://azure.microsoft.com/services/analysis-services/).
  
## Lessons  
This tutorial includes the following lessons:  
  
|Lesson|Estimated time to complete|  
|----------|------------------------------|  
|Lesson 1: Create a New Tabular Model Project|10 minutes|  
|Lesson 2: Add Data|20 minutes|  
|Lesson 3: Mark as Date Table|3 minutes|  
|Lesson 4: Create Relationships|10 minutes|  
|Lesson 5: Create Calculated Columns|15 minutes|
|Lesson 6: Create Measures|30 minutes|  
|Lesson 7: Create Key Performance Indicators|15 minutes|  
|Lesson 8: Create Perspectives|5 minutes|  
|Lesson 9: Create Hierarchies|20 minutes|  
|Lesson 10: Create Partitions|15 minutes|  
|Lesson 11: Create Roles|15 minutes|  
|Lesson 12: Analyze in Excel|20 minutes| 
|Lesson 13: Deploy|5 minutes|  
  
## Supplemental lessons  
This tutorial also includes [Supplemental Lessons](http://msdn.microsoft.com/library/2018456f-b4a6-496c-89fb-043c62d8b82e). Topics in this section are not required to complete the tutorial, but can be helpful in better understanding advanced tabular model authoring features.  
  
|Lesson|Estimated time to complete|  
|----------|------------------------------|  
|[Implement Dynamic Security by Using Row Filters](../../analysis-services/tutorials/supplemental-lesson-implement-dynamic-security-by-using-row-filters.md)|30 minutes|  

  
## Next step  
To begin the tutorial, continue to the first lesson: [Lesson 1: Create a New Tabular Model Project](../../analysis-services/tutorials/lesson-1-create-a-new-tabular-model-project.md).  
  
  
  
