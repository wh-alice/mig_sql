---
title: "Reporting Services Developer Documentation | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "docset-sql-devref"
  - "reporting-services-native"
ms.tgt_pltfrm: ""
ms.topic: "reference"
applies_to: 
  - "SQL Server 2016 Preview"
helpviewer_keywords: 
  - "developer's guide [Reporting Services]"
  - "Reporting Services, programming"
  - "programming [Reporting Services]"
ms.assetid: d8afa405-1012-4349-a72d-e10d94f8453d
caps.latest.revision: 21
ms.author: "asaxton"
manager: "erikre"
---
# Reporting Services Developer Documentation
  [!INCLUDE[ssNoVersion](../advanced-analytics/r-services/includes/ssnoversion-md.md)] [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] offers several programming interfaces that you can leverage in your own applications. You can use the existing features and capabilities of [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] to build custom reporting and management tools into Web sites and Windows applications, or you can extend the [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] platform.  
  
 Extending the [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] platform includes creating new components and resources that can be used for data access, report delivery and more. You can market these components and resources to companies that are using [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] in their organization.  
  
> [!NOTE]  
>  [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] include programming samples and tutorials to help you get started. For more information, see [Reporting Services Samples](https://msdn.microsoft.com/library/ms160954\(v=sql.110\).aspx) and [Developer's Guide: Tutorials (Reporting Services)](https://msdn.microsoft.com/library/aa337423\(v=sql.110\).aspx).  
  
## In This Section  
 [Integrating Reporting Services into Applications](../reporting-services/application-integration/integrating-reporting-services-into-applications.md)  
 Provides an overview of how to use [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] to integrate reporting into custom applications. Describes when to use direct URL access and when to use the Web service to access the report server.  
  
 [Report Server Web Service](../reporting-services/report-server-web-service/report-server-web-service.md)  
 The Report Server Web service provides access to the full functionality of the report server. The Web service uses SOAP over HTTP and is designed to act as a communications interface between client programs and the report server. The Web service and its methods expose the functionality of the report server and allow you to create custom tools for any part of the report life cycle, from management to execution.  
  
 [URL Access &#40;SSRS&#41;](../reporting-services/url-access-ssrs.md)  
 [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] supports a complete set of URL-based requests that you can use as a quick and easy access point for report navigation and viewing. You can use this technology in conjunction with the Report Server Web service to integrate a complete reporting solution into your custom business applications. URL access is particularly useful when integrating reports as part of a Web portal or when viewing reports from a Web browser.  
  
 [Reporting Services Extensions](../reporting-services/extensions/reporting-services-extensions.md)  
 The modular architecture of [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] is designed for extensibility. A managed code API is available so that you can easily develop, install, and manage extensions consumed by many [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] components. You can create assemblies using the [!INCLUDE[msCoName](../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[dnprdnshort](../analysis-services/multidimensional-models/includes/dnprdnshort-md.md)] and add new [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] rendering, security, delivery, and data processing functionality to meet your evolving business needs.  
  
 [Custom Report Items](../reporting-services/custom-report-items/custom-report-items.md)  
 Describes how to create Custom Report Items to add functionality to RDL or extend functionality of existing controls.  
  
 [Using Custom Assemblies with Reports](../reporting-services/custom-assemblies/using-custom-assemblies-with-reports.md)  
 Describes how to use custom assemblies with Reports by including code references within the report definition.  
  
 [Access the Reporting Services WMI Provider](../reporting-services/tools/access-the-reporting-services-wmi-provider.md)  
 Describes how to use the [!INCLUDE[ssRSnoversion](../advanced-analytics/r-services/includes/ssrsnoversion-md.md)] WMI Provider to manage report server deployments.  
  
## See Also  
 [Reporting Services &#40;SSRS&#41;](../Topic/Reporting%20Services%20\(SSRS\).md)   
 [Report Definition Language &#40;SSRS&#41;](../reporting-services/reports/report-definition-language-ssrs.md)   
 [Technical Reference &#40;SSRS&#41;](../reporting-services/technical-reference-ssrs.md)   
 [Secure Development &#40;Reporting Services&#41;](../reporting-services/extensions/secure-development/secure-development-reporting-services.md)  
  
  