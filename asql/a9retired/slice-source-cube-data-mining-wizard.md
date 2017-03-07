---
title: "Slice Source Cube (Data Mining Wizard) | Microsoft Docs"
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
  - "sql13.dm.dmwizard.slicesourcecube.f1"
ms.assetid: 16485608-d3b9-49ee-8baa-948038cdd7ec
caps.latest.revision: 24
ms.author: "owend"
manager: "jhubbard"
robots: noindex,nofollow
---
# Slice Source Cube (Data Mining Wizard)
  You can use the **Slice Source Cube** dialog box to restrict the data used to train the model. Typically a cube contains data related to many different dimensions and attributes, such as all stores, all regions, and all products. It is not practical to train a model on unlimited combinations of attributes, so you use this dialog box to choose a specific set to use in training a model.  
  
 For example, in the AdventureWorks cube, you might slice by a particular product line, region, or year, to get a portion of the data.  
  
> [!NOTE]  
>  Note that dynamic MDX functions (such as [Generate &#40;MDX&#41;](../mdx/generate-mdx.md) or [Except &#40;MDX&#41;](../mdx/except-mdx-function.md)) are not supported in the Slice property for partitions. You must define the slice by using explicit tuples or member references.  
>   
>  For example, rather than using the range operator (:) to define a range, you would need to enumerate each member by the specific years.  
>   
>  If you need to define a complex slice, we recommend that you define the tuples in the slice by using an XMLA Alter script. Then, you can use either the ascmd command-line tool or the [Analysis Services Execute DDL Task](../integration-services/control-flow/analysis-services-execute-ddl-task.md) in Integration Services to run the script and create the specified set of members immediately before you process the partition.  
  
 **For More Information:** [Data Mining Wizard &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/data-mining-wizard-analysis-services-data-mining.md), [Create a Relational Mining Structure](../analysis-services/data-mining/create-a-relational-mining-structure.md)  
  
## Options  
 **Dimension**  
 Select the dimension that you want to slice.  
  
 **Hierarchy**  
 Select the hierarchy that you want to slice. You can choose any level of a hierarchy, but the attributes used in the model will be only at the level that you choose.  
  
 For example, if you choose the Geography hierarchy, and select Country as the level, you cannot build a model that uses City as the attributes. Conversely, if you choose City as the level of the hierarchy on which to slice, you cannot create a mining model based on Country.  
  
 **Operator**  
 Select the operator to use in building a slice expression.  
  
 For example, if you chose Geography as the hierarchy, you could select the operator = and then type “Europe” as the filter, to get cube data for Europe only.  
  
 **Filter Expression**  
 Type an expression to use as a criterion when filtering the cube on the selected dimension.  
  
 **Parameters**  
 This option is not used for data mining models.  
  
## See Also  
 [Completing the Wizard &#40;Data Mining Wizard&#41;](../a9retired/completing-the-wizard-data-mining-wizard.md)   
 [Data Mining Wizard F1 Help &#40;Analysis Services - Data Mining&#41;](../a9retired/data-mining-wizard-f1-help-analysis-services-data-mining.md)   
 [Specify Mining Model Column Usage &#40;Data Mining Wizard&#41;](../a9retired/specify-mining-model-column-usage-data-mining-wizard.md)  
  
  