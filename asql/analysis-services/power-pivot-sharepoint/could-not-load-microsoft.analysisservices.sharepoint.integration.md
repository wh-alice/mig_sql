---
title: "Could not load file or assembly &#39;Microsoft.AnalysisServices.SharePoint.Integration&#39; | Microsoft Docs"
ms.custom: ""
ms.date: "03/07/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "analysis-services"
ms.tgt_pltfrm: ""
ms.topic: "reference"
ms.assetid: 6e350b67-5e18-4b90-8fb7-a0109cbb27b7
caps.latest.revision: 7
ms.author: "owend"
manager: "erikre"
---
# Could not load Microsoft.AnalysisServices.SharePoint.Integration
  In SharePoint 2010 environments that have [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] for SharePoint, this error will occur if the application-level solution for [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] did not deploy correctly.  
  
## Details  
  
|||  
|-|-|  
|Applies to|[!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] for SharePoint|  
|Product Version|[!INCLUDE[ssKilimanjaro](../../a9notintoc/includes/sskilimanjaro-md.md)], [!INCLUDE[ssSQL11](../../a9notintoc/includes/sssql11-md.md)], [!INCLUDE[ssSQL14](../../a9notintoc/includes/sssql14-md.md)]|  
|Cause|Powerpivotwebapp solution is not deployed or did not deploy correctly.|  
|Message Text|Could not load file or assembly 'Microsoft.AnalysisServices.SharePoint.Integration'|  
  
## Explanation  
 [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] for SharePoint uses solution packages to deploy its features on a SharePoint server. One of the solutions is not deployed correctly. As a result, this error appears whenever you try to open [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] Gallery or other [!INCLUDE[ssGemini](../../a9notintoc/includes/ssgemini-md.md)] application pages on a SharePoint site.  
  
## User Action  
 Deploy the solution package.  
  
1.  In Central Administration, in System Settings, click **Manage farm solutions**.  
  
2.  Click **Powerpivotwebapp**.  
  
3.  Click **Deploy Solution**.  
  
4.  Choose the web application for which this error is occurring. If there is more than one web application, redeploy the solution for all of hem.  
  
5.  Click **OK**.  
  
## See Also  
 [Deploy Power Pivot Solutions to SharePoint](../../analysis-services/power-pivot-sharepoint/deploy-power-pivot-solutions-to-sharepoint.md)  
  
  