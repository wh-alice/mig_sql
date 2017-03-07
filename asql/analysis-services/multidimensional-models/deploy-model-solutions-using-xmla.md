---
title: "Deploy Model Solutions Using XMLA | Microsoft Docs"
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
  - "XML scripts [Analysis Services]"
  - "scripts [Analysis Services], deployment"
  - "deploying [Analysis Services], XML scripts"
  - "Analysis Services deployments, XML scripts"
ms.assetid: a8cb1837-fcac-4730-bea4-a72cf94d9f7c
caps.latest.revision: 33
ms.author: "owend"
manager: "erikre"
---
# Deploy Model Solutions Using XMLA
  In [!INCLUDE[ssManStudioFull](../../a9notintoc/includes/ssmanstudiofull-md.md)], the **CREATE To** option of the **Script Database As** command creates an XML script of an entire [!INCLUDE[msCoName](../../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database or one of its constituent objects. The resulting script can then be run on another computer to recreate the schema (metadata) of the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database. The script generates the entire database, and there is no mechanism for incrementally updating already deployed objects when using the script. After running the script and deploying the database, the newly created database must be processed before users can browse it.  
  
 For more information about the **Script Database As** command, see [Document and Script an Analysis Services Database](../../analysis-services/multidimensional-models/document-and-script-an-analysis-services-database.md).  
  
## Modifying Object Properties in the XML Script  
 When using the **Script Database As** command, you cannot modify specific properties (such as the database name, data source connection strings, and security settings) of the database objects. These properties must either be manually modified in the script after the script has been generated or modified in the deployed database after running the script.  
  
> [!IMPORTANT]  
>  The XML script will not contain the password if this is specified in either the connection string for a data source or for impersonation purposes. Since the password is required for processing purposes in this scenario, you will either need to add this manually to the XML script before it executes or add it after the XML script executes.  
  
## See Also  
 [Deploy Model Solutions Using the Deployment Wizard](../../analysis-services/multidimensional-models/deploy-model-solutions-using-the-deployment-wizard.md)   
 [Synchronize Analysis Services Databases](../../analysis-services/multidimensional-models/synchronize-analysis-services-databases.md)  
  
  