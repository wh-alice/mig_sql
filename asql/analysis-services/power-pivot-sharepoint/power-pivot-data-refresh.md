---
title: "Power Pivot Data Refresh | Microsoft Docs"
ms.custom: ""
ms.date: "03/01/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
helpviewer_keywords: 
  - "unattended data refresh [Analysis Services with SharePoint]"
  - "scheduled data refresh [Analysis Services with SharePoint]"
  - "data refresh [Analysis Services with SharePoint]"
ms.assetid: ac8358a3-ee71-44c7-8ee6-ac7afe3ebaa4
caps.latest.revision: 24
ms.author: "owend"
manager: "erikre"
---
# Power Pivot Data Refresh
  After you create a workbook that contains [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] data, you might want to periodically refresh the data by rerunning a query or command to get updated information from the sources you used originally to create the workbook. This process is called **data refresh**, and you can refresh data on demand in [!INCLUDE[ssGeminiClient](../../analysis-services/includes/ssgeminiclient-md.md)], or as a scheduled operation that runs as an [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] process on an application server in a SharePoint farm. For more information, see:  
  
-   [Power Pivot Data Refresh with SharePoint 2010](http://msdn.microsoft.com/en-us/01b54e6f-66e5-485c-acaa-3f9aa53119c9)  
  
-   [Configure the Power Pivot Unattended Data Refresh Account (Power Pivot for SharePoint)](http://msdn.microsoft.com/en-us/81401eac-c619-4fad-ad3e-599e7a6f8493)  
  
-   [Configure Stored Credentials for Power Pivot Data Refresh (Power Pivot for SharePoint)](http://msdn.microsoft.com/en-us/987eff0f-bcfe-4bbd-81e0-9aca993a2a75)  
  
-   [Schedule a Data Refresh (Power Pivot for SharePoint)](http://msdn.microsoft.com/en-us/8571208f-6aae-4058-83c6-9f916f5e2f9b)  
  
-   [View Data Refresh History &#40;Power Pivot for SharePoint&#41;](../../analysis-services/power-pivot-sharepoint/view-data-refresh-history-power-pivot-for-sharepoint.md)  
  
> [!NOTE]  
>  [!INCLUDE[ssCurrent](../../advanced-analytics/r-services/includes/sscurrent-md.md)] and SharePoint Server 2013 Excel Services use a different architecture for data refresh of [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] data models. The SharePoint 2013 supported architecture utilizes Excel Services as the primary component to load [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] data models. The previous data refresh architecture used relied on a server running [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] System Service and [!INCLUDE[ssASnoversion](../../analysis-services/includes/ssasnoversion-md.md)] in SharePoint mode to load data models. For more information, see the following:  
>   
>  -   [Power Pivot Data Refresh with SharePoint 2013](../../analysis-services/power-pivot-sharepoint/power-pivot-data-refresh-with-sharepoint-2013.md)  
> -   [Upgrade Workbooks and Scheduled Data Refresh &#40;SharePoint 2013&#41;](../../analysis-services/instances/install/windows/upgrade-workbooks-and-scheduled-data-refresh-sharepoint-2013.md)  
  
  