---
title: "Define Account Intelligence (Business Intelligence Wizard) | Microsoft Docs"
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
  - "sql13.asvs.biwizard.acctintelligence.mapaccounttype.f1"
ms.assetid: fe4c204b-1031-4ac4-9916-8052ce2301cc
caps.latest.revision: 21
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Define Account Intelligence (Business Intelligence Wizard)
  Use the **Define Account Intelligence** page to map account types defined on the [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] instance to account types defined by a source table in the data source that supplies the data for the account dimension.  
  
> [!NOTE]  
>  This page will appear if a dimension attribute was mapped to the **Account Type** attribute type on the **Configure Dimension Attributes** page.  
  
## Options  
 **Source Table Account Types**  
 Displays the values that are contained in the dimension attribute assigned to the **Account Type** attribute type on the **Configure Dimension Attributes** page.  
  
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
 [Business Intelligence Wizard F1 Help](../a9retired/business-intelligence-wizard-f1-help.md)   
 [Cube Designer &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/cube-designer-analysis-services-multidimensional-data.md)   
 [Dimension Designer &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/dimension-designer-analysis-services-multidimensional-data.md)  
  
  