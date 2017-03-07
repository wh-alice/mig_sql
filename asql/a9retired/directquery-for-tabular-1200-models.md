---
title: "DirectQuery for Tabular 1200 models | Microsoft Docs"
ms.custom: 
  - "SQL2016_New_Updated"
ms.date: "02/27/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 4227977e-7368-4d45-b78f-24076882e7a8
caps.latest.revision: 10
ms.author: "heidist"
manager: "jhubbard"
robots: noindex,nofollow
---
# DirectQuery for Tabular 1200 models
  This topic provides a walkthrough of the design and deployment process for DirectQuery models created at the  **SQL Server 2016 (1200)** compatibility level.  
  
 In this release, DirectQuery is simplified. There are no more hybrid modes. A Tabular  model operates either in-memory, or in DirectQuery mode where queries are issued against backend relational data sources. For models that run in DirectQuery mode, you can specify whether to use a partial or full dataset for modeling purposes.  
  
## Design and Deployment Steps  
 Building specialized subsets of sample data for individual design scenarios is supported for Tabular models at the 1200 compatibility level.  
  
 Sample data is specified at the partition level. You can use a combination of sample and full data views across the model, but doing so can result in invalid queries if datasets are out of sync or incomplete.  
  
1.  Use [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)]. Select the Analysis Services Tabular project template and set the compatibility level to **SQL Server 2016 RTM (1200)**.  
  
2.  In Solution Explorer, in Model Properties, set **DirectQuery Mode** to **On**.  
  
3.  Import data by selecting tables at **Model** > **Import**.  
  
     Data sources are constrained to just those supported for DirectQuery: Microsoft SQL Server, Microsoft Analytics Platform System, Oracle, and Teradata.  
  
     When prompted, provide a database login that has Read permissions on the database.  
  
     In the Table Import wizard, you can build a filter that excludes columns you don't want.  
  
     In DirectQuery mode, no data is imported, just metadata.  
  
    > [!TIP]  
    >  Even in DirectQuery mode on an empty model, you can always view a small built-in rowset for each table. In [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)], click **Table** > **Table Properties** to view the 50-row dataset  
  
     Consider switching to Diagram View if you prefer to work with an empty model. Otherwise, you might want to add sample data for use  during model design and testing.  
  
    > [!NOTE]  
    >  SSDT does not prevent import from multiple data sources, but attempting to do so gives this error: "Failed to save modifications to the Server. Error returned: 'All partitions in the Full DataView must have the same source in 'DirectQuery' mode."   You can only use one data source in a DirectQuery model.  
  
4.  Optionally, if you want to use sample data,   consider adding it now so that it's available during model design.  
  
     Select a table and edit the **Partitions** property:  
  
    -   Notice that the default partition is **(Direct Query) \<table name>**. This is the full data view.  
  
    -   Select the partition and click **Copy**.  
  
         ![ssas_tabularproject_copypartition](../a9retired/media/ssas-tabularproject-copypartition.jpg "ssas_tabularproject_copypartition")  
  
    -   Select the copied partition and then click the Edit SQL Query button to add a filter. If you selected **Fact Internet Sales**s from AdventureWorksDW, your filter might look like the following:  
  
        ```  
        SELECT [dbo].[FactInternetSales].* FROM [dbo].[FactInternetSales]  
        JOIN DimSalesTerritory as ST  
        ON ST.SalesTerritoryKey = FactInternetSales.SalesTerritoryKey  
        WHERE ST.SalesTerritoryGroup='North America';  
        ```  
  
    -   Click **Validate** to check for syntax errors.  
  
         Notice that in DirectQuery mode, in addition to **New** , **Copy**, and **Delete** buttons on the Partitions dialog box, there is also a toggle button that alternately reads **Set as Sample** or **Set as DirectQuery**.  
  
         Only one partition can be the DirectQuery partition. You can control that by selecting any partition defined for the table and clicking **Set as DirectQuery**.  
  
    -   Process the table.  
  
## Analyze in Excel for model testing with sample data  
 Test the sample by using **Analyze in Excel**. On connect, the dialog gives you a choice between a sample data view that you just defined, or full data view that gives access to the full dataset. Choose the sample data view to continue.  
  
## Enrich the model  
 Enrich the model by adding measures, calculations,  KPIs, and table relationships.  
  
 Recall that you cannot add calculated tables or pasted tables, but most other model features are supported.  
  
 Formulas, and functions in particular, are where you're most likely to encounter incompatibilities. Review the known list of feature limitations in this article: [DirectQuery Mode &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/directquery-mode-ssas-tabular.md).  
  
## See Also  
 [DirectQuery Mode &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/directquery-mode-ssas-tabular.md)   
 [Compatibility Level for Tabular models in Analysis Services](../analysis-services/tabular-models/compatibility-level-for-tabular-models-in-analysis-services.md)   
 [Define partitions in DirectQuery models &#40;SSAS Tabular&#41;](../analysis-services/tabular-models/define-partitions-in-directquery-models-ssas-tabular.md)  
  
  