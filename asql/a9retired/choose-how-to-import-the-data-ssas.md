---
title: "Choose How to Import the Data (SSAS) | Microsoft Docs"
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
  - "sql13.asvs.bidtoolset.choosehowtoimpdata.f1"
ms.assetid: 17dc6903-c239-46aa-a3b0-6e3156accacc
caps.latest.revision: 10
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Choose How to Import the Data (SSAS)
  This page of the **Table Import Wizard** enables you to choose how to import data from the selected data source. To access the wizard from the [!INCLUDE[ssBIDevStudio](../a9notintoc/includes/ssbidevstudio-md.md)], on the **Model** menu, click **Import from Data Source**.  
  
## UIElement List  
 **Select from a list of tables and views to choose the data to import**  
 Select this option if you want to import data by selecting from a list.  
  
> [!NOTE]  
>  This option is available only when the selected data source exposes schema information that the **Table Import Wizard** supports.  
  
 **Write a query to specify the data to import**  
 Select this option if you want to import data by using a SQL query. The SQL query can manipulate the data that is imported. For example, you could join data from different tables or select only rows that meet certain criteria.  
  
  