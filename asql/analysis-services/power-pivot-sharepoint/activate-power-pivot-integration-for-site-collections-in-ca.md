---
title: "Activate Power Pivot Feature Integration for Site Collections in Central Administration | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
  - "analysis-services/multidimensional-tabular"
  - "analysis-services/data-mining"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: 62a27e53-446a-42d7-b5db-c009e02d4904
caps.latest.revision: 8
ms.author: "owend"
manager: "erikre"
---
# Activate Power Pivot Integration for Site Collections in CA
  Activating [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] feature integration for specific site collections is required if you used the Existing Farm installation option to install SQL Server [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint. If you installed [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] for SharePoint using the New Server option, you can skip this task because SQL Server Setup already activated [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] feature integration for the root site collection when it configured your deployment.  
  
 Feature activation at the site collection level is necessary to make application pages and templates available to your sites, including configuration pages for scheduled data refresh and application pages for [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Gallery and Data Feed libraries.  
  
 You must activate [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] integration for each site collection that supports [!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] query processing.  
  
## Prerequisites  
 You must be a site collection administrator.  
  
## Activate Power Pivot Features  
  
1.  On a SharePoint site, click **Site Actions**.  
  
     By default, SharePoint web applications are accessed through port 80. This means that you can often access a SharePoint site by entering http://\<computer name> to open the root site collection.  
  
2.  Click **Site Settings**.  
  
3.  In Site Collection Administration, click **Site collection features**.  
  
4.  Scroll down the page until you find **[!INCLUDE[ssGemini](../../analysis-services/includes/ssgemini-md.md)] Integration Site Collection Feature**.  
  
5.  Click **Activate**.  
  
6.  Repeat for additional site collections by opening each site and clicking **Site Actions**.  
  
## See Also  
 [Power Pivot Server Administration and Configuration in Central Administration](../../analysis-services/power-pivot-sharepoint/power-pivot-server-administration-and-configuration-in-central-administration.md)   
 [Initial Configuration (Power Pivot for SharePoint)](http://msdn.microsoft.com/en-us/3a0ec2eb-017a-40db-b8d4-8aa8f4cdc146)   
 [Power Pivot for SharePoint 2010 Installation](http://msdn.microsoft.com/en-us/8d47dde7-c941-4280-a934-e2fe3f9a938f)  
  
  