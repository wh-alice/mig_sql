---
title: "Configure Dimension Attributes (Business Intelligence Wizard) | Microsoft Docs"
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
  - "sql13.asvs.biwizard.acctintelligence.selectattributes.f1"
ms.assetid: 3d046e63-bcb1-4ab1-9c37-652463fa68c3
caps.latest.revision: 22
ms.author: "owend"
manager: "erikre"
robots: noindex,nofollow
---
# Configure Dimension Attributes (Business Intelligence Wizard)
  Use the **Configure Dimension Attributes** page to map the dimension attributes to the attribute types that [!INCLUDE[msCoName](../a9notintoc/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../a9notintoc/includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../a9notintoc/includes/ssasnoversion-md.md)] uses to identify attributes for account dimensions.  
  
## Options  
 **Dimension type**  
 Displays the selected dimension type.  
  
> [!NOTE]  
>  This option is not available because the **Type** property of the dimension cannot be changed to a value other than *Account* for account dimensions.  
  
 **Dimension attributes**  
 Displays the valid attribute types that can be mapped to existing dimension attributes in the dimension.  
  
 **Include**  
 Select a check box to include the corresponding attribute type in the dimension.  
  
 **Attribute Type**  
 Lists the attribute types that can be mapped to existing dimension attributes in the dimension.  
  
 **Dimension Attribute**  
 Select the dimension attribute that should be mapped to the corresponding attribute type.  
  
 **Set measures to be semiadditive based on account type**  
 Select to change every measure associated with this dimension to be aggregated by account type.  
  
> [!NOTE]  
>  This option does not appear if the Business Intelligence Wizard was started from Dimension Designer or by right-clicking a dimension in Solution Explorer in [!INCLUDE[ssBIDevStudioFull](../a9notintoc/includes/ssbidevstudiofull-md.md)].  
  
## See Also  
 [Business Intelligence Wizard F1 Help](../a9retired/business-intelligence-wizard-f1-help.md)   
 [Cube Designer &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/cube-designer-analysis-services-multidimensional-data.md)   
 [Dimension Designer &#40;Analysis Services - Multidimensional Data&#41;](../a9retired/dimension-designer-analysis-services-multidimensional-data.md)  
  
  