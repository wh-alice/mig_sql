---
title: "Import from Power Pivot (SSAS Tabular) | Microsoft Docs"
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
f1_keywords: 
  - "sql13.asvs.bidtoolset.importfromppt.f1"
ms.assetid: ac1a6a79-bda3-4122-a717-8b1e2f77da02
caps.latest.revision: 25
ms.author: "owend"
manager: "erikre"
---
# Import from Power Pivot (SSAS Tabular)
  This topic describes how to create a new tabular model project by importing the metadata and data from a [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] workbook by using the Import from [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] project template in [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)].  
  
## Create a new Tabular Model from a Power Pivot for Excel file  
 When creating a new tabular model project by importing from a [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] workbook, the metadata that defines the structure of the workbook is used to create and define the structure of the tabular model project in [!INCLUDE[ssBIDevStudio](../../analysis-services/includes/ssbidevstudio-md.md)]. Objects such as tables, columns, measures, and relationships are retained and will appear in the tabular model project as they are in the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] workbook. No changes are made to the .xlsx workbook file.  
  
> [!NOTE]  
>  Tabular models do not support linked tables. When importing from a [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] workbook that contains a linked table, linked table data is treated as copy\pasted data and stored in the Model.bim file. When viewing properties for a copy\pasted table, the **Source Data** property is disabled and the **Table Properties** dialog on the **Table** menu is disabled.  
>   
>  There is a limit of 10,000 rows that can be added to the data embedded in the model. If you import a model from [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] and see the error, “Data was truncated. Pasted tables cannot contain more than 10000 rows” you should revise the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] model by moving the embedded data into another data source, such as a table in SQL Server, and then re-import.  
  
 There are special considerations depending on whether or not the workspace database is on an Analysis Services instance on the same computer (local) as [!INCLUDE[ssBIDevStudioFull](../../analysis-services/includes/ssbidevstudiofull-md.md)] or is on a remote Analysis Services instance..  
  
 If the workspace database is on a local instance of Analysis Services, you can import both the metadata and data from the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] workbook. The metadata is copied from the workbook and used to create the tabular model project. The data is then copied from the workbook and stored in the project’s workspace database (except for copy/pasted data, which is stored in the Model.bim file).  
  
 If the workspace database is on a remote Analysis Services instance, you cannot import data from a [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for Excel workbook. You can still import the workbook metadata; however, this will cause a script to be run on the remote Analysis Services instance. You should only import metadata from a trusted [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] workbook. Data must be imported from sources defined in the data source connections. Copy/pasted and linked table data in the [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] workbook must be copied and pasted into the tabular model project.  
  
#### To create a new tabular model project from a Power Pivot for Excel file  
  
1.  In [!INCLUDE[ssBIDevStudio](../../analysis-services/includes/ssbidevstudio-md.md)], on the **File** menu, click **New**, and then click **Project**.  
  
2.  In the **New Project** dialog box, under **Installed Templates**, click **Business Intelligence**, and then click **Import from [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)]**.  
  
3.  In  **Name**, type a name for the project, then specify a location and solution name, and then click **OK**.  
  
4.  In the **Open** dialog box, select the [!INCLUDE[ssGeminiClient](../../analysis-services/includes/ssgeminiclient-md.md)] file that contains the model metadata and data you want to import, and then click **Open**.  
  
## See Also  
 [Workspace Database &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/workspace-database-ssas-tabular.md)   
 [Copy and Paste Data &#40;SSAS Tabular&#41;](../../analysis-services/tabular-models/ssas-import-data-copy-and-paste-data.md)  
  
  