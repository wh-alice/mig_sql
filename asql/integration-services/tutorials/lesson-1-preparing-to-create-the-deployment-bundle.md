---
title: "Lesson 1: Preparing to Create the Deployment Bundle | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "integration-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
applies_to: 
  - "SQL Server 2016"
ms.assetid: b6fe283c-9856-4ba1-a497-e3912424fd18
caps.latest.revision: 21
ms.author: "douglasl"
manager: "jhubbard"
---
# Lesson 1: Preparing to Create the Deployment Bundle
In this lesson, you will create the working folders and environment variables that support the tutorial, create an [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] project, add several packages and their supporting files to the project, and implement configurations in packages.  
  
[!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] deploys packages on a project basis; therefore, as the first step in creating the deployment bundle, you must collect all the packages and package dependencies into one [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] project. Frequently it is useful to include other information with the deployed packages: for example you will also add to the project a Readme file that provides basic documentation for this group of packages.  
  
After you have added the packages and files, you will add configurations to packages that do not already use configurations. The configurations update properties of packages and package objects at run time. In a later lesson, you will modify the values of these configurations during package deployment to support the packages in the deployed-to environment.  
  
After you have added the configurations, you should open the packages in [!INCLUDE[ssIS](../../analysis-services/instances/includes/ssis-md.md)] Designer, the [!INCLUDE[ssISnoversion](../../advanced-analytics/r-services/includes/ssisnoversion-md.md)] graphical tool for building ETL packages, and examine the properties of packages and package elements as well as the package configurations to better understand the issues that the deployment needs to address. For example, one of the packages extracts data from text files, so the location of the data files must be updated before the deployed packages will run successfully.  
  
**Estimated time to complete this lesson:** 1 hour  
  
## Lesson Tasks  
This lesson contains the following tasks:  
  
-   [Step 1: Creating Working Folders and Environment Variables](../Topic/Step%201:%20Creating%20Working%20Folders%20and%20Environment%20Variables.md)  
  
-   [Step 2: Creating the Deployment Project](../Topic/Step%202:%20Creating%20the%20Deployment%20Project.md)  
  
-   [Step 3: Adding Packages and Other Files](../Topic/Step%203:%20Adding%20Packages%20and%20Other%20Files.md)  
  
-   [Step 4: Adding Package Configurations](../Topic/Step%204:%20Adding%20Package%20Configurations.md)  
  
-   [Step 5: Testing the Updated Packages](../Topic/Step%205:%20Testing%20the%20Updated%20Packages.md)  
  
## Start the Lesson  
[Step 1: Creating Working Folders and Environment Variables](../Topic/Step%201:%20Creating%20Working%20Folders%20and%20Environment%20Variables.md)  
  
  
  
