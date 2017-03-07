---
title: "SSIS How to Create an ETL Package | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "get-started-article"
applies_to: 
  - "SQL Server 2016"
helpviewer_keywords: 
  - "SSIS, tutorials"
  - "packages [Integration Services], tutorials"
  - "Integration Services, tutorials"
  - "SQL Server Integration Services, tutorials"
  - "logs [Integration Services], tutorials"
  - "walkthroughs [Integration Services]"
ms.assetid: d6d5bb1f-4cb1-4605-9cd6-f60b858382c4
caps.latest.revision: 38
ms.author: "douglasl"
manager: "jhubbard"
---
# SSIS How to Create an ETL Package
[!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)][!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] (SSIS) is a platform for building high performance data integration solutions, including extraction, transformation, and load (ETL) packages for data warehousing. SSIS includes graphical tools and wizards for building and debugging packages; tasks for performing workflow functions such as FTP operations, executing SQL statements, and sending e-mail messages; data sources and destinations for extracting and loading data; transformations for cleaning, aggregating, merging, and copying data; a management service, the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] service for administering package execution and storage; and application programming interfaces (APIs) for programming the [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] object model.  
  
In this tutorial, you will learn how to use [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer to create a simple [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] package. The package that you create takes data from a flat file, reformats the data, and then inserts the reformatted data into a fact table. In following lessons, the package is expanded to demonstrate looping, package configurations, logging and error flow.  
  
When you install the sample data that the tutorial uses, you also install the completed versions of the packages that you will create in each lesson of the tutorial. By using the completed packages, you can skip ahead and begin the tutorial at a later lesson if you like. If this is your first time working with packages or the new development environment, we recommend that you begin with Lesson1.  
  
## What You Will Learn  
The best way to become acquainted with the new tools, controls and features available in [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)] is to use them. This tutorial walks you through [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] Designer to create a simple ETL package that includes looping, configurations, error flow logic and logging.  
  
## Requirements  
This tutorial is intended for users familiar with fundamental database operations, but who have limited exposure to the new features available in [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssISnoversion](../../a9notintoc/includes/ssisnoversion-md.md)].  
  
To use this tutorial, your system must have the following components installed:  
  
-   [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] with the **AdventureWorksDW2012** database. To enhance security, the sample databases are not installed by default. To download the **AdventureWorksDW2012** database, see [Adventure Works for SQL Server 2012](http://go.microsoft.com/fwlink/?LinkId=275026).  
  
    > [!IMPORTANT]  
    > When you attach the database (\*.mdf file), [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)] will by default search for an .ldf file. You must manually remove the .ldf file before clicking OK in the **Attach Databases** dialog box.  
    >   
    > For more information about attaching databases, see [Attach a Database](../../relational-databases/databases/attach-a-database.md).  
  
-   Sample data. The sample data is included with the [!INCLUDE[ssIS](../../a9retired/includes/ssis-md.md)] lesson packages. To download the sample data and the lesson packages, do the following.  
  
    1.  Navigate to [Integration Services Product Samples](http://go.microsoft.com/fwlink/?LinkId=275027)  
  
    2.  Click the **DOWNLOADS** tab.  
  
    3.  Click the SQL2012.Integration_Services.Create_Simple_ETL_Tutorial.Sample.zip file.  
  
## Lessons in This Tutorial  
[Lesson 1: Create a Project and Basic Package with SSIS](../../integration-services/tutorials/lesson-1-create-a-project-and-basic-package-with-ssis.md)  
In this lesson, you will create a simple ETL package that extracts data from a single flat file, transforms the data using lookup transformations and finally loads the result into a fact table destination.  
  
[Lesson 2: Adding Looping with SSIS](../../integration-services/tutorials/lesson-2-adding-looping-with-ssis.md)  
In this lesson, you will expand the package you created in Lesson 1 to take advantage of new looping features to extract multiple flat files into a single data flow process.  
  
[Lesson 3: Add Logging with SSIS](../../integration-services/tutorials/lesson-3-add-logging-with-ssis.md)  
In this lesson, you will expand the package you created in Lesson 2 to take advantage of new logging features.  
  
[Lesson 4: Add Error Flow Redirection with SSIS](../../integration-services/tutorials/lesson-4-add-error-flow-redirection-with-ssis.md)  
In this lesson, you will expand the package you created in lesson 3 to take advantage of new error output configurations.  
  
[Lesson 5: Add SSIS Package Configurations for the Package Deployment Model](../../integration-services/tutorials/lesson-5-add-ssis-package-configurations-for-the-package-deployment-model.md)  
In this lesson, you will expand the package you created in Lesson 4 to take advantage of new package configuration options.  
  
[Lesson 6: Using Parameters with the Project Deployment Model in SSIS](../../integration-services/tutorials/lesson-6-using-parameters-with-the-project-deployment-model-in-ssis.md)  
In this lesson, you will expand the package you created in Lesson 5 to take advantage of using new parameters with the project deployment model.  
  
  
  
