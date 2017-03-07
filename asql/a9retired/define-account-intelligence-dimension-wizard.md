---
title: "Define Account Intelligence (Dimension Wizard) | Microsoft Docs"
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
  - "sql13.asvs.dimensionwizard.accountintelligencetypemapping.f1"
ms.assetid: cbcff072-3a7e-4e98-858f-1b4265461561
caps.latest.revision: 27
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Define Account Intelligence (Dimension Wizard)
  Use the **Define Account Intelligence** page to map account types defined on the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance to account types defined in the dimension attribute associated with the **Account Type** attribute type in the dimension.  
  
> [!NOTE]  
>  This page is displayed only if you selected **Standard dimension** on the **Select the Dimension Type** page and if you mapped a dimension attribute to the **Account Type** attribute type on the **Specify Dimension Type** page.  
  
## Options  
 **Source Table Account Types**  
 Displays the values contained in the dimension attribute assigned to the **Account Type** attribute type in the **Specify Dimension Key and Type** page.  
  
 **Built-In Account Types**  
 Select the account type defined on the [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance that maps to the account types in the source table.  
  
 The following table lists the account types that are defined on an [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance.  
  
|Value|Description|  
|-----------|-----------------|  
|**Asset**|Value of things owned at a specific time.|  
|**Balance**|Count of something at a specific time.|  
|**Expense**|Value of things spent.|  
|**Flow**|Incremental count of things.|  
|**Income**|Value of things received.|  
|**Liability**|Value of things owed at a specific time.|  
|**Statistical**|Calculated ratio of something, or count of something that does not aggregate.|  
  
## See Also  
 [Dimension Wizard F1 Help](../a9retired/dimension-wizard-f1-help.md)   
 [Dimensions &#40;Analysis Services - Multidimensional Data&#41;](../analysis-services/multidimensional-models-olap-logical-dimension-objects/dimensions-analysis-services-multidimensional-data.md)   
 [Dimensions in Multidimensional Models](../analysis-services/multidimensional-models/dimensions-in-multidimensional-models.md)  
  
  