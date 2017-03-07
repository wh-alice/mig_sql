---
title: "Select Creation Method (Dimension Wizard) | Microsoft Docs"
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
  - "sql13.asvs.dimensionwizard.dimensiondefinition.f1"
ms.assetid: 291b0b2d-a03a-4df6-82f7-90ad92d4d1cf
caps.latest.revision: 29
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Select Creation Method (Dimension Wizard)
  Use the **Select Creation Method** page to select how to create the dimension.  
  
 **To open the Dimension Wizard**  
  
-   In [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)], in **Solution Explorer**, right-click the **Dimensions** folder for an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] project, and then click **New Dimension**.  
  
## Options  
 **Use an existing table**  
 Create a dimension from one or more tables in a data source. The attributes that are available for the dimension will depend on the structure of the data in the table.  
  
 For more information, see [Create a Dimension by Using an Existing Table](../analysis-services/multidimensional-models/create-a-dimension-by-using-an-existing-table.md).  
  
 **Generate a time table in the data source**  
 Create a time table in the underlying data source and then use that table to create a time dimension. Use this option when no such table exists and you do not want to use a script to create one. The new time table will contain data for the date range, attributes, and calendars that you specify in the wizard.  
  
> [!NOTE]  
>  To use this option, you must have permission to create objects in the underlying data source. If you do not have permission to create objects on the data source, try to use the **Generate a time table on the server** option instead.  
  
 For more information, see [Create a Time Dimension by Generating a Time Table](../analysis-services/multidimensional-models/create-a-time-dimension-by-generating-a-time-table.md).  
  
 **Generate a time table on the server**  
 Create a time table directly on the server and then use that table to create a time dimension. Use this option if you do not have permission to create objects in the underlying data source. The new time dimension will contain data for the date range, attributes, and calendars that you specify in the wizard.  
  
 For more information, see [Create a Time Dimension by Generating a Time Table](../analysis-services/multidimensional-models/create-a-time-dimension-by-generating-a-time-table.md).  
  
 **Generate a non-time table in the data source**  
 Design the dimension without an underlying relational data source, and then generate the necessary schema for the data source. This approach is known as top-down modeling.  
  
> [!NOTE]  
>  To use this option, you must have permission to create objects in the underlying data source.  
  
 You can build the dimension with or without a template. To build the dimension with a template, select the template from the **Template** list.  
  
 For more information, see [Create a Dimension by Generating a Non-Time Table in the Data Source](../analysis-services/multidimensional-models/create-a-dimension-by-generating-a-non-time-table-in-the-data-source.md).  
  
 **Template**  
 Select the template that you want to use to create the dimension. Templates provide a complete set of attribute and hierarchy definitions oriented towards a specific business purpose.  
  
> [!NOTE]  
>  This option is only available when the **Generate a non-time table in the data source** option has been selected.  
  
## See Also  
 [Dimension Wizard F1 Help](../a9retired/dimension-wizard-f1-help.md)   
 [Dimensions &#40;Analysis Services - Multidimensional Data&#41;](../analysis-services/multidimensional-models-olap-logical-dimension-objects/dimensions-analysis-services-multidimensional-data.md)   
 [Dimensions in Multidimensional Models](../analysis-services/multidimensional-models/dimensions-in-multidimensional-models.md)  
  
  