---
title: "Lesson 5: Add SSIS Package Configurations for the Package Deployment Model | Microsoft Docs"
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
ms.assetid: 1c10dd54-67cb-4b63-9e4d-aa6ff0452ecb
caps.latest.revision: 28
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 5: Add SSIS Package Configurations for the Package Deployment Model
Package configurations let you set run-time properties and variables from outside of the development environment. Configurations allow you to develop packages that are flexible and easy to both deploy and distribute. [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] offers the following configuration types:  
  
-   XML configuration file  
  
-   Environment variable  
  
-   Registry entry  
  
-   Parent package variable  
  
-   [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] table  
  
In this lesson, you will modify the simple [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] package that you created in [Lesson 4: Add Error Flow Redirection with SSIS](../../integration-services/tutorials/lesson-4-add-error-flow-redirection-with-ssis.md) to use the Package Deployment Model and take advantage of package configurations. You can also copy the completed Lesson 4 package that is included with the tutorial. Using the Package Configuration Wizard, you will create an XML configuration that updates the **Directory** property of the Foreach Loop container by using a package-level variable mapped to the Directory property. Once you have created the configuration file, you will modify the value of the variable from outside of the development environment and point the modified property to a new sample data folder. When you run the package again, the configuration file populates the value of the variable, and the variable in turn updates the **Directory**property. As a result, the package iterates through the files in the new data folder, rather than iterating through the files in the original folder that was hard-coded in the package.  
  
> [!IMPORTANT]  
> This tutorial requires the **AdventureWorksDW2012** sample database. For more information about how to install and deploy **AdventureWorksDW2012**, see [Reporting Services Product Samples on CodePlex](http://go.microsoft.com/fwlink/p/?LinkID=526910).  
  
## Lesson Tasks  
This lesson contains the following tasks:  
  
-   [Step 1: Copying the Lesson 4 Package](../Topic/Step%201:%20Copying%20the%20Lesson%204%20Package.md)  
  
-   [Step 2: Enabling and Configuring Package Configurations](../Topic/Step%202:%20Enabling%20and%20Configuring%20Package%20Configurations.md)  
  
-   [Step 3: Modifying the Directory Property Configuration Value](../Topic/Step%203:%20Modifying%20the%20Directory%20Property%20Configuration%20Value.md)  
  
-   [Step 4: Testing the Lesson 5 Tutorial Package](../Topic/Step%204:%20Testing%20the%20Lesson%205%20Tutorial%20Package.md)  
  
## Start the Lesson  
  
-   [Step 1: Copying the Lesson 4 Package](../Topic/Step%201:%20Copying%20the%20Lesson%204%20Package.md)  
  
  
  
