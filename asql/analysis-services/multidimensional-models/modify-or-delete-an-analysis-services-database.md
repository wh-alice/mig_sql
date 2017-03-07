---
title: "Modify or Delete an Analysis Services Database | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
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
  - "databases [Analysis Services], modifying"
  - "removing databases"
  - "deleting databases"
  - "dropping databases"
  - "databases [Analysis Services], deleting"
  - "modifying databases"
ms.assetid: e48e3988-c091-4379-aabc-4da62f709a7e
caps.latest.revision: 34
ms.author: "owend"
manager: "erikre"
---
# Modify or Delete an Analysis Services Database
  You can change the name and description of an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database before deployment in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] and after deployment in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)]. You can also adjust additional settings on an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database, depending on the environment.  
  
> [!NOTE]  
>  You cannot change database properties using [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] in online mode.  
  
## Modifying Databases Using SQL Server Management Studio  
 Once an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database is deployed, you can use [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)] to change the impersonation mode used by [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] when connecting to data sources contained by the database. The impersonation mode allows you to specify the security context used by [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] when attempting to connect to a data source for processing, browsing, or drillthrough purposes.  
  
## Modifying Databases Using SQL Server Data Tools  
 You can use [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] in project mode to modify the translations for the caption and description of an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] project used to define a database. For more information about using translations in an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database, see [Globalization scenarios for Analysis Services](../../analysis-services/globalization-scenarios-for-analysis-services.md).  
  
 You can also set the aliases and aggregation functions associated with account types used by account attributes in dimensions contained by the database. Aliases allow you to select the business-specific terminology used by your organization for the account types in a chart of accounts. The account types are used by members of an account attribute to indicate how to aggregate measures over each member by using the aggregation functions specified for each account type contained in the database. For more information about account attributes, see [Attributes and Attribute Hierarchies](../../analysis-services/multidimensional-models-olap-logical-dimension-objects/attributes-and-attribute-hierarchies.md).  
  
## Deleting Databases  
 Deleting an existing [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database deletes the database and all cubes, dimensions, and mining models in the database. You can only delete an existing [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] database in [!INCLUDE[ssManStudioFull](../../advanced-analytics/r-services/includes/ssmanstudiofull-md.md)].  
  
#### To delete an Analysis Services database  
  
1.  Connect to an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] instance.  
  
2.  In **Object Explorer**, expand the node for the connected [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] instance and ensure that the object to be deleted is visible.  
  
3.  Right-click the object to be deleted and select **Delete**.  
  
4.  In the **Delete Object** dialog box, click **OK**.  
  
## See Also  
 [Document and Script an Analysis Services Database](../../analysis-services/multidimensional-models/document-and-script-an-analysis-services-database.md)  
  
  