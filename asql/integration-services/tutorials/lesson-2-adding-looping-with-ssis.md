---
title: "Lesson 2: Adding Looping with SSIS | Microsoft Docs"
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
ms.assetid: 01f2ed61-1e5a-4ec6-b6a6-2bd070c64077
caps.latest.revision: 32
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 2: Adding Looping with SSIS
In [Lesson 1: Create a Project and Basic Package with SSIS](../../integration-services/tutorials/lesson-1-create-a-project-and-basic-package-with-ssis.md), you created a package that extracted data from a single flat file source, transformed the data using Lookup transformations, and finally loaded the data into the **FactCurrency** fact table of the **AdventureWorksDW2012** sample database.  
  
However, it is rare for an extract, transform, and load (ETL) process to use a single flat file. A typical ETL process would extract data from multiple flat file sources. Extracting data from multiple sources requires an iterative control flow. One of the most anticipated features of [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] is the ability to easily add iteration or looping to packages.  
  
[!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] provides two types of containers for looping through packages: the Foreach Loop container and the For Loop container. The Foreach Loop container uses an enumerator to perform the looping, whereas the For Loop container typically uses a variable expression. This lesson uses the Foreach Loop container.  
  
The Foreach Loop container enables a package to repeat the control flow for each member of a specified enumerator. With the Foreach Loop container, you can enumerate:  
  
-   ADO recordset rows  
  
-   ADO .Net schema information  
  
-   File and directory structures  
  
-   System, package and user variables  
  
-   Enumerable objects contained in a variable  
  
-   Items in a collection  
  
-   Nodes in an XML Path Language (XPath) expression  
  
-   [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Management Objects (SMO)  
  
In this lesson, you will modify the simple ETL package created in Lesson 1 to take advantage of the Foreach Loop container. You will also set user-defined package variables to enable the tutorial package to iterate through all the flat files in the folder. If you have not completed the previous lesson, you can also copy the completed Lesson 1 package that is included with the tutorial.  
  
In this lesson, you will not modify the data flow, only the control flow.  
  
> [!IMPORTANT]  
> This tutorial requires the **AdventureWorksDW2012** sample database. For more information about how to install and deploy **AdventureWorksDW2012**, see [Reporting Services Product Samples on CodePlex](http://go.microsoft.com/fwlink/p/?LinkID=526910).  
  
## Lesson Tasks  
This lesson contains the following tasks:  
  
-   [Step 1: Copying the Lesson 1 Package](../Topic/Step%201:%20Copying%20the%20Lesson%201%20Package.md)  
  
-   [Step 2: Adding and Configuring the Foreach Loop Container](../Topic/Step%202:%20Adding%20and%20Configuring%20the%20Foreach%20Loop%20Container.md)  
  
-   [Step 3: Modifying the Flat File Connection Manager](../Topic/Step%203:%20Modifying%20the%20Flat%20File%20Connection%20Manager.md)  
  
-   [Step 4: Testing the Lesson 2 Tutorial Package](../Topic/Step%204:%20Testing%20the%20Lesson%202%20Tutorial%20Package.md)  
  
## Start the Lesson  
[Step 1: Copying the Lesson 1 Package](../Topic/Step%201:%20Copying%20the%20Lesson%201%20Package.md)  
  
## See Also  
[For Loop Container](../../integration-services/control-flow/for-loop-container.md)  
  
  
  
