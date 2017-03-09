---
title: "Understanding the Input Files Used to Create the Deployment Script | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "input files [Analysis Services]"
  - "Analysis Services Deployment Wizard, scripts"
  - "deploying [Analysis Services], input files"
  - "Analysis Services Deployment Wizard, input files"
  - "scripts [Analysis Services], deployment"
  - "Analysis Services deployments, input files"
  - "modifying input files"
ms.assetid: 20e080cd-6a0e-4591-b022-ea4cd3638e36
caps.latest.revision: 34
ms.author: "owend"
manager: "erikre"
---
# Deployment Script Files - Input Used to Create Deployment Script
  When you build a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project, [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] generates files for the project. [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] puts these files in the Output folder of the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project. By default output is out in the \Bin folder. The following table lists the XML files that [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] creates.  
  
|File|Description|  
|---------------|-----------------|  
|\<*project name*>.asdatabase|An XMLA file for Multidimensional or 1100/1103 Tabular model projects, or a JSON file for 1200 Tabular model projects. Contains the declarative definitions for all the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] objects in the project.|  
|\<*project name*>.deploymenttargets|Contains the name of the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] instance and database in which the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] objects will be created.|  
|\<*project name*>.configsettings|Contains environment specific settings, such as data source connection information and object storage locations. Settings in this file override settings in the \<*project name*>.asdatabase file.|  
|\<*project name*>.deploymentoptions|Contains deployment options, such as whether deployment is transactional and whether deployed objects should be processed after deployment.|  
  
> [!NOTE]  
>  [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] never stores passwords in its project files.  
  
## Modifying the Input Files  
 Modifying the values in the input files, or the values retrieved from the input files, makes it possible to change the deployment destination, the configuration settings, and deployment options without editing the whole \<*project name*>.asdatabase file (or a whole script file if you generate a script from an existing [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database). Being able to modify individual files lets you easily create different deployment scripts for different purposes.  
  
 The following topics explain how to modify values in the various input files:  
  
-   [Specifying the Installation Target](../../analysis-services/multidimensional-models/deployment-script-files-specifying-the-installation-target.md)  
  
-   [Specifying Partition and Role Deployment Options](../../analysis-services/multidimensional-models/deployment-script-files-partition-and-role-deployment-options.md)  
  
-   [Specifying Configuration Settings for Solution Deployment](../../analysis-services/multidimensional-models/deployment-script-files-solution-deployment-config-settings.md)  
  
-   [Specifying Processing Options](../../analysis-services/multidimensional-models/deployment-script-files-specifying-processing-options.md)  
  
## See Also  
 [Running the Analysis Services Deployment Wizard](../../analysis-services/multidimensional-models/running-the-analysis-services-deployment-wizard.md)   
 [Understanding the Analysis Services Deployment Script](../../analysis-services/multidimensional-models/understanding-the-analysis-services-deployment-script.md)  
  
  