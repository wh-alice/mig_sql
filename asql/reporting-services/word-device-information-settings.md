---
title: "Word Device Information Settings | Microsoft Docs"
ms.custom: ""
ms.date: "03/04/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "reporting-services-sharepoint"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "Word [Reporting Services]"
  - "device information settings [Reporting Services], Word"
ms.assetid: 28146498-fae7-4b13-b47f-6ec05aa8e057
caps.latest.revision: 7
ms.author: "asaxton"
manager: "erikre"
---
# Word Device Information Settings
  The following table lists the device information settings for rendering in [!INCLUDE[ofprword](../a9retired/includes/ofprword-md.md)] format.  
  
|Setting|Value|  
|-------------|-----------|  
|**AutoFit**|**False**. AutoFit is set to **false** set on any Word table.<br /><br /> **True**. AutoFit is set to **true** on every Word table.<br /><br /> **Never**. AutoFit values are not set on any Word table and behavior reverts to the Word default.<br /><br /> **Default**. AutoFit is set on tables that are narrower than the physical drawing area (physical page width excluding margins) per logical page.|  
|**ExpandToggles**|Indicates whether all items that can be toggled should render in their fully-expanded state. The default value is **false**.|  
|**FixedPageWidth**|Indicates whether the Page Width written to the DOC file will grow to accommodate the width of the largest page in the Report Body. The default value is **false**.|  
|**OmitHyperlinks**|Indicates whether to omit the Hyperlink action on all items where it is set. The default value is **false**|  
|**OmitDrillthroughs**|Indicates whether to omit the Drillthrough action on all items where it is set. The default value is **false**|  
  
## See Also  
 <xref:ReportExecution2005.ReportExecutionService.Render%2A>   
 [Passing Device Information Settings to Rendering Extensions](../reporting-services/report-server-web-service/net-framework/passing-device-information-settings-to-rendering-extensions.md)   
 [Customize Rendering Extension Parameters in RSReportServer.Config](../reporting-services/customize-rendering-extension-parameters-in-rsreportserver.config.md)   
 [Technical Reference &#40;SSRS&#41;](../reporting-services/technical-reference-ssrs.md)  
  
  