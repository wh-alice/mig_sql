---
title: "Lesson 4: Add Error Flow Redirection with SSIS | Microsoft Docs"
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
ms.assetid: 0c8dbda2-75e3-4278-9b4e-dcd220c92522
caps.latest.revision: 24
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 4: Add Error Flow Redirection with SSIS
To handle errors that may occur in the transformation process, [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] gives you the ability to decide on a per component and per column basis how to handle data that cannot be transformed. You can choose to ignore a failure in certain columns, redirect the entire failed row, or just fail the component. By default, all components in [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] are configured to fail when errors occur. Failing a component, in turn, causes the package to fail and all subsequent processing to stop.  
  
Instead of letting failures stop package execution, it is good practice to configure and handle potential processing errors as they occur within the transformation. While you might choose to ignore failures to ensure your package runs successfully, it is often better to redirect the failed row to another processing path where the data and the error can be persisted, examined and reprocessed at a later time.  
  
In this lesson, you will create a copy of the package that you developed in [Lesson 3: Add Logging with SSIS](../../integration-services/tutorials/lesson-3-add-logging-with-ssis.md). Working with this new package, you will create a corrupted version of one of the sample data files. The corrupted file will force a processing error to occur when you run the package.  
  
To handle the error data, you will add and configure a Flat File destination that will write any rows that fail to locate a lookup value in the Lookup Currency Key transformation to a file.  
  
Before the error data is written to the file, you will include a Script component that uses script to get error descriptions. You will then reconfigure the Lookup Currency Key transformation to redirect any data that could not be processed to the Script transformation.  
  
> [!IMPORTANT]  
> This tutorial requires the **AdventureWorksDW2012** sample database. For more information about how to install and deploy **AdventureWorksDW2012**, [Reporting Services Product Samples on CodePlex](http://go.microsoft.com/fwlink/p/?LinkID=526910)  
  
## Tasks in Lesson  
This lesson contains the following tasks:  
  
-   [Step 1: Copying the Lesson 3 Package](../../integration-services/tutorials/lesson-4-1-copying-the-lesson-3-package.md)  
  
-   [Step 2: Creating a Corrupted File](../../integration-services/tutorials/lesson-4-2-creating-a-corrupted-file.md)  
  
-   [Step 3: Adding Error Flow Redirection](../../integration-services/tutorials/lesson-4-3-adding-error-flow-redirection.md)  
  
-   [Step 4: Adding a Flat File Destination](../../integration-services/tutorials/lesson-4-4-adding-a-flat-file-destination.md)  
  
-   [Step 5: Testing the Lesson 4 Tutorial Package](../../integration-services/tutorials/lesson-4-5-testing-the-lesson-4-tutorial-package.md)  
  
## Start the Lesson  
[Step 1: Copying the Lesson 3 Package](../../integration-services/tutorials/lesson-4-1-copying-the-lesson-3-package.md)  
  
  
  
