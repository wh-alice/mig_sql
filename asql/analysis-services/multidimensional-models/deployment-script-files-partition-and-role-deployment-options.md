---
title: "Specifying Partition and Role Deployment Options | Microsoft Docs"
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
  - "partitions [Analysis Services], deployment options"
  - "Analysis Services deployments, roles"
  - "Analysis Services deployments, partitions"
  - "Analysis Services Deployment Wizard, roles"
  - "Analysis Services Deployment Wizard, partitions"
  - "deploying [Analysis Services], roles"
  - "roles [Analysis Services], deployment options"
  - "deploying [Analysis Services], partitions"
  - "modifying role deployments"
  - "modifying partition deployments"
ms.assetid: e9b9ca57-a5cc-4fc0-87b5-305257038d56
caps.latest.revision: 37
ms.author: "owend"
manager: "erikre"
---
# Deployment Script Files - Partition and Role Deployment Options
  The [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Deployment Wizard reads the partition and role deployment options from the \<*project name*>.deploymentoptions file. [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] creates this file when you build the [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project. [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] uses the partition and role deployment options of the current project when the \<*project name*>.deploymentoptions file is created. For more information about configuration settings, see [Understanding the Input Files Used to Create the Deployment Script](../Topic/Understanding%20the%20Input%20Files%20Used%20to%20Create%20the%20Deployment%20Script.md).  
  
## Reviewing the Partition and Role Deployment Options  
 The deployment options in the \<*project name*>.deploymentoptions file include the following:  
  
 **Partition deployment options**  
 The \<*project name*>.deploymentoptions file specifies whether existing partitions in the destination database are retained or overwritten (default). If existing partitions are retained, only new partitions will be deployed, and the partitions and aggregation designs on all existing measure groups are left unchanged.  
  
> [!NOTE]  
>  If the measure group in which the partition exists is deleted, the partition is automatically deleted.  
  
 **Role deployment options**  
 The \<*project name*>.deploymentoptions file specifies one of the following role deployment options:  
  
-   Existing roles and role members in the destination database are retained, and only new roles and role members are deployed.  
  
-   All existing roles and members in the destination database are replaced by the roles and members being deployed.  
  
-   Existing roles and role members in the destination database are retained, and no new roles are deployed.  
  
-   **Note** When existing roles and members are retained, the permissions associated with those roles are reset to none. Security permissions are contained by the objects they secure, not by the security roles with which they are associated. For more information about how to work with this behavior by using the Analysis Service Deployment Wizard, see ‘Retain Roles and Members’ in the Microsoft Knowledge Base.  
  
## Modifying the Partition and Role Deployment Options  
 You may have to deploy the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project using different partition and role options than those stored in the \<*project name*>.deploymentoptions file. For example, you may want to retain existing partitions, roles, and role members, instead of replacing all existing partitions, roles, and members as indicated in the \<*project name*>.deploymentoptions file.  
  
 To modify the deployment of partitions and roles in an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project, you cannot change the partition and roles settings within the project because the *\<project name>* **Properties Pages** dialog box in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] does not display these options. If you want to change the deployment options for roles and partitions, you must change this information within the \<*project name*>.deploymentoptions file itself. The following procedure describes how to change the partition and role deployment options within the \<*project name*>.deploymentoptions file.  
  
#### To change the deployment of partitions or roles after the input files have been generated  
  
-   Run the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Deployment Wizard interactively, and on the **Partition and Role Deployment Options** page, specify new deployment options for the partitions and roles.  
  
     —or—  
  
-   Run the [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] Deployment Wizard at the command prompt, and set the wizard to run in answer file mode. (For more information about answer file mode, see [Running the Analysis Services Deployment Wizard](../../analysis-services/multidimensional-models/running-the-analysis-services-deployment-wizard.md).)  
  
     —or—  
  
-   Open the \<*project name*>.deploymentoptions in any text editor and manually change the options.  
  
## See Also  
 [Specifying the Installation Target](../Topic/Specifying%20the%20Installation%20Target.md)   
 [Specifying Configuration Settings for Solution Deployment](../Topic/Specifying%20Configuration%20Settings%20for%20Solution%20Deployment.md)   
 [Specifying Processing Options](../Topic/Specifying%20Processing%20Options.md)  
  
  