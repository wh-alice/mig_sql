---
title: "Delete a Data Source View (Analysis Services) | Microsoft Docs"
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
  - "deleting data source views"
  - "data source views [Analysis Services], deleting"
  - "removing data source views"
ms.assetid: ae3f5ca0-ecbf-4b52-8386-eb457719d854
caps.latest.revision: 37
ms.author: "owend"
manager: "erikre"
---
# Delete a Data Source View (Analysis Services)
  If you are no longer using a data source view (DSV) in an OLAP project, you can delete it from the project in [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
 Deleting a DSV is permanent. You cannot restore a deleted DSV to a [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] project or database.  
  
 DSVs that other objects depend on cannot be deleted from an [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database opened by [!INCLUDE[ssBIDevStudioFull](../../a9notintoc/includes/ssbidevstudiofull-md.md)] in online mode. To delete a DSV from a project that is connected o a database running on a server, you must first delete all objects in the [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] database that depend on that DSV before deleting the DSV itself.  
  
 Deleting a DSV will invalidate other [!INCLUDE[ssASnoversion](../../a9notintoc/includes/ssasnoversion-md.md)] objects that depend on it, so before you delete the DSV, you will see the list of objects that will become invalid once the DSV is removed. Review this list carefully to be sure that it does not include objects you still expect to use.  
  
 ![Delete Objects dialog box](../../analysis-services/multidimensional-models/media/ssas-olapdsv-deleteobjects.gif "Delete Objects dialog box")  
  
## See Also  
 [Data Source Views in Multidimensional Models](../../analysis-services/multidimensional-models/data-source-views-in-multidimensional-models.md)   
 [Change Properties in a Data Source View &#40;Analysis Services&#41;](../../analysis-services/multidimensional-models/change-properties-in-a-data-source-view-analysis-services.md)  
  
  