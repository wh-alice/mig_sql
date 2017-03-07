---
title: "Importing (SSAS) | Microsoft Docs"
ms.custom: ""
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
f1_keywords: 
  - "sql13.asvs.bidtoolset.importing.f1"
ms.assetid: f1681be4-c543-4e77-875d-b13eeb75cf77
caps.latest.revision: 12
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Importing (SSAS)
  This page of the **Table Import Wizard** enables you to view the progress of the import operation. To access the wizard from the [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)], on the **Model** menu, click **Import from Data Source**.  
  
## UIElement List  
 **Details**  
 Displays the following information for each data import operation.  
  
|Column|Description|  
|------------|-----------------|  
|**Work Item**|Displays the name of the table or view that is being imported.|  
|**Status**|Indicates whether the table or view was successfully imported and the number of rows that were imported.|  
|**Message**|If the table or view import failed, displays a link to more information. This information is displayed in the Details window.<br /><br /> To try again to import the table or view, exit the wizard and run it again.|  
  
 **Stop Import**  
 Click to stop the import operation before it is finished. Tables and views that have already been imported will be displayed in the [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)] designer. Tables and views that have not been imported yet will not be imported.  
  
  