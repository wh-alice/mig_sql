---
title: "Validation (Master Data Services) | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "master-data-services"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 98eb49e7-b190-4a21-8316-08c07cde14ed
caps.latest.revision: 12
ms.author: "carlasab"
manager: "jhubbard"
---
# Validation (Master Data Services)
  In [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)], data is validated to ensure its accuracy. Some validation occurs automatically, and other validation is based on business rules that are created by administrators.  
  
## When Data Validation Occurs  
 Validation occurs at different times, and is displayed differently in the [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)] web application.  
  
|Validation Type|Standards Determined by|When it Occurs|Displayed in the MasterData Manager web UI as|Displayed in the Add-in for Excel as|Is Data Saved to the MDS Repository?|  
|---------------------|-----------------------------|--------------------|---------------------------------------------------|-------------------------------------------|------------------------------------------|  
|Business rule validation|An MDS administrator|Automatically when a user adds or edits data.<br /><br /> Manually when a user applies business rules.<br /><br /> Manually when an administrator in the **Version Management** functional area of the [!INCLUDE[ssMDSmdm](../database-engine/install/windows/includes/ssmdsmdm-md.md)] web application validates a version against business rules.|Validation Errors|ValidationStatus|Yes|  
|Data type and content validation|An MDS administrator, when creating model objects (for example, an attribute’s length or data type)|Automatically when a user adds or edits data|Input Errors|InputStatus|No|  
|Data type and content validation|[!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] or [!INCLUDE[ssMDSshort](../analysis-services/includes/ssmdsshort-md.md)]|Automatically when a user adds or edits data|Input Errors|InputStatus|No|  
  
## Related Tasks  
  
|Task Description|Topic|  
|----------------------|-----------|  
|Create business rules and publish them, so that data is validated against them.|[Create and Publish a Business Rule &#40;Master Data Services&#41;](../master-data-services/create-and-publish-a-business-rule-master-data-services.md)|  
|Validate a version of data against business rules. Administrators only.|[Validate a Version against Business Rules &#40;Master Data Services&#41;](../master-data-services/validate-a-version-against-business-rules-master-data-services.md)|  
|Validate specific subsets of data against business rules. All users with permission to the **Explorer** functional area.|[Validate Specific Members against Business Rules &#40;Master Data Services&#41;](../master-data-services/validate-specific-members-against-business-rules-master-data-services.md)|  
|Validate specific subsets of data against business rules. All users with permission to the **Explorer** functional area and using the [!INCLUDE[ssMDSXLS](../analysis-services/includes/ssmdsxls-md.md)].|[Apply Business Rules &#40;MDS Add-in for Excel&#41;](../master-data-services/microsoft-excel-add-in/apply-business-rules-mds-add-in-for-excel.md)|  
  
## See Also  
 [Business Rules &#40;Master Data Services&#41;](../master-data-services/business-rules-master-data-services.md)  
  
  