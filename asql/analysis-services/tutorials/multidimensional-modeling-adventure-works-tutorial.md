---
title: "Multidimensional Modeling (Adventure Works Tutorial) | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "tutorials [Analysis Services]"
  - "Analysis Services, tutorials"
ms.assetid: db55e226-601a-4026-8651-573195555a59
caps.latest.revision: 31
ms.author: "owend"
manager: "erikre"
---
# Multidimensional Modeling (Adventure Works Tutorial)
Welcome to the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Tutorial. This tutorial describes how to use [!INCLUDE[ssBIDevStudio](../../analysis-services/includes/ssbidevstudio-md.md)] to develop and deploy an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project, using the fictitious company [!INCLUDE[ssSampleDBCoFull](../../analysis-services/data-mining/includes/sssampledbcofull-md.md)] for all examples.  
  
## What You Will Learn  
In this tutorial, you will learn the following:  
  
-   How to define data sources, data source views, dimensions, attributes, attribute relationships, hierarchies, and cubes in an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project within [!INCLUDE[ssBIDevStudio](../../analysis-services/includes/ssbidevstudio-md.md)].  
  
-   How to view cube and dimension data by deploying the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project to an instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)], and how to then process the deployed objects to populate them with data from the underlying data source.  
  
-   How to modify the measures, dimensions, hierarchies, attributes, and measure groups in the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project, and how to then deploy the incremental changes to the deployed cube on the development server.  
  
-   How to define calculations, Key Performance Indicators (KPIs), actions, perspectives, translations, and security roles within a cube.  
  
A scenario description accompanies this tutorial so that you can better understand the context for these lessons. For more information, see [Analysis Services Tutorial Scenario](../../analysis-services/tutorials/analysis-services-tutorial-scenario.md).  
  
## Prerequisites  
You will need sample data, sample project files, and software to complete all of the lessons in this tutorial. For instructions on how to find and install the prerequisites for this tutorial, see [Install Sample Data and Projects for the Analysis Services Multidimensional Modeling Tutorial](../../analysis-services/tutorials/install-sample-data-and-projects.md).  
  
Additionally, the following permissions must be in place to successfully complete this tutorial:  
  
-   You must be a member of the Administrators local group on the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] computer or be a member of the server administration role in the instance of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)].  
  
-   You must have Read permissions in the **AdventureWorksDW2012** sample database. This sample database is valid for the [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] release.  
  
## Lessons  
This tutorial includes the following lessons.  
  
|Lesson|Estimated time to complete|  
|----------|------------------------------|  
|[Lesson 1: Defining a Data Source View within an Analysis Services Project](../../analysis-services/tutorials/lesson-1-defining-a-data-source-view-within-an-analysis-services-project.md)|15 minutes|  
|[Lesson 2: Defining and Deploying a Cube](../../analysis-services/tutorials/lesson-2-defining-and-deploying-a-cube.md)|30 minutes|  
|[Lesson 3: Modifying Measures, Attributes and Hierarchies](../../analysis-services/tutorials/lesson-3-modifying-measures-attributes-and-hierarchies.md)|45 minutes|  
|[Lesson 4: Defining Advanced Attribute and Dimension Properties](../../analysis-services/tutorials/lesson-4-defining-advanced-attribute-and-dimension-properties.md)|120 minutes|  
|[Lesson 5: Defining Relationships Between Dimensions and Measure Groups](../../analysis-services/tutorials/lesson-5-defining-relationships-between-dimensions-and-measure-groups.md)|45 minutes|  
|[Lesson 6: Defining Calculations](../../analysis-services/tutorials/lesson-6-defining-calculations.md)|45 minutes|  
|[Lesson 7: Defining Key Performance Indicators &#40;KPIs&#41;](../../analysis-services/tutorials/lesson-7-defining-key-performance-indicators-kpis.md)|30 minutes|  
|[Lesson 8: Defining Actions](../../analysis-services/tutorials/lesson-8-defining-actions.md)|30 minutes|  
|[Lesson 9: Defining Perspectives and Translations](../../analysis-services/tutorials/lesson-9-defining-perspectives-and-translations.md)|30 minutes|  
|[Lesson 10: Defining Administrative Roles](../../analysis-services/tutorials/lesson-10-defining-administrative-roles.md)|15 minutes|  
  
> [!NOTE]  
> The cube database that you will create in this tutorial is a simplified version of the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] multidimensional model project that is part of the Adventure Works sample databases available for download on the codeplex site. The tutorial version of the Adventure Works multidimensional database is simplified to bring greater focus to the specific skills that you will want to master right away. After you complete the tutorial, consider exploring the multidimensional model project on your own to further your understanding of [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] multidimensional modeling.  
  
## Next Step  
To begin the tutorial, continue to the first lesson: [Lesson 1: Defining a Data Source View within an Analysis Services Project](../../analysis-services/tutorials/lesson-1-defining-a-data-source-view-within-an-analysis-services-project.md).  
  
  
  
