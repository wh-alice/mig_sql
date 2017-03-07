---
title: "Deploy Model Solutions Using the Deployment Wizard | Microsoft Docs"
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
  - "Analysis Services Deployment Wizard"
  - "deploying [Analysis Services], Analysis Services Deployment Wizard"
  - "Analysis Services deployments, Analysis Services Deployment Wizard"
  - "Analysis Services Deployment Wizard, about Analysis Services Deployment Wizard"
ms.assetid: ff711e8e-971c-43ba-b479-effc034af4a4
caps.latest.revision: 39
ms.author: "owend"
manager: "erikre"
---
# Deploy Model Solutions Using the Deployment Wizard
  The [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Deployment Wizard uses JSON output files generated from a [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project as input files. These input files are easily modifiable to customize the deployment of an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project. The generated deployment script can then either be immediately run or saved for later deployment.  
  
 You can deploy by using the wizard as discussed here. You can also automate deployment or use the Synchronize capability. If the deployed database is large, consider using partitions on target systems. You can also automate partition creation and population by using Analysis Management Objects (AMO).  
  
> [!IMPORTANT]  
>  Neither the output files nor the deployment script will contain the user id or password if these are specified in either the connection string for a data source or for impersonation purposes. Since these are required for processing purposes in this scenario, you will add this information manually. If the deployment will not include processing, you can add this connection and impersonation information as needed after deployment. If the deployment will include processing, you can either add this information within the wizard or in the deployment script after it is saved.  
  
## In This Section  
 The following topics describe how to work with the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Deployment Wizard, the input files, and the deployment script:  
  
|Topic|Description|  
|-----------|-----------------|  
|[Running the Analysis Services Deployment Wizard](../../analysis-services/multidimensional-models/running-the-analysis-services-deployment-wizard.md)|Describes the various ways in which you can run the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Deployment Wizard.|  
|[Understanding the Input Files Used to Create the Deployment Script](../Topic/Understanding%20the%20Input%20Files%20Used%20to%20Create%20the%20Deployment%20Script.md)|Describes which files the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Deployment Wizard uses as input values, what each of those files contains, and provides links to topics that describe how to modify the values in each of the input files.|  
|[Understanding the Analysis Services Deployment Script](../../analysis-services/multidimensional-models/understanding-the-analysis-services-deployment-script.md)|Describes what the deployment script contains and how the script runs.|  
  
## See Also  
 [Deploy Model Solutions Using XMLA](../../analysis-services/multidimensional-models/deploy-model-solutions-using-xmla.md)   
 [Synchronize Analysis Services Databases](../../analysis-services/multidimensional-models/synchronize-analysis-services-databases.md)   
 [Understanding the Input Files Used to Create the Deployment Script](../Topic/Understanding%20the%20Input%20Files%20Used%20to%20Create%20the%20Deployment%20Script.md)   
 [Deploy Model Solutions with the Deployment Utility](../../analysis-services/multidimensional-models/deploy-model-solutions-with-the-deployment-utility.md)  
  
  