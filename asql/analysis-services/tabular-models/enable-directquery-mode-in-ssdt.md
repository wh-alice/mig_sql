---
title: "Enable DirectQuery mode in SSDT | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 71fc7ebd-2e86-4a76-994b-66d3a57bcc9b
caps.latest.revision: 16
ms.author: "owend"
manager: "erikre"
---
# Enable DirectQuery mode in SSDT
In this topic, we'll describe how to enable DirectQuery mode for a tabular model project in [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)].  
  
When you enable DirectQuery mode for a tabular model you're designing in SSDT:
-   Features that are incompatible with DirectQuery mode are disabled.  
-   The existing model is validated. Warnings are displayed if features are incompatible with DirectQuery mode.  
-   If data was previously imported prior to enabling DirectQuery mode, the working model's cache is emptied.  
  
### Enable DirectQuery  
  
In SSDT, in the **Properties** pane for the **Model.bim** file, change the property, **DirectQuery Mode**, to **On**.  

![Enable DirectQuery mode in SSDT](../../analysis-services/tabular-models/media/enable-directquery-mode-in-ssdt.png)
  
If your model already has a connection to a data source and existing data, you'll be prompted to enter database credentials used to connect to the relational database. Any data already existing within the model will be removed from the in-memory cache.  
  
If your model is partially or fully complete prior ti enabling DirectQuery mode, you might get errors about incompatible features. In Visual Studio, open the **Error List** and resolve any problems that would prevent the model from being switched to DirectQuery mode.  


### What's next? 
You can now import data using the Table Import Wizard to get metadata for the model. You won't get rows of data, but you will get tables,  columns, and relationships to use as the basis for your model. 

You can create a sample partition for each table and add sample data so that you can verify model behavior as you build it. Any sample data that you add is used in **Analyze for Excel** or in other client tools that can connect to the workspace database. See [Add sample data to a DirectQuery model in design mode](../../analysis-services/tabular-models/add-sample-data-to-a-directquery-model-in-design-mode.md) for details.  
  
> [!TIP]  
    >  Even in DirectQuery mode on an empty model, you can always view a small built-in rowset for each table. In [!INCLUDE[ssBIDevStudio](../../a9notintoc/includes/ssbidevstudio-md.md)], click **Table** > **Table Properties** to view the 50-row dataset.  
  
  
## See Also  
[Enable DirectQuery mode in SSMS](../../analysis-services/tabular-models/enable-directquery-mode-in-ssms.md)

[Add sample data to a DirectQuery model in design mode](../../analysis-services/tabular-models/add-sample-data-to-a-directquery-model-in-design-mode.md)
  