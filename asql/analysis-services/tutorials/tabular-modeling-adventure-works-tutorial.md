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
caps.latest.revision: 37
ms.author: "owend"
manager: "erikre"
---
# Tabular Modeling (Adventure Works Tutorial)
This tutorial provides lessons on how to create an Analysis Services tabular model at the [1200 compatibility level](../../analysis-services/tabular-models/compatibility-level-for-tabular-models-in-analysis-services.md) by using [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)], and deploy your model to an on-premises or Azure instance of Analysis Services.  
  
  
## What you'll learn   
  
-   How to create a new tabular model project in [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)].  
  
-   How to import data from a SQL Server relational database into a tabular model project.  
  
-   How to create and manage relationships between tables in the model.  
  
-   How to create and manage calculations, measures, and Key Performance Indicators that help users analyze model data.  
  
-   How to create and manage perspectives and hierarchies that help users more easily browse model data by providing business and application specific viewpoints.  
  
-   How to create partitions that divide table data into smaller logical parts that can be processed independent from other partitions.  
  
-   How to secure model objects and data by creating roles with user members.  
  
-   How to deploy a tabular model to an on-premises or Azure instance of Analysis Services.  
  
## Scenario  
This tutorial is based on [!INCLUDE[ssSampleDBCoFull](../../a9notintoc/includes/sssampledbcofull-md.md)], a fictitious company. [!INCLUDE[ssSampleDBCoFull](../../a9notintoc/includes/sssampledbcofull-md.md)] is a large, multinational manufacturing company that produces and distributes metal and composite bicycles to commercial markets in North America, Europe, and Asia. The headquarters for [!INCLUDE[ssSampleDBCoFull](../../a9notintoc/includes/sssampledbcofull-md.md)] is in Bothell, Washington, where the company employs 500 workers. Additionally, [!INCLUDE[ssSampleDBCoFull](../../a9notintoc/includes/sssampledbcofull-md.md)] employs several regional sales teams throughout its market base.  
  
To better support the data analysis needs of sales and marketing teams and of senior management, you are tasked with creating a tabular model for users to analyze internet sales data in the AdventureWorksDW sample database.  
  
In order to complete the tutorial, and the Adventure Works Internet Sales tabular model, you must complete a number of lessons. Within each lesson are a number of tasks; completing each task in order is necessary for completing the lesson. While in a particular lesson there may be several tasks that accomplish a similar outcome; however, how you complete each task is slightly different. This is to show that there is often more than one way to complete a particular task, and to challenge you by using skills you learned in previous tasks.  
  
The purpose of the lessons is to guide you through authoring a basic tabular model running in In-Memory mode by using many of the features included in [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)]. Because each lesson builds upon the previous lesson, you should complete the lessons in order. Once you have completed all of the lessons, you will have authored and deployed the Adventure Works Internet Sales sample tabular model on an Analysis Services server.  
  
This tutorial does not provide lessons or information about managing a deployed tabular model database by using SQL Server Management Studio, or using a reporting client application to connect to a deployed model to browse model data.  
  
## Prerequisites  
In order to complete this tutorial, you must have the following prerequisites:  
  
-   The latest version of [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)]. [Get the latest version](https://msdn.microsoft.com/library/mt204009.aspx).

-   The latest version of SQL Server Management Studio. [Get the latest version](https://docs.microsoft.com/sql/ssms/download-sql-server-management-studio-ssms). 
  
-   A client application such as [Power BI Desktop](https://powerbi.microsoft.com/desktop/) or [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] Excel.    
  
-   A SQL Server instance with the Adventure Works DW 2014 sample database. This sample database includes the data necessary to complete this tutorial. [Get the latest version](http://go.microsoft.com/fwlink/?LinkID=335807).  
  

-   An Azure Analysis Services or [!INCLUDE[ssCurrent](../../a9notintoc/includes/sscurrent-md.md)] Analysis Services instance to deploy your model to. [Sign up for a free Azure Analysis Services trial](https://azure.microsoft.com/services/analysis-services/).
  
## Lessons  
This tutorial includes the following lessons:  
  
|Lesson|Estimated time to complete|  
|----------|------------------------------|  
|[Lesson 1: Create a New Tabular Model Project](../../analysis-services/tutorials/lesson-1-create-a-new-tabular-model-project.md)|10 minutes|  
|[Lesson 2: Add Data](../../analysis-services/tutorials/lesson-2-add-data.md)|20 minutes|  
|[Lesson 3: Rename Columns](../../a9retired/lesson-3-rename-columns.md)|20 minutes|  
|[Lesson 4: Mark as Date Table](../Topic/Lesson%204:%20Mark%20as%20Date%20Table.md)|3 minutes|  
|[Lesson 5: Create Relationships](../Topic/Lesson%205:%20Create%20Relationships.md)|10 minutes|  
|[Lesson 6: Create Calculated Columns](../Topic/Lesson%206:%20Create%20Calculated%20Columns.md)|15 minutes|  
|[Lesson 7: Create Measures](../Topic/Lesson%207:%20Create%20Measures.md)|30 minutes|  
|[Lesson 8: Create Key Performance Indicators](../Topic/Lesson%208:%20Create%20Key%20Performance%20Indicators.md)|15 minutes|  
|[Lesson 9: Create Perspectives](../Topic/Lesson%209:%20Create%20Perspectives.md)|5 minutes|  
|[Lesson 10: Create Hierarchies](../Topic/Lesson%2010:%20Create%20Hierarchies.md)|20 minutes|  
|[Lesson 11: Create Partitions](../Topic/Lesson%2011:%20Create%20Partitions.md)|15 minutes|  
|[Lesson 12: Create Roles](../Topic/Lesson%2012:%20Create%20Roles.md)|15 minutes|  
|[Lesson 13: Test with a Client Application](../Topic/Lesson%2013:%20Analyze%20in%20Excel.md)|20 minutes|  
|[Lesson 14: Deploy](../Topic/Lesson%2014:%20Deploy.md)|5 minutes|  
  
## Supplemental lessons  
This tutorial also includes [Supplemental Lessons](../../a9retired/supplemental-lessons.md). Topics in this section are not required to complete the tutorial, but can be helpful in better understanding advanced tabular model authoring features.  
  
|Lesson|Estimated time to complete|  
|----------|------------------------------|  
|[Implement Dynamic Security by Using Row Filters](../../analysis-services/tutorials/supplemental-lesson-implement-dynamic-security-by-using-row-filters.md)|30 minutes|  

  
## Next step  
To begin the tutorial, continue to the first lesson: [Lesson 1: Create a New Tabular Model Project](../../analysis-services/tutorials/lesson-1-create-a-new-tabular-model-project.md).  
  
  
  
