---
title: "Specify Table Types (Data Mining Wizard) | Microsoft Docs"
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
  - "sql13.dm.dmwizard.specifytabletypes.f1"
ms.assetid: 8209a707-faef-4ffc-8991-6c13bb350753
caps.latest.revision: 23
ms.author: "owend"
manager: "jhubbard"
robots: noindex,nofollow
---
# Specify Table Types (Data Mining Wizard)
  Use the **Specify Table Types** page to identify the tables to use to define the mining structure. If a table is not selected, it will not be used to define the mining structure.  
  
> [!NOTE]  
>  You can add tables later from the **Mining Structure** tab in **Data Mining Designer**.  
  
 **For More Information:** [Nested Tables &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/nested-tables-analysis-services-data-mining.md), [Data Mining Wizard &#40;Analysis Services - Data Mining&#41;](../analysis-services/data-mining/data-mining-wizard-analysis-services-data-mining.md), [Create a Relational Mining Structure](../analysis-services/data-mining/create-a-relational-mining-structure.md)  
  
## Options  
 **Tables**  
 Displays the tables in the data source view that you selected on the **Select Data Source View** page of the wizard.  
  
 **Case**  
 Select one table to use as the case table.  
  
 **Nested**  
 Select the tables to use as nested tables.  
  
> [!NOTE]  
>  These tables must have a many-to-one relationship with the case table, not a one-to-many relationship. You must specify this relationship in the data source view before you can select the table as nested.  
  
## See Also  
 [Data Mining Wizard F1 Help &#40;Analysis Services - Data Mining&#41;](../a9retired/data-mining-wizard-f1-help-analysis-services-data-mining.md)   
 [Select Data Source View &#40;Data Mining Wizard&#41;](../a9retired/select-data-source-view-data-mining-wizard.md)   
 [Specify the Training Data &#40;Data Mining Wizard&#41;](../a9retired/specify-the-training-data-data-mining-wizard.md)  
  
  